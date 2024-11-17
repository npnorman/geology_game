extends Area2D

#window
@onready var window: Node2D = $".."

#sprite
@onready var sprite_2d: Sprite2D = $Sprite2D

#textures
const X_DEFAULT = preload("res://sprites/window/x_default.png")
const X_PRESSED = preload("res://sprites/window/x_pressed.png")

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		sprite_2d.texture = X_PRESSED
		
		#close window
		window.visible = false
	
	if event.is_action_released("lm_click"):
		sprite_2d.texture = X_DEFAULT
