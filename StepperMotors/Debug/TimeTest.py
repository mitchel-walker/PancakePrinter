#This program is meant to test the accuracy of python's time.sleep on the raspberry pi
from time import sleep, time
import RPi.GPIO as gpio

def timer(length, delay):
	loop_limit = int(length/delay)

	print("attempting to pause for %f seconds at %f second intervals" % (loop_limit*delay, delay))

	count = 0
	start = time()
	while count < loop_limit:
		sleep(delay)
		count += 1
	stop = time() - start

	print("actually turned for %f seconds" % stop)

def time_while():
	step_pin = 21

	num_pulses = 11
	acc_pulses = 1
	i  = 0
	start_time = time()
	while i < num_pulses-acc_pulses:
		gpio.output(step_pin, gpio.HIGH)
		sleep(.001)
		gpio.output(step_pin, gpio.LOW)
		i+= 1

	return (time()-start_time)/10



if __name__ == "__main__":
	'''
	delay = eval(input("Input delay time: "))
	timer(10, delay)
	'''
	gpio.setmode(gpio.BCM)
	
	gpio.setup(21, gpio.OUT)

	sm = 0
	for i in range(10):
		sm += time_while()

	print(sm/10)