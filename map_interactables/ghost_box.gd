extends Area2D

@export var target_node : Node2D
@export var speed : float = 300.0

func _ready() -> void:
	body_entered.connect(_body_entered)

func _process(delta: float) -> void:
	position += self.position.direction_to(target_node.position) * speed * delta

func _body_entered(body: Node2D) -> void:
	if body is Player: get_tree().call_deferred("reload_current_scene")
	pass
