#This script defines the motor class to be used for gcode interpretation
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

	#setters and getters for resolution
	def set_resolution(self):
		self.res_mode = self.res_dict[self.resolution]
		self.set_mode_pins()


	def get_resolution(self):
		return self.resolution

	#send up pulse and down pulse to step pins
	def pulse_up(self):
		gpio.output(self.step_pin, gpio.HIGH)

	def pulse_down(self):
		gpio.output(self.step_pin, gpio.LOW)

class Printer():
	def __init__(self, **motors):
		self.motors = motors
		print(self.motors)


if __name__ == "__main__":

	#remove warnings
	gpio.setwarnings(False)

	#set gpio naming scheme
	gpio.setmode(gpio.BCM)

	with open('config.json') as f:
		text = re.sub(r"\s",'',f.read())
	config_dict = json.loads(text)

	test = Printer(test = 1, test2 = 2, test3 = 3)

