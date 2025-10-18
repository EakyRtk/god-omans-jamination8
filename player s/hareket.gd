extends Player



func _ready() -> void:
#	physics_material_override.bounce = 1.0
	pass

func _physics_process(_delta: float) -> void:
	default_player_movement()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	# var direction := Input.get_vector("left", "right", "up", "down")
	# if direction:
	# 	velocity = direction * SPEED
	# else:
	# 	velocity = Vector2.ZERO

	# move_and_slide()
