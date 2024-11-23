extends Area2D

@export var default_texture:Texture
@export var clicked_texture:Texture

var isClicked = false

@onready var sprite_2d: Sprite2D = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sprite_2d.texture = default_texture

func clicked():
	isClicked = !isClicked
	toggle_sprite()

func toggle_sprite():
	if isClicked:
		sprite_2d.texture = clicked_texture
	else:
		sprite_2d.texture = default_texture

#Inputs
func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		pass
	
	if event.is_action_released("lm_click"):
		clicked()
