extends "res://scripts/button_custom.gd"

@onready var text_edit: TextEdit = $"../Control/TextEdit"

func release_button():
	#reset the notepad
	text_edit.clear()
