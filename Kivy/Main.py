#!/usr/bin/env python3

###This is the Boot up Screen

#Start Date: 			11/4/2019
#Date Last Modified:	11/4/2019

from kivy.app import App
from kivy.uix.pagelayout import PageLayout
from kivy.uix.relativelayout import RelativeLayout
from kivy.uix.button import Button



class MyPages(PageLayout):
	def __init__(self, **kwargs):
		super().__init__(**kwargs)
		self.add_widget(Button(text="Big Test", font_size=14))
		self.add_widget(Button(text="Lil Test", font_size=14))

class MainApp(App):
	def build(self):
		return MyPages()


if __name__ == "__main__":
	MainApp().run()