extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")
func _process(delta):
	position.x -= 250 * delta

func _on_coin_body_entered(body):
	$AudioStreamPlayer.play()
	anim_player.play("bouncing")
	body.add_coin()
	
