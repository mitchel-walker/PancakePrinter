#This runs a simple turn on the stepper motor, but with the hardware-based PWM library
#instead of software-based time.sleep

import pigpio
import RPi.GPIO as GPIO
from time import sleep


#set pin numbers
dir_pin = 20
step_pin = 21

#set cw and ccw values
cw = 1
ccw = 0

#remove warnings
GPIO.setwarnings(False)

#set microstep tuple dictionary
resolution = {'full':(0,0,0),
            'half':(1,0,0),
            '1/4':(0,1,0),
            '1/8':(1,1,0),
            '1/16':(0,0,1),
            '1/32':(1,0,1)}

#set microstep pins
GPIO.setmode(GPIO.BCM)
mode = (14,15,18)
GPIO.setup(mode, GPIO.OUT)
GPIO.output(mode, resolution['half'])


#connect to pigpio daemon
pi = pigpio.pi()

#set duty cycle and frequency
pi.set_PWM_dutycycle(step_pin, 128)
pi.set_PWM_frequency(step_pin,800)
'''
acceptable frequencies:
1: 40000 20000 10000 8000 5000 4000 2500 2000 1600
2: 20000 10000 5000  4000 2500 2000 1250 1000 800
4: 10000 5000  2500  2000 1250 1000 625  500  400
5: 8000  4000  2000  1600 1000 800  500  400  320
8: 5000  2500  1250  1000 625  500  313  250  200
10:4000  2000  1000  800  500  400  250  200  160
'''

try:
	while True:
		pi.write(dir_pin, cw)
		sleep(.1)
except KeyboardInterrupt:
	print("Keyboard Pressed")
finally:
	pi.set_PWM_dutycycle(step_pin,0)
	pi.stop()
