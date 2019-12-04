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



Builder.load_string("""
<MenuScreen>:
	FloatLayout:
		canvas:
			Rectangle:
            	pos: self.pos
            	size: self.size

		Button:
			text: 'Go to Settings'
			on_press: root.manager.current = 'settings'
			pos_hint: {'top':0.9, 'right':0.9}
			size_hint: .1,.1
		Button:
			text: 'Quit'
			on_press: assert False
			pos_hint: {'right':1}
			size_hint: .1,.1


<SettingsScreen>:
	BoxLayout:
		Button:
			text: 'My settings button'
			on_press: run_me
		Button:
			text: 'Back to menu'
			on_press: root.manager.current = 'menu'
			
""")


# Declare both screens
class MenuScreen(Screen):
	pass

class SettingsScreen(Screen):
	def run_me(self):
		inst.run("B_emoji.gcode")
	

# Create the screen manager
sm = ScreenManager()
sm.add_widget(MenuScreen(name='menu'))
sm.add_widget(SettingsScreen(name='settings'))

class PancakesApp(App):

	def build(self):
		return sm

if __name__ == '__main__':
	PancakesApp().run()
