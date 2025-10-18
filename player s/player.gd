class_name Player extends RigidBody2D

@export var SPEED = 300.0

func default_player_movement() -> void:

	var input_vector = Input.get_vector("left","right","up","down")
	apply_central_force(input_vector*SPEED)
	