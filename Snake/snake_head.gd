extends CharacterBody2D
@onready var animation_tree = $AnimationTree

const SPEED = 4800
var input_vec = Vector2.ZERO
var test_vec = Vector2.ZERO

func _physics_process(delta):
	input_vec = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if input_vec.x == 1:
		velocity = (input_vec * delta * SPEED) / 32
		velocity += (input_vec * delta * SPEED)
		position.x = (int(position.x / 16) * 16) + 9
		position.y = (int(position.y / 16) * 16) + 9
	if input_vec.x == - 1:
		velocity = (input_vec * delta * SPEED) / 32
		velocity += (input_vec * delta * SPEED)
		position.x = (int(position.x / 16) * 16) + 9
		position.y = (int(position.y / 16) * 16) + 9
	if input_vec.y == 1:
		velocity = (input_vec * delta * SPEED) / 32
		velocity += (input_vec * delta * SPEED)
		position.x = (int(position.x / 16) * 16) + 9
		position.y = (int(position.y / 16) * 16) + 9
	if input_vec.y == - 1:
		velocity = (input_vec * delta * SPEED) / 32
		velocity += (input_vec * delta * SPEED)
		position.x = (int(position.x / 16) * 16) + 9
		position.y = (int(position.y / 16) * 16) + 9
	animation_tree["parameters/Run/blend_position"] = velocity
	velocity.x = int(velocity.x / 32) * 32
	velocity.y = int(velocity.y / 32) * 32
	print(position)

	#320, 180
	if position.x > 320||position.x < 0||position.y > 192||position.y < 0:
		gameOver()
	move_and_slide()

func gameOver():
	pass
	#position.x = 320
	#position.y = 192
