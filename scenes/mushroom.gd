extends Area2D
var duplicator := 5
func _ready():
	randomize()
	var positionx = randf_range(-500, 500)
	var positiony = randf_range(-200, 250)
	position = Vector2(positionx, positiony)
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_body_entered(body: Node2D) -> void:
	$mushsprite.visible = false
	pass
