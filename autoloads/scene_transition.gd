extends Node2D

signal animation_finished

@onready var animation_player : AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	get_tree().scene_changed.connect(play_fade_out)

func play_fade_in() -> void:
	animation_player.play("fade_in")
	get_tree().paused = true
	await animation_player.animation_finished
	#animation_finished.emit()

func play_fade_out() -> void:
	animation_player.play_backwards("fade_in")
	get_tree().paused = false



