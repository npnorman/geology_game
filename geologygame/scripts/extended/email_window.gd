extends "res://scripts/window.gd"

@onready var v_box_container: VBoxContainer = $EmailThumbnailControl/ScrollContainer/VBoxContainer
@onready var user_name: Label = $UserName
@onready var email_addr: Label = $EmailAddr
@onready var subject_line: Label = $SubjectLine
@onready var body: Label = $EmailThumbnailControl/ScrollContainer2/VBoxContainer/Body



const EMAIL_THUMBNAIL = preload("res://scenes/email_thumbnail.tscn")

func _ready() -> void:
	super._ready()
	var body = """Hello new recruit!
	
	My name is Nick and I am your new supervisor. I will be checking in with you from time to time to make sure everything is going ok!.
	
	I hope you like it here! As a researcher here at Global University, you will be locating earthquakes as they happen using our seismograph stations around the world and our handy dandy computer you are reading this on; Global OS 1998.
	
	Again, I hope your time here is wonderful!
	
	Happy earthquake hunting, mate!
	
	Nick Norman
	Assistant Dean of Research
	Global University, USA
	"""
	
	send_email("Nick Norman", "Hello There!", "nnorm@global.edu", body)
	
	var body2 = """Researcher,
	
	An earthquake has just hit California!
	
	Stations 001, 034, and 044 have data for you to analyze. The data is avaiable in your seismograph application.
	
	Once you have found the latitude and longitude, please send us your results.
	
	As always,
	Dr. Light
	
	Department Chair of Geosciences
	Global University
	"""
	
	send_email("Dr. Light", "Earthquake in California", "jlight@global.edu", body2)
	send_email("Mr. Light", "Give me your sensative data", "jlight@glUbal.edu", "I want your data :)\nMr. Light\nGlubal Universoty")
	send_email("Junk1","","","")
	send_email("Junk2","","","")
	send_email("Junk3","","","")
	send_email("Junk4","","","")
	send_email("Junk5","","","")
	send_email("Junk6","","","")
	send_email("Junk7","","","")

#create a new email
func send_email(e_name, subject, emailAdrr, body):
	#add thumbnail to scroll
	#create email
	var email_thumbnail = EMAIL_THUMBNAIL.instantiate()
	email_thumbnail.profileName = e_name
	email_thumbnail.subject = subject
	email_thumbnail.emailAddr = emailAdrr
	email_thumbnail.body = body
	
	email_thumbnail.email_clicked.connect(open_email)
	
	var control_node = Control.new()
	#add email to control node
	control_node.add_child(email_thumbnail)
	
	v_box_container.add_child(control_node)

func open_email(obj):
	#open email in window
	print(obj.profileName)
	user_name.text = "Name: " + obj.profileName
	email_addr.text = "Address: " + obj.emailAddr
	subject_line.text = "Subject: " + obj.subject
	body.text = obj.body
