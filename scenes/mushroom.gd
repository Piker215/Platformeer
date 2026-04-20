extends Area2D
var is_clone := false
var duplicator := 5
var number = 1
#array[] blebleble = [number.count]
#array[] print
func _ready():
	randomize()
	var positionx = randf_range(-500, 500)
	var positiony = randf_range(-200, 250)
	$mushsprite.modulate = Color.RED
	position = Vector2(positionx, positiony)
	pass 




func _on_body_entered(body: Node2D) -> void:
	number += 1
	$mushsprite.visible = false
	var positionx = randf_range(-500, 500)
	var positiony = randf_range(-200, 250)
	for _n in range(number):
		if is_clone:
			return
		var duplicat = duplicate()
		duplicat.is_clone = true
		duplicat.position = Vector2(randf_range(-500, 500), randf_range(-200, 250))
		$mushsprite.modulate = Color.GOLD
		get_parent().add_child(duplicat)
		$mushsprite.visible = true
	position = Vector2(positionx, positiony)
	
	pass
