extends CharacterBody2D

var speed = 600
var target_velocity_percent = Vector2.ZERO
var acceleration = 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):

	# Check for input
	if Input.is_action_pressed("ui_right"): 
		target_velocity_percent = target_velocity_percent.move_toward(Vector2(1, 0), acceleration*delta) 
	elif Input.is_action_pressed("ui_left"): 
		target_velocity_percent = target_velocity_percent.move_toward(Vector2(-1, 0), acceleration*delta) 
	else:
		target_velocity_percent = target_velocity_percent.move_toward(Vector2.ZERO, 2 * acceleration*delta)


	velocity = target_velocity_percent * speed
	# Move the character
	move_and_slide()
