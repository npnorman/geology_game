extends Area2D

#@export var profilePicture:Texture
@export var profileName = "Bob Bureaucrat"
@export var subject = "Earthquake in California"

#@onready var profile_picture: Sprite2D = $ProfilePicture
@onready var profile_name: Label = $Name
@onready var profile_subject: Label = $Subject

func _ready() -> void:
	#if(profile_picture != null):
		#profile_picture.texture = profilePicture
	
	profile_name.text = profileName
	profile_subject.text = subject

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		print("clicked")
	
	if event.is_action_released("lm_click"):
		print("released")
