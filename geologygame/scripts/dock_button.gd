extends Area2D

#sprite 2d
@onready var sprite_2d: Sprite2D = $Button
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var menu: Node2D = $MenuTile

func _ready() -> void:
	menu.visible = false

#textures
const DOCK_BUTTON = preload("res://sprites/dock_button/dock_button.png")
const DOCK_BUTTON_PRESSED = preload("res://sprites/dock_button/dock_button_pressed.png")

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		sprite_2d.texture = DOCK_BUTTON_PRESSED
		
	if event.is_action_released("lm_click"):
		sprite_2d.texture = DOCK_BUTTON
		
		#show globe spinning
		toggleGlobe()
		
		#show menu
		toggleVisibility(menu)

func toggleVisibility(obj):
	if obj.is_visible_in_tree() == false:
		obj.visible = true
	else:
		obj.visible = false
		
func toggleGlobe():
	if animated_sprite_2d.is_playing():
		animated_sprite_2d.stop()
	else:
		animated_sprite_2d.play("spin")
