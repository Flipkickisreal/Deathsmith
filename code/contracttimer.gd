extends Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	one_shot = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_popup_menu_id_pressed(id: int) -> void:
	if id == 0:
		start(32)

