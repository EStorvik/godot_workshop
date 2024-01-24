extends RigidBody2D

var gravity = 5
var velocity = Vector2.ZERO

# Declare collision signal
signal collided_with_body(body)
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.y+=gravity*delta
	var collision = move_and_collide(velocity)
	
	if collision:
		emit_signal("collided_with_body", collision.get_collider().name)
