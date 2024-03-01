extends CharacterBody2D

const SPEED = 4800

var input_vec = Vector2.ZERO
func _physics_process(delta):
	input_vec = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity.x = 1
	velocity = input_vec * delta * SPEED
	print(velocity)
	move_and_slide()
