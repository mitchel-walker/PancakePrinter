from kivy.app import App
from kivy.lang import Builder
from kivy.uix.button import Button
from kivy.uix.screenmanager import ScreenManager, Screen
from kivy.core.window import Window



# import sys
# sys.path.insert(1,'../StepperMotors/InterpretGCode')
# from PrintFromFile import *


# Create both screens. Please note the root.manager.current: this is how
# you can control the ScreenManager from kv. Each screen has by default a
# property manager that gives you the instance of the ScreenManager used.
class PrintFromFile():
	def __init__(self):
		return
	def setup(self):
		print("setup called")
	def run(self,file):
		print("running " + file)

inst = PrintFromFile()
inst.setup()


# Declare both screens
class MenuScreen(Screen):
	pass

class SettingsScreen(Screen):
	pass



Builder.load_string("""
<MenuScreen>:
	FloatLayout:
		canvas:
			Rectangle:
            	pos: self.pos
            	size: self.size

		Button:
			on_press: app.print('../StepperMotors/GCode/B.gcode')
			pos_hint: {'top':.8, 'right':0.3}
			size_hint: .1,.1
			Image:
				source: 'B.png'
				pos:self.parent.x, self.parent.y
				allow_stretch: True

		Button:
			on_press: app.print('../StepperMotors/GCode/Longhorn.gcode')
			pos_hint: {'top':0.8, 'right':0.9}
			size_hint: .1,.1
			Image:
				source: 'Longhorn.png'
				pos:self.parent.x, self.parent.y
				allow_stretch: True
		Button:
			on_press: app.print('../StepperMotors/GCode/Soccer.gcode')
			pos_hint: {'top':0.4, 'right':0.9}
			size_hint: .1,.1
			Image:
				source: 'Soccer.png'
				pos:self.parent.x, self.parent.y
				allow_stretch: True
		Button:
			on_press: app.print('../StepperMotors/GCode/smiley3.gcode')
			pos_hint: {'top':.4, 'right':0.3}
			size_hint: .1,.1
			Image:
				source: 'smiley.png'
				pos:self.parent.x, self.parent.y
				allow_stretch: True
		Button:
			on_press: assert False
			pos_hint: {'right':1}
			size_hint: .1,.1
			Image:
				source: 'powerbutton.png'
				y: self.parent.y
				x: self.parent.x
				size_hint: .1,.1
				
	            allow_stretch: True
			
""")

	

# Create the screen manager
sm = ScreenManager()
sm.add_widget(MenuScreen(name='menu'))
sm.add_widget(SettingsScreen(name='settings'))

class PancakesApp(App):

	def build(self):
		return sm

	def print(self, file):
		print(file)

if __name__ == '__main__':
	PancakesApp().run()
