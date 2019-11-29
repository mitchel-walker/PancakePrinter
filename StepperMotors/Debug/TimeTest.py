#This program is meant to test the accuracy of python's time.sleep on the raspberry pi
from time import sleep, time

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

if __name__ == "__main__":
	timer(10,.00001)