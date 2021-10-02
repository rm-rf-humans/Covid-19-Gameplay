extends Control

func _process(delta):
	if Input.is_action_just_pressed("Jump"):
		get_tree().change_scene("res://New folder/Control_2.tscn")
