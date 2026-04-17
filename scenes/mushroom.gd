extends Area2D
var is_clone = false
var duplicator := 5
var number = 1
#array[] blebleble = [number.count]
#array[] print
func _ready():
	randomize()
	var positionx = randf_range(-500, 500)
	var positiony = randf_range(-200, 250)
	position = Vector2(positionx, positiony)
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_body_entered(body: Node2D) -> void:
	if is_clone:
		return
	number *= 2
	$mushsprite.modulate = Color.RED
	$mushsprite.visible = false
	var positionx = randf_range(-500, 500)
	var positiony = randf_range(-200, 250)
	for n in range(number):
		
		randomize()
		var duplicat = self.duplicate()
		duplicat.is_clone = true
		duplicat.position = Vector2(randf_range(-500, 500), randf_range(-200, 250))
		get_parent().add_child(duplicat)
		position = Vector2(positionx, positiony)
	$mushsprite.visible = true
	pass
