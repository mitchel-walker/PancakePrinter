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

		#initialize pwm object
		self.initialize_pulses()

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

	#move a single motor
	def move(self, dist, sec, direct):
		#move motor a given distance in time (sec) in direction (direct)

		#return if time == 0 sec
		if sec == 0:
			return
			
		#set direction pin
		gpio.output(self.dir_pin, direct)

		#set frequency
		freq = (dist*200*self.get_step_size())/(self.calib*sec)

		'''

		#change pulses frequency and set duty cycle to 50
		self.pulses.ChangeFrequency(freq)
		self.pulses.ChangeDutyCycle(50)
		sleep(sec)
		self.pulses.ChangeDutyCycle(0)
		#when time is waited, reset duty cycle to 0
		'''
		self.pulses.ChangeFrequency(500)
		self.pulses.ChangeDutyCycle(50)
		sleep(1)
		self.pulses.ChangeFrequency(1000)
		sleep(1)
		self.pulses.ChangeFrequency(2000)
		sleep(1)
		'''
		self.pulses.ChangeFrequency(4000)
		sleep(1)
		self.pulses.ChangeFrequency(8000)
		sleep(1)
		self.pulses.ChangeFrequency(16000)
		sleep(1)
		self.pulses.ChangeFrequency(32000)
		sleep(1)
		self.pulses.ChangeFrequency(64000)
		sleep(1)
		'''

		self.pulses.stop()





class Printer():
	def __init__(self, config_dict):
		#Initialize Motor Object
		self.x = Motor(config_dict[0])
		self.y = Motor(config_dict[1])
		self.pump = Motor(config_dict[2])

		#acceleration time
		self.acc = config_dict[3]["acceleration"]

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
		max_time = max((dist_x*60/self.x.max_spd),(dist_y*60/self.y.max_spd))

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

		#reset position
		self.pos = [end_x, end_y]

	def pump_off(self):
		return

	def pump_on(self):
		return

	def motors_off(self):
		return
		




if __name__ == "__main__":

	#remove warnings
	gpio.setwarnings(False)

	#set gpio naming scheme
	gpio.setmode(gpio.BCM)

	#Remove all whitespace characters
	with open('config.json') as f:
		text = re.sub(r"\s",'',f.read())
	config_dict = json.loads(text)


	output_pins = []
	for dc in config_dict:
		if "pins" in dc:
			for key in dc["pins"]:
				output_pins.append(dc["pins"][key])
	
	gpio.setup(output_pins,gpio.OUT)

	printer = Printer(config_dict)

	#printer.go(20,20)

	printer.x.move(10,1,1)


	gpio.cleanup()

