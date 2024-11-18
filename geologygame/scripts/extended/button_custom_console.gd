extends "res://scripts/button_custom.gd"

@onready var dock_button: Area2D = $"../.."
@onready var menu_tile: Node2D = $".."

func release_button():
	dock_button.open_window("console")
	dock_button.close()
