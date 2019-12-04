#home screen to hold Smiley face

import sys
sys.path.insert(1,'PancakePrinter/StepperMotors/InterpretGCode')
from PrintFromFile import *


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

printer.run("PancakePrinter/StepperMotors/GCode/smiley3.gcode")

gpio.cleanup()



