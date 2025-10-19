extends Node2D


@onready var animation_player : AnimationPlayer = $AnimationPlayer

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("esc"): get_tree().quit()

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



