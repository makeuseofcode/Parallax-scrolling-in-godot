extends CharacterBody2D

var speed = 200
var score = 0

func _physics_process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
	move_and_collide(velocity * delta)
	
	# Update parallax layers based on player movement
	var parallax_background = get_parent()
	var motion = -velocity * delta
	parallax_background.set_scroll_offset(parallax_background.scroll_offset + motion)
	
	
