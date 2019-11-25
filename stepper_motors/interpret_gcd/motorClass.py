#This script defines the motor class to be used for gcode interpretation
import RPi.GPIO as GPIO
import json
import re

#create motor classes
class Motor():
	def __init__(self, att_dict):
		self.dir_pin = att_dict["pins"]["dir"]
		self.step_pin = att_dict["pins"]["step"]
		self.mode_pins = (att_dict["pins"]["m0"],att_dict["pins"]["m1"],att_dict["pins"]["m2"])
		self.dpr = att_dict["dpr"]

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


	def set_mode_pins(self):
		GPIO.setup(self.mode_pins, GPIO.OUT)
		GPIO.output(self.mode_pins, self.res_mode)

	def get_mode(self):
		print(self.res_dict[self.resolution])

	#setters and getters for resolution
	def set_resolution(self):
		self.res_mode = self.res_dict[self.resolution]
		self.set_mode_pins()


	def get_resolution(self):
		return self.resolution


	#simple turn motor
	def move(self, direction, freq, rotations):
		pi.set_PWM_dutycycle(self.step_pin, 128)
		pi.set_PWM_frequency(self.step_pin, freq)
		GPIO.setup(self.dir_pin, GPIO.OUT)
		GPIO.output(self.dir_pin, direction)

		#set count and limit vars
		count = 0
		limit = (self.step_size[self.resolution]*2000)/freq

		#loop to turn motor
		while count < limit:
			try:
				pass
				sleep(.1)
			except KeyboardInterrupt:
				print("Keyboard Pressed")
				break

		#set duty cycle to zero and disconnect daemon
		pi.set_PWM_dutycycle(self.step_pin, 0)
		pi.stop()



#create Pump class
class Pump(Motor):
	def __init__(self, att_dict):
		super().__init__(att_dict)

class Translation(Motor):
	def __init__(self, att_dict):
		super().__init__(att_dict)



if __name__ == "__main__":

	#remove warnings
	GPIO.setwarnings(False)

	#set GPIO naming scheme
	GPIO.setmode(GPIO.BCM)

	with open('config.json') as f:
		text = re.sub(r"\s",'',f.read())
	config_dict = json.loads(text)

	
	test_trans = Translation(config_dict[0])
	test_pump = Pump(config_dict[2])

