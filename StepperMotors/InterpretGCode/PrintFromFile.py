#This script executes the proper stepper motor control to print a pancake from a given g code file
from Devices import Printer
from ReadGCode import yield_commands
import RPi.GPIO as gpio
import json
import re


def run(printer, gcd_file):
	for command in yield_commands(gcd_file):
		if len(command) > 0 and command[0] == "G00":
			printer.go(eval(command[1][1:]), eval(command[2][1:]))


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