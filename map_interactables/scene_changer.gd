class_name SceneChangerArea extends Area2D

@export var scene_location : String

func _ready() -> void:
	body_entered.connect(func(body: Node2D) -> void: 
		if body.is_in_group("obje"): get_tree().call_deferred("reload_current_scene"); return
		if body is Player or body.is_in_group("player"): 
			await SceneTransition.play_fade_in()
			get_tree().call_deferred("change_scene_to_file", scene_location))
		