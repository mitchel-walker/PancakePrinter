#!/usr/bin/env python3

###This is the Boot up Screen

#Start Date: 			11/4/2019
#Date Last Modified:	11/4/2019


from kivy.app import App
from kivy.uix.relativelayout import RelativeLayout
from kivy.uix.image import Image


class BootScreen(RelativeLayout):
	def __init__(self, **kwargs):
		super().__init__(**kwargs)
		self.add_widget(Image(source='BootUp.png'))


class BootApp(App):
	
	def build(self):
		return BootScreen()


if __name__ == "__main__":
	BootApp().run()
