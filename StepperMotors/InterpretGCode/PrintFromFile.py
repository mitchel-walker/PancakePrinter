#This script executes the proper stepper motor control to print a pancake from a given g code file
from Devices import Printer
from ReadGCode import yield_commands
import RPi.GPIO as gpio
from time import sleep
import json
import re


def run(printer, gcd_file):
	#run through the 6 command options and call each corresponding command
	for command in yield_commands(gcd_file):
		if len(command[0]) == 0:
			continue
		elif command[0] == "G0":
			printer.go(eval(command[1][1:]), eval(command[2][1:]))
			continue
		elif command[0] == "G4":
			sleep(eval(command[1][1:])/1000)
			continue
		elif command[0] == "M107":
			printer.pump_off()
			continue
		elif command[0] == "M106":
			printer.pump_on()
			continue
		elif command[0] == "G28":
			printer.go(0,0)
			continue
		elif command[0] == "M84":
			printer.motors_off()
			continue
		else:
			continue




if __name__ == "__main__":
	#remove warnings
	gpio.setwarnings(False)

	#set gpio naming scheme
	gpio.setmode(gpio.BCM)

	#Remove all whitespace characters
	with open('config.json') as f:
		text = re.sub(r"\s",'',f.read())
	config_dict = json.loads(text)


	output_pins = []
	for dc in config_dict:
		if "pins" in dc:
			for key in dc["pins"]:
				output_pins.append(dc["pins"][key])
	
	gpio.setup(output_pins,gpio.OUT)

	printer = Printer(config_dict)

	run(printer, "../GCode/Test.gcode")

	gpio.cleanup()