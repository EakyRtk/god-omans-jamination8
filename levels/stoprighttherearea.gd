extends Area2D

func _ready() -> void:
    body_entered.connect(func(body: Node2D)->void: if body is Player: get_tree().call_deferred("reload_current_scene"))
