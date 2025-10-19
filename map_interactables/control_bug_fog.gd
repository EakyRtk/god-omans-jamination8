class_name ControlBugFogArea extends Area2D


func _ready() -> void:
	var polygon_2d : Polygon2D = Polygon2D.new()
	var col_shape : CollisionShape2D = $CollisionShape2D

 #   print(polygon_2d.polygon.append(col_shape.shape.size))
	var points : PackedVector2Array = [col_shape.shape.size, Vector2(col_shape.shape.size.x * -1, col_shape.shape.size.y),  col_shape.shape.size * -1, Vector2(col_shape.shape.size.x, col_shape.shape.size.y * -1)]
	for point : int in points.size():
#		points[point].x -= self.global_position.x / 2
#		points[point].y -= self.global_position.y / 2
		points[point] /= 2
#    polygon_2d.polygon.append(col_shape.shape.size * -1)
#    polygon_2d.polygon.append(Vector2(col_shape.shape.size.x * -1, col_shape.shape.size.y))
#    polygon_2d.polygon.append(Vector2(col_shape.shape.size.x, col_shape.shape.size.y * -1))
	add_child(polygon_2d)
	polygon_2d.polygon = points
	polygon_2d.color = Color("ff62ff37")
