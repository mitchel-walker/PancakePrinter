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