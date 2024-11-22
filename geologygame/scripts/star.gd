extends Area2D

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		print("clicked-star")
	
	if event.is_action_released("lm_click"):
		print("released-star")
