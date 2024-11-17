extends Area2D

#sprite 2d
@onready var sprite_2d: Sprite2D = $Sprite2D

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		sprite_2d.visible = true
		
	if event.is_action_released("lm_click"):
		sprite_2d.visible = false
