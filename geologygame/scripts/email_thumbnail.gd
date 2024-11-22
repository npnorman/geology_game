extends Area2D

#signal to window
signal email_clicked(obj)

#@export var profilePicture:Texture
@export var profileName = "Bob Bureaucrat"
@export var subject = "Earthquake in California"

#email properties
@export var emailAddr = "bob@global.edu"
@export_multiline var body = ""

#@onready var profile_picture: Sprite2D = $ProfilePicture
@onready var profile_name: Label = $Name
@onready var profile_subject: Label = $Subject

#data
@export var wasRead:bool
@export var isStarred:bool

func _ready() -> void:
	#if(profile_picture != null):
		#profile_picture.texture = profilePicture
	
	profile_name.text = profileName
	profile_subject.text = subject

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("lm_click"):
		pass
	
	if event.is_action_released("lm_click"):
		email_clicked.emit(self)
