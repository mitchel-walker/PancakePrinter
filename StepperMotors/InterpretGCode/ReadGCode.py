#This script handles the classes/methods for reading Gcode

def find_all_commands(file):
	#read file, add to list
	with open(file) as f:
		text = f.readlines()

	#strip each line of newline character
	for c,line in enumerate(text):
		text[c] = line.strip()

	#for each line, add command to set
	all_commands = set()
	for line in text:
		#break each line into separate commands
		commands = line.split(' ')

		comment_reached = False
		xy_reached = False

		#iterate through each entity
		for ent in commands:
			#iterate through every character in each entity
			for char in ent:
				#break/break if newline character
				if char == ";":
					comment_reached = True
					break
				#break/continue if x or y
				elif char == 'X' or char == 'Y':
					xy_reached = True
					break

			if comment_reached:
				break
			elif xy_reached:
				continue
			else:
				all_commands.add(ent)
	print(all_commands)


def read_file(file):
	#return list of clean lines from gcode file
	with open(file) as f:
		text = f.readlines()

	#strip each line of newline character
	for c,line in enumerate(text):
		text[c] = line.strip()

	#return clean text list
	return text


def create_arr(line):
	# return the array of commands for the given line of gcode
	arr = []

	#split line into separate commands
	commands = line.split()

	#iterate through every character in each element
	comment_reached = False

	for ent in commands:
		for char in ent:
			#break if ';' character is found
			if char == ';':
				comment_reached = True
				break

		# return array if comment reached
		if comment_reached:
			return arr

		#otherwise add element to arr
		arr.append(ent)

	#return arr
	return arr



def yield_commands(file):
	#yield the command array for each line of a file
	text = read_file(file)
	
	for line in text:
		yield create_arr(line)

		

if __name__ == "__main__":
	for command in yield_commands("../GCode/B_emoji.gcode"):
		print(command)

	
