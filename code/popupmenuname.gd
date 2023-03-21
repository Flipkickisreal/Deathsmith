extends PopupMenu

@onready var myname = %Contract.name_select()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_item_text(0, myname)
	popup()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
