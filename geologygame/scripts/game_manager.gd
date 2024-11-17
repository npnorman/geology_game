extends Node

#windows
@onready var seismograph_window: Node2D = $"../Windows/SeismographWindow"

var windows = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	windows.append([seismograph_window, "seismograph"])
	load_windows()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func load_windows():
	for i in range(0, len(windows)):
		windows[i][0].visible = false

func open_window(name):
	for i in range(0, len(windows)):
		#match name
		if windows[i][1] == name:
			windows[i][0].visible = true
		else:
			windows[i][0].visible = false
