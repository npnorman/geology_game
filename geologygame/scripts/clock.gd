extends Node2D

@onready var clock_label: Label = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var currentTime = get_time_string()
	
	clock_label.text = currentTime

func get_time_string():
	var currentTime = ""
	var formatTime = ""
	var meridian = "AM"
	
	currentTime = Time.get_time_string_from_system()
	
	#format this
	var hour = currentTime.get_slice(":",0)
	var min = currentTime.get_slice(":",1)
	
	#if hour is greater than 12, add PM
	if int(hour) >= 12:
		meridian = "PM"
	else:
		meridian = "AM"
	
	#mod hour by 12
	var hourInt = int(hour)
	hourInt = hourInt % 12
	
	#catch AM
	if hourInt == 0:
		hourInt = 12
	
	hour = str(hourInt)
	
	#format Time
	formatTime = hour + ":" + min + " " + meridian
	
	#print(currentTime)
	return formatTime
