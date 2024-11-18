extends Node

#windows

@onready var windows_node: Node = $"../Windows"

var windows = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for win in windows_node.get_children():
		windows.append([win, win.instanceName, win.persistent])
	load_windows()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func load_windows():
	for i in range(0, len(windows)):
		windows[i][0].visible = false

func open_window(name):
	for i in range(0, len(windows)):
		#match name and persistent
		#if persistent and clicked
			#dont do anything
		if name == "notepad" or name == "console":
			if windows[i][1] == name:
				windows[i][0].visible = true
		else:
			if windows[i][1] == name:
				windows[i][0].visible = true
			elif windows[i][2] != true:
				windows[i][0].visible = false
