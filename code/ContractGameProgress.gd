extends TextureProgressBar

const BAR_PROGRESS = 64
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func progress() -> void:
	value = 0
	for I in BAR_PROGRESS:
		await get_tree().create_timer(0.5).timeout
		value += 1



func _on_contract_timer_timeout() -> void:
	value = 0
	progress()


func _on_popup_menu_id_pressed(id: int) -> void:
	progress()
