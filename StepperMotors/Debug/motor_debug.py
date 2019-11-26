#This program allows for a simple test of the x and y motors

import pigpio
import RPi.GPIO as GPIO
from time import sleep

#set positive and negative
pos = 1
neg = 0

#remove warnings
GPIO.setwarnings(False)

#set GPIO naming scheme
GPIO.setmode(GPIO.BCM)

#connect to pigpio daemon
pi = pigpio.pi()


#create motor classes
class Motor():
	def __init__(self, dir_pin, step_pin, mode_pins):
		self.dir_pin = dir_pin
		self.step_pin = step_pin
		self.mode_pins = mode_pins
		self.spr = 200

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

		#set mode pins
		self.set_mode_pins()


	def set_mode(self):
		GPIO.setup(self.mode_pins, GPIO.OUT)
		GPIO.output(self.mode_pins, self.res_mode)

	def get_mode(self):
		print(self.res_dict[self.resolution])


	#setters and getters for resolution
	def set_resolution(self, res):
		self.resolution = res
		self.res_mode = self.res_dict[res]
		self.set_mode_pins()


	def get_resolution(self):
		return self.resolution


	#simple turn motor
	def move(self, direction, freq, dist):
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


if __name__ == "__main__":
	#set motor classes
	X = Motor(20, 21, (14,15,18))
	Y = Motor(5,6,(14,15,18))
	E = Motor(23,24,(14,15,18))

	X.move(1, 800, 1)
	Y.move(1, 800, 1)

'''
acceptable frequencies:
1: 40000 20000 10000 8000 5000 4000 2500 2000 1600
2: 20000 10000 5000  4000 2500 2000 1250 1000 800
4: 10000 5000  2500  2000 1250 1000 625  500  400
5: 8000  4000  2000  1600 1000 800  500  400  320
8: 5000  2500  1250  1000 625  500  313  250  200
10:4000  2000  1000  800  500  400  250  200  160
'''


###DEBUG NOTES####
#Motor.move() currently allows for keyboard interrupt to stop the turning
# should pi.stop() be called? Does that mean the daemon has to be re-initialized
#in Motor.move(), dist must be an actual unit of measurement - requires use of self.conversion
