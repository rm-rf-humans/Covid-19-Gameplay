extends Area2D

var obstacle_list = ["moving_v1","moving_v2","moving_v3"]
onready var speed = rand_range(200,350)
func _ready():
	randomize()
	var current_obstacle = obstacle_list[randi() % obstacle_list.size()]
	$AnimatedSprite.animation = current_obstacle
	
func _process(delta):
	position.x -= speed * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Obstacle_body_entered(body):
	get_tree().call_group("Player", "end_game")



