extends KinematicBody2D

const GRAVITY = 10
const JUMP_SPEED = 400
var velocity = Vector2.ZERO
func _process(delta):
	velocity.y += GRAVITY
	move_and_slide(velocity)
	

