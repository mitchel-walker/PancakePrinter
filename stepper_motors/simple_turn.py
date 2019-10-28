import RPi.GPIO as GPIO

dir_pin = 20
step_pin = 21
cw = 1
ccw = 0
steps_per_rev = 48

#it might be worth switching to Board for simplicity
GPIO.setmode(GPIO.BCM)
GPIO.setup(dir_pin, GPIO.OUT)
GPIO.setup(step_pin, GPIO.OUT)
GPIO.output(dir_pin, cw)

#set mircrostep rev pins
mode = (14,15,18)
GPIO.setup(GPIO.OUT)

#set output resolution
GPIO.output(mode, (1,0,1))

step_count = steps_per_rev*32
delay = 0.0208/32

#loop through
for i in range(step_count):
	GPIO.output(step_pin, GPIO.HIGH)
	sleep(delay)
	GPIO.output(step_pin, GPIO.LOW)