extends Node


var players_active = []
var device = "pc"
var version = "1.1.5"
var splashed = false

func _ready():
	OS.set_window_title("Just A Bunch of Squares")

func is_up_to_date():
	var file = File.new()
	if file.file_exists("user://Version.txt"):
		file.open("user://Version.txt",File.READ)
		if str(file.get_as_text()) == str(version) + "\n":
			file.close()
			return true
		else:
			file.close()
			file.open("user://Version.txt",File.WRITE)
			file.store_line(version)
			file.close()
			return false
	else:
			file.close()
			file.open("user://Version.txt",File.WRITE)
			file.store_line(version)
			file.close()
			return false