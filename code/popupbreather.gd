extends Popup
signal closing

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func breathe() -> void:
	visible = true
	await get_tree().create_timer(9).timeout
	emit_signal("closing")
	visible = false
