#This script defines the motor class to be used for gcode interpretation
from time import sleep
import RPi.GPIO as gpio
import json
import re

#create motor classes
class Motor():
	def __init__(self, att_dict):
		self.dir_pin = att_dict["pins"]["dir"]
		self.step_pin = att_dict["pins"]["step"]
		self.mode_pins = (att_dict["pins"]["m0"],att_dict["pins"]["m1"],att_dict["pins"]["m2"])
		self.calib = att_dict["calib"]

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

		#resolution string/key
		self.resolution = 'half'

		self.res_mode = self.res_dict[self.resolution]

		#set mode pins
		self.set_mode_pins()


	#setters and getters for mode pins
	def set_mode_pins(self):
		gpio.setup(self.mode_pins, gpio.OUT)
		gpio.output(self.mode_pins, self.res_mode)

	def get_mode(self):
		print(self.res_dict[self.resolution])

	#getter for step size
	def get_step_size(self):
		return self.step_size[self.resolution]

	#setters and getters for resolution
	def set_resolution(self):
		self.res_mode = self.res_dict[self.resolution]
		self.set_mode_pins()


	def get_resolution(self):
		return self.resolution

	#move a single motor
	def move(self, dist, freq):
		delay = 1/freq
		#set number of pulses
		num_pulses = dist*200*motor.get_step_size()/self.calib

		for i in range(num_pulses):
			gpio.output(self.step_pin, gpio.HIGH)
			sleep(delay)
			gpio.output(self.step_pin, gpio.LOW)
			sleep(delay)





class Printer():
	def __init__(self, config_dict):
		#the order is x, y, pump
		self.motors = [Motor(config_dict[0]),Motor(config_dict[1]),Motor(config_dict[2])]
		self.pos = [0,0]
	
	def go(self, end_x, end_y, speed):
		#function to move x and y motors simultaneously
		return


if __name__ == "__main__":

	#remove warnings
	gpio.setwarnings(False)

	#set gpio naming scheme
	gpio.setmode(gpio.BCM)

	with open('config.json') as f:
		text = re.sub(r"\s",'',f.read())
	config_dict = json.loads(text)

	printer = Printer(config_dict)

	printer.motors[0].move(2,1000)

