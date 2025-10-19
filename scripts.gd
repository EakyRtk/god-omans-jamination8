extends Node2D





func _on_oyna_pressed() -> void:
	await SceneTransition.play_fade_in()
	get_tree().change_scene_to_file("res://test_1.tscn")



#func _on_çık_pressed() -> void:
#	get_tree().quit()


func _on_play_pressed() -> void:
	await SceneTransition.play_fade_in()
	get_tree().call_deferred("change_scene_to_file", "uid://ctoqy1oosyaqa")

func _on_exit_pressed() -> void:
	get_tree().quit()