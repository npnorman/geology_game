extends "res://scripts/window.gd"

@onready var previous: Label = $Previous
@onready var line_edit_p: LineEdit = $LineEdit_P

var previous_track = ["","",""]

func _ready() -> void:
	super._ready()
	previous.text = "Global Operating System ©1998\nWelcome USER -- :D"

func _on_line_edit_p_text_submitted(new_text: String) -> void:
	#clear line
	line_edit_p.clear()
	
	#check if valid
	validate_command(new_text)
	
	#put on previous track
	previous_track.append(new_text)
	previous_track.remove_at(0)
	
	#render previous track
	render_previous_track()

func render_previous_track():
	var track = ""
	
	for i in range(0, len(previous_track)):
		if (previous_track[i] != ""):
			track += ">" + previous_track[i] + "\n"
		else:
			track += "\n"
	
	previous.text = track

func validate_command(command):
	pass
