extends Area2D

## Bağlı olduğu cihazı aktive etmek üzere sinyal yollar.
signal activate_device
signal deactivate_device

## Basınç plakası tek seferlik üstüne basma yetiyor mu yoksa sürekli üstünde ağırlık mı olması lazım. True is tek seferlik.
@export var is_button_type : bool = true


func _ready() -> void:
	body_entered.connect(_body_entered)
	body_exited.connect(_body_exited)

func _body_entered(body: Node2D) -> void:
	if body is Player: print("player girdi")
	if body.is_in_group("pressure_activator"):
		activate_device.emit()


		#o kadar da gerek yok ya
		# var param 
		# if body.has_meta("param"): 
		# 	param = body.get_meta("param") 
		# activate_device.emit(param)
		# print("pressure plate aktif")

func _body_exited(body: Node2D) -> void:
	if body.is_in_group("pressure_activator") and not is_button_type:
		deactivate_device.emit()		
