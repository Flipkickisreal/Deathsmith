extends Line2D
@export var unitsvzero = Vector2(0,0)
@export var spunit= Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_units_value_changed(uvalue: float) -> void:
	unitsvzero.y = uvalue / 1000
	set_point_position(1, unitsvzero)


func _on_sell_per_unit_value_changed(svalue: float) -> void:
	pass


func _on_contract_bid_value_changed(bvalue: float) -> void:
	pass # Replace with function body.
