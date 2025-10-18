extends Node2D

@onready var animation_player : AnimationPlayer = $AnimationPlayer
@onready var collision_shape : CollisionShape2D = $StaticBody2D/CollisionShape2D

@export var is_open : bool = false: 
	set(value):
		is_open = value
		if is_open: # door opened
			animation_player.play("open")
			await animation_player.animation_finished
			collision_shape.set_deferred("disabled", true)
		else: # door closed
			animation_player.play_backwards("open")
#			await animation_player.animation_finished
			collision_shape.set_deferred("disabled", false)

func _ready() -> void:
	pass

func _get_switched() -> void:
	is_open = !is_open