class_name Player extends RigidBody2D

@export var SPEED = 300.0
var factor : int = 1

func default_player_movement() -> void:

	var input_vector = Input.get_vector("left","right","up","down") * factor
	apply_central_force(input_vector*SPEED)

func _physics_process(_delta: float) -> void:
	default_player_movement()

