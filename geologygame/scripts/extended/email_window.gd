extends "res://scripts/window.gd"

@onready var v_box_container: VBoxContainer = $EmailThumbnailControl/ScrollContainer/VBoxContainer

func _ready() -> void:
	send_email("Nick", "Hello There!")
	send_email("Bob", "Earthquake!")
	send_email("Steven", "Nice to meet you sir")
	send_email("Dr. Fawzi", "AIAIAIAIAIAIAIAIAIAIAIAIAIAIAIAI")
	send_email("Nick", "Hello There!")
	send_email("Bob", "Earthquake!")
	send_email("Steven", "Nice to meet you sir")
	send_email("Dr. Fawzi", "AIAIAIAIAIAIAIAIAIAIAIAIAIAIAIAI")
	send_email("Nick", "Hello There!")
	send_email("Bob", "Earthquake!")
	send_email("Steven", "Nice to meet you sir")
	send_email("Dr. Fawzi", "AIAIAIAIAIAIAIAIAIAIAIAIAIAIAIAI")

#create a new email
func send_email(e_name, subject):
	#add thumbnail to scroll
	#create email
	var email_thumnail = preload("res://scenes/email_thumbnail.tscn").instantiate()
	email_thumnail.profileName = e_name
	email_thumnail.subject = subject
	
	var control_node = Control.new()
	#add email to control node
	control_node.add_child(email_thumnail)
	
	v_box_container.add_child(control_node)
