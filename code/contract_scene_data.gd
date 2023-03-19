extends Control

signal roundover

@export var contract_number = 0

const CONTRACT_LIMIT = 5


func _on_contract_timer_timeout() -> void:
	if contract_number <= CONTRACT_LIMIT:
		contract_number += 1
	else:
		emit_signal("roundover")



func _on_units_value_changed(value: float) -> void:
	pass # Replace with function body.


func _on_sell_per_unit_value_changed(value: float) -> void:
	pass # Replace with function body.


func _on_contract_bid_value_changed(value: float) -> void:
	pass # Replace with function body.
