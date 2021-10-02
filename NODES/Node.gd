extends Node

const OBSTACLE = preload("res://Virus/Obstacle.tscn")
const Coin = preload("res://Objects/coin.tscn")
const Alcohol = preload("res://Objects/Area2D.tscn")

var mask = Global.mask_number
var alcohol = Global.alcohol_number


func _ready():
	Global.current_score = 0
	Global.mask_number = 0
	Global.alcohol_number = 0
	
func _on_Timer_timeout():
	var obstacle = OBSTACLE.instance()
	add_child(obstacle)
	$Timer.wait_time = rand_range(2,4)


func _on_ScoreTimer_timeout():
	Global.current_score += 1
	
func _process(delta):
	$Score.text = "Score : " + str(Global.current_score)
	$coinCounter.text = "10 / " + str(Global.mask_number)
	$Alcohollabel.text = "10 / " + str(Global.alcohol_number)
	if Global.alcohol_number >= 10 and Global.mask_number >= 10:
		Global.alcohol_number = 0
		Global.mask_number = 0
		get_tree().change_scene("res://New folder/Control_1.tscn")

func _on_coinTimer_timeout():
	var coin = Coin.instance()
	add_child(coin)
	$coinTimer.wait_time = rand_range(2.5, 4)


func _on_alcohoTimer_timeout():
	var alcohol = Alcohol.instance()
	add_child(alcohol)
	$alcohoTimer.wait_time = rand_range(4.5, 5.5)
	

