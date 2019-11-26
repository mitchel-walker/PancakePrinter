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



if __name__ == "__main__":
	find_all_commands("../g_code/B_emoji.gcode")
