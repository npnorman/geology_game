extends Area2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var label: Label = $Label
@export var buttonText = "Default"
@export var font_size = 9

const DOCK_BUTTON = preload("res://sprites/dock_button/dock_button.png")
const DOCK_BUTTON_PRESSED = preload("res://sprites/dock_button/dock_button_pressed.png")

func _ready() -> void:
	#set icon and name
	label.add_theme_font_size_override("font_size", font_size)
	label.text = buttonText

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		sprite_2d.texture = DOCK_BUTTON_PRESSED
		press_button()
	
	if event.is_action_released("lm_click"):
		sprite_2d.texture = DOCK_BUTTON
		release_button()

func press_button():
	pass

func release_button():
	pass
