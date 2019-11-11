#!/usr/bin/env python3

###This program is just a test for python's kivy library

#Start Date: 			10/31/2019
#Date Last Modified:	11/4/2019


from kivy.app import App
from kivy.uix.gridlayout import GridLayout
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput


class LoginScreen(GridLayout):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.cols = 2
        self.add_widget(Label(text='User Name'))
        self.username = TextInput(multiline=False)
        self.add_widget(self.username)
        self.add_widget(Label(text='password'))
        self.password = TextInput(password=True, multiline=False)
        self.add_widget(self.password)


class TestApp(App):

    def build(self):
        return LoginScreen()


if __name__ == '__main__':
    TestApp().run()