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
	$mushsprite.modulate = Color.GOLD
	position = Vector2(positionx, positiony)
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.


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
		$mushsprite.modulate = Color.RED
		get_parent().add_child(duplicat)
		$mushsprite.visible = true
		$mushysprite.visible = false
	position = Vector2(positionx, positiony)
	if is_clone == false:
		move_child($mushysprite, 2)
		$mushysprite.modulate = Color.GOLD
		$mushysprite.visible = true
		$mushsprite.visible = false
	pass
