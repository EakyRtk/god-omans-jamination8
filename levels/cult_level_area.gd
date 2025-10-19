extends Area2D

@export var player : Player
@export var turning_cultists : Array[Sprite2D]

func _ready() -> void:
	body_entered.connect(
		func(body: Node2D): 
			if body is Player: 
				player.SPEED = 0
				await get_tree().create_timer(0.8).timeout
				for cultist_sprite : Sprite2D in turning_cultists:
					cultist_sprite.flip_h = false
			)
		
