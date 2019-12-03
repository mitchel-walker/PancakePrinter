#This script defines the motor class to be used for gcode interpretation
from multiprocessing import Process
from time import sleep, time
import RPi.GPIO as gpio
import json
import re

#create motor classes
class Motor():
	def __init__(self, att_dict):
		self.name = att_dict["name"]
		self.dir_pin = att_dict["pins"]["dir"]
		self.step_pin = att_dict["pins"]["step"]
		self.mode_pins = (att_dict["pins"]["m0"],att_dict["pins"]["m1"],att_dict["pins"]["m2"])
		self.calib = att_dict["calib"]
		self.max_spd = att_dict["max_speed"]
		self.curr_speed = 0

		#initialize pwm object
		# self.initialize_pulses()

		#resolution dictionairy
		self.res_dict = {'full':(0,0,0),
		'half':(1,0,0),
		'1/4':(0,1,0),
		'1/8':(1,1,0),
		'1/16':(0,0,1),
		'1/32':(1,0,1)}

		#micro step size dictionary
		self.step_size = {
			"full":1,
			"half":2,
			"1/4":4,
			"1/8":8,
			"1/16":16,
			"1/32":32
		}

		#set object resolution string and microstep pin values
		self.set_resolution('half')


	#must initialize pwm object with duty cycle 0 (arbitrary frequency 100 is set)
	def initialize_pulses(self):
		self.pulses = gpio.PWM(self.step_pin, 100)
		self.pulses.start(0)

	#setters and getters for mode pins
	def set_mode_pins(self):
		gpio.output(self.mode_pins, self.res_mode)

	def get_mode(self):
		return self.res_dict[self.resolution]

	#getter for step size
	def get_step_size(self):
		return self.step_size[self.resolution]

	#setters and getters for resolution
	def set_resolution(self, resolution):
		#set resolution string
		self.resolution = resolution

		#set mode pin tuple values
		self.res_mode = self.res_dict[resolution]

		#reset gpio values
		self.set_mode_pins()


	def accelerate(self, end_speed):
		#return 0 if no acceleration is needed
		if -0.02 < self.curr_speed - end_speed < 0.02:
			return 0

		#determine start delay time
		if self.curr_speed == 0:
			start_delay = 0.01
		else:
			start_delay = self.calib/(abs(self.curr_speed)*200*self.get_step_size())

		#determine end delay time
		if end_speed == 0:
			end_delay = 0.01
		else:
			end_delay = self.calib/(abs(end_speed)*200*self.get_step_size())

		#set arbitrary change in period for each pulse
		delta = 0.01

		#initialize delay variable
		delay = start_delay

		num_pulses = 0
		while delay < end_delay:
			gpio.output(self.step_pin,gpio.HIGH)
			sleep(delay)
			gpio.output(self.step_pin,gpio.LOW)
			delay += delta
			num_pulses += 1

		self.curr_speed = end_speed

		return num_pulses

	

	#move a single motor
	def move(self, dist, sec, direct):
		#move motor a given distance in time (sec) in direction (direct)

		#return if time == 0 sec
		if sec == 0:
			return
		#pause for time if dist = 0
		if dist == 0:
			sleep(sec)
			return

		#set direction pin output
		gpio.output(self.dir_pin, direct)

		#set number of pulses
		num_pulses = (dist*200*self.get_step_size())/self.calib
		#set delay time
		delay = sec/(num_pulses)

		#begin acceleration
		#


		i  = 0
		while i < num_pulses:
			gpio.output(self.step_pin, gpio.HIGH)
			sleep(delay)
			gpio.output(self.step_pin, gpio.LOW)
			i+= 1
			
		'''
		freq = (dist*200*self.get_step_size())/(self.calib*sec)
		

		#change pulses frequency and set duty cycle to 50
		self.pulses.ChangeFrequency(freq)
		self.pulses.ChangeDutyCycle(50)
		sleep(sec)
		self.pulses.ChangeDutyCycle(0)
		#when time is waited, reset duty cycle to 0
		'''






class Printer():
	def __init__(self, config_dict):
		#Initialize Motor Object
		self.x = Motor(config_dict[0])
		self.y = Motor(config_dict[1])
		self.pump = Motor(config_dict[2])

		#initial position
		self.pos = [0.0, 0.0]


	def get_params(self, end_x,end_y):
		#returns 2d tuple of (distance, time, direction) for ((x),(y))

		#determine direction and distance of x and y
		if end_x > self.pos[0]:
			dir_x = 1
			dist_x = end_x - self.pos[0]
		else:
			dir_x = 0
			dist_x = self.pos[0] - end_x

		if end_y > self.pos[1]:
			dir_y = 1
			dist_y = end_y - self.pos[1]
		else:
			dir_y = 0
			dist_y = self.pos[1] - end_y

		#determine the longest time either motor will take to go the distance
		max_time = max((dist_x/self.x.max_spd),(dist_y/self.y.max_spd))

		return ((dist_x, max_time, dir_x), (dist_y, max_time, dir_y))
	

	def go(self, end_x, end_y):
		#function to move x and y motors simultaneously

		#get parameters
		params = self.get_params(end_x, end_y)

		#initialize processes
		move_x = Process(target = self.x.move, args = params[0])
		move_y = Process(target = self.y.move, args = params[1])

		#run processes
		move_x.start()
		move_y.start()
		sleep(params[0][1])

		#reset position
		self.pos = [end_x, end_y]

	def pump_off(self):
		return

	def pump_on(self):
		return

	def motors_off(self):
		#accelerate each motor to speed 0
		self.x.accelerate(0)
		self.y.accelerate(0)
		




if __name__ == "__main__":

	#remove warnings
	gpio.setwarnings(False)

	#set gpio naming scheme
	gpio.setmode(gpio.BCM)

	#Remove all whitespace characters
	with open('config.json') as f:
		text = re.sub(r"\s",'',f.read())
	print(text)
	config_dict = json.loads(text)


	output_pins = []
	for dc in config_dict:
		if "pins" in dc:
			for key in dc["pins"]:
				output_pins.append(dc["pins"][key])
	

	gpio.setup(output_pins,gpio.OUT)

	printer = Printer(config_dict)

	# printer.go(400,-200)


	printer.x.move(100,5,1)


	gpio.cleanup()

