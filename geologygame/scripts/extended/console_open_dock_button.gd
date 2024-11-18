extends "res://scripts/dock_button.gd"

@onready var game_manager: Node = %GameManager

func open_window(name):
	game_manager.open_window(name)
