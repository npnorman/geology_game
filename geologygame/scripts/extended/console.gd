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
	
	#put on previous track
	add_to_track(">" + new_text)
	
	#check if valid
	validate_command(new_text)
	
	#render previous track
	render_previous_track()

func add_to_track(text):
	#put on previous track
	previous_track.append(text)
	previous_track.remove_at(0)

func validate_command(command):
	if command == "69":
		add_to_track("Nice ;)")
	if command == "clear":
		add_to_track("")
		add_to_track("")
		add_to_track("")

func render_previous_track():
	var track = ""
	
	for i in range(0, len(previous_track)):
		track += previous_track[i] + "\n"
	
	previous.text = track
