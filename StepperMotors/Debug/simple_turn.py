import RPi.GPIO as GPIO
from time import sleep

#remove warnings
GPIO.setwarnings(False)

#set pin numbers
dir_pin = 20
step_pin = 21
cw = 1
ccw = 0
steps_per_rev = 200

#it might be worth switching to Board for simplicity
GPIO.setmode(GPIO.BCM)
GPIO.setup(dir_pin, GPIO.OUT)
GPIO.setup(step_pin, GPIO.OUT)
GPIO.output(dir_pin, cw)

#set mircrostep rev pins
mode = (14,15,18)
GPIO.setup(mode, GPIO.OUT)

#set microstep tuple dictionary
resolution = {'full':(0,0,0),
            'half':(1,0,0),
            '1/4':(0,1,0),
            '1/8':(1,1,0),
            '1/16':(0,0,1),
            '1/32':(1,0,1)}


#set output resolution
GPIO.output(mode, resolution['1/32'])

step_count = steps_per_rev*32
delay = 0.005/32

'''
Full - 0,0,0
Half - 1,0,0
1/4
'''

while True:
        try:
        
                GPIO.output(step_pin, GPIO.HIGH)
                sleep(delay)
                GPIO.output(step_pin, GPIO.LOW)
        except KeyboardInterrupt:
                print("Keyboard Pressed")
                break
        finally:
                pass

        
