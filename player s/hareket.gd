extends RigidBody2D


@export var SPEED = 500.0



func _physics_process(delta: float) -> void:


	var input_vector = Input.get_vector("left","right","up","down")
	apply_central_force(input_vector*SPEED)
	


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	# var direction := Input.get_vector("left", "right", "up", "down")
	# if direction:
	# 	velocity = direction * SPEED
	# else:
	# 	velocity = Vector2.ZERO

	# move_and_slide()
