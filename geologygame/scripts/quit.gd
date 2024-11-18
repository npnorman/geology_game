extends Area2D

@onready var sprite_2d: Sprite2D = $Sprite2D

const DOCK_BUTTON_PRESSED = preload("res://sprites/dock_button/dock_button_pressed.png")
const DOCK_BUTTON = preload("res://sprites/dock_button/dock_button.png")

@onready var button_custom: Area2D = $ButtonCustom
@onready var confirm: Label = $Confirm
@onready var label: Label = $Label

var pressed_once = false

func _input_event(viewport, event, shape_idx):
	#check if staying
	if event.is_action_pressed("lm_click"):
		sprite_2d.texture = DOCK_BUTTON_PRESSED
		
	if event.is_action_released("lm_click"):
		sprite_2d.texture = DOCK_BUTTON
		
		if pressed_once == false:
			confirmation()
		else:
			reset_confirmation()

func confirmation():
	
	label.text = "Stay Here"
	button_custom.visible = true
	confirm.visible = true
	pressed_once = true
	
func reset_confirmation():
	label.text = "Quit"
	button_custom.visible = false
	confirm.visible = false
	pressed_once = false
