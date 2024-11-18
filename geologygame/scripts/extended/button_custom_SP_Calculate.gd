extends "res://scripts/button_custom.gd"

@onready var p_in: LineEdit = $"../ColorRect2/LineEdit_P"
@onready var s_in: LineEdit = $"../ColorRect3/LineEdit_S"
@onready var sp_output: Label = $"../ColorRect/sp_output"

func release_button():
	#calculate and throw to output
	var p_num = int(p_in.text)
	var s_num = int(s_in.text)
	var sp = s_num - p_num
	
	sp_output.text = str(sp)
