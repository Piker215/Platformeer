extends Label
@onready var monye = get_node("/root/money")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "0"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = str(monye.moneys)
	pass
