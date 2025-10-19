extends Player

@onready var effect_detect_area : Area2D = $EffectsDetectorArea
@onready var took_effect_sprite : Sprite2D = $TookEffect


func _ready() -> void:
#	physics_material_override.bounce = 1.0
	effect_detect_area.area_entered.connect(func(area: Area2D) -> void: if area is ControlBugFogArea: _apply_bug_fog(true))
	effect_detect_area.area_exited.connect(func(area: Area2D) -> void: if area is ControlBugFogArea: _apply_bug_fog(false, 1))
	pass


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	# var direction := Input.get_vector("left", "right", "up", "down")
	# if direction:
	# 	velocity = direction * SPEED
	# else:
	# 	velocity = Vector2.ZERO

	# move_and_slide()

func _apply_bug_fog(inside: bool, take_effect_time: float = 0.5) -> void:
	#await get_tree().create_timer(take_effect_time).timeout
	factor = -1 if inside else 1
	took_effect_sprite.visible = inside
