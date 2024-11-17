extends Area2D

#sprite 2d
@onready var sprite_2d: Sprite2D = $Sprite2D

#textures
const DOCK_BUTTON = preload("res://sprites/dock_button/dock_button.png")
const DOCK_BUTTON_PRESSED = preload("res://sprites/dock_button/dock_button_pressed.png")

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		sprite_2d.texture = DOCK_BUTTON_PRESSED
		
	if event.is_action_released("lm_click"):
		sprite_2d.texture = DOCK_BUTTON
