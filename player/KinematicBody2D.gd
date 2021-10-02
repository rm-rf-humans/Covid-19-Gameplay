extends KinematicBody2D

const GRAVITY = 2.5
const JUMP_SPEED = -450
const RIGHT = 250
var coin = Global.mask_number
var alcohol = Global.alcohol_number
var velocity = Vector2.ZERO
func _process(delta):
	velocity.y += GRAVITY
	
	if Input.is_action_just_pressed("Jump") and .is_on_floor() :
		velocity.y = JUMP_SPEED
		$AudioStreamPlayer.play()
	if Input.is_action_just_pressed("ui_right"):
		velocity.x = RIGHT
	elif Input.is_action_just_released("ui_right"):
		velocity.x = 0
	if Input.is_action_just_pressed("ui_left") :
		velocity.x -= RIGHT
	elif Input.is_action_just_released("ui_left"): 
		velocity.x = 0
	
	if is_on_floor():
		$AnimatedSprite.play("MOVE")
	else :
		$AnimatedSprite.play("jump")
		
		
	move_and_slide(velocity, Vector2.UP)
	
func end_game():
	get_tree().change_scene("res://titlePic/Control.tscn")
	
func add_coin():
	coin = coin + 1
	Global.mask_number = coin
func add_alcohol():
	alcohol = alcohol + 1
	Global.alcohol_number = alcohol
