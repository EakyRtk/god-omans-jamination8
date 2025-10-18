extends Node2D





func _on_oyna_pressed() -> void:
	await SceneTransition.play_fade_in()
	get_tree().change_scene_to_file("res://test_1.tscn")



func _on_çık_pressed() -> void:
	get_tree().quit()
