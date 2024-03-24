extends CharacterBody2D
@onready var animation_tree = $AnimationTree

const SPEED = 4800
var input_vec = Vector2.ZERO

func _physics_process(delta):
	input_vec = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if input_vec.x == 1:
		velocity = (input_vec * delta * SPEED) / 32
		velocity += (input_vec * delta * SPEED)
	if input_vec.x == - 1:
		velocity = (input_vec * delta * SPEED) / 32
		velocity += (input_vec * delta * SPEED)
	if input_vec.y == 1:
		velocity = (input_vec * delta * SPEED) / 32
		velocity += (input_vec * delta * SPEED)
	if input_vec.y == - 1:
		velocity = (input_vec * delta * SPEED) / 32
		velocity += (input_vec * delta * SPEED)
	animation_tree["parameters/Run/blend_position"] = velocity
	move_and_slide()
