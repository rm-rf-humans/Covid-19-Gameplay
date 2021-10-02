extends Node

var current_score = 0
var high_score = 0

var mask_number = 0
var alcohol_number = 0

func end_game():
	get_tree().change_scene("res://titlePic/Control.tscn")
