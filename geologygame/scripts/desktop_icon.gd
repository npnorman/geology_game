extends Area2D

#icon and text
@export var icon_texture: Texture
@export var label_text = "default"
@onready var icon: Sprite2D = $Icon
@onready var label: Label = $Label

@onready var game_manager: Node = %GameManager
@onready var sprite_2d: Sprite2D = $Sprite2D
@export var window = "default_window"

func _ready() -> void:
	#set icon and name
	icon.texture = icon_texture
	label.text = label_text

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		sprite_2d.visible = true
		#open window
		game_manager.open_window(window)
		
	if event.is_action_released("lm_click"):
		sprite_2d.visible = false
