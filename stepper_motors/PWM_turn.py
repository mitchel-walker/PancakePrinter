#This runs a simple turn on the stepper motor, but with the hardware-based PWM library
#instead of software-based time.sleep

import pigpio


#set pin numbers
dir_pin = 20
step_pin = 21
cw = 1
ccw = 0

#connect to pigpio daemon
pi = pigpio.pi()

#set duty cycle and frequency
pi.set_PWM_dutycycle(step_pin, 128)
pi.set_PWM_frequency(step_pin,500)

try:
	while True:
		pi.write(dir_pin, cw)
		sleep(.1)
except KeyboardInterrupt:
	print("^CKeyboard Pressed")
finally:
	pi.set_PWM_dutycycle(step_pin,0)
	pi.stop()
