extends Node2D

@onready var exit_line = $ExitLine
@onready var bucket = $Bucket
@onready var drop = $Drop
@onready var scoreLabel =  $Score

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	relocate_ball()
	scoreLabel.text = str(score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_ball_collided_with_body(body):
	if body == "Bucket":
		score += 1
		scoreLabel.text = str(score)
		relocate_ball()
	else:
		get_tree().quit()
		
func relocate_ball():
	var x = randi_range(100, 1100)
	drop.velocity = Vector2.ZERO
	drop.position = Vector2(x, 0)


