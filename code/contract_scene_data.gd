extends Control

signal roundover

@export var contract_number = 0
@onready var character_name = %Contract.selected_name

const CONTRACT_LIMIT = 5
const TIMER_TIME = 32
func _on_contract_timer_timeout() -> void:
	if contract_number <= CONTRACT_LIMIT:
		contract_number += 1
		$Margin/HBoxC_one/PanelC_one/LineMinUnits.lmu_line_set()
		$Margin/HBoxC_one/PanelC_one/LineAcceptancePerUnit.lapu_line_set()
		$Margin/HBoxC_one/PanelC_one/LineMaxBid.lmb_line_set()
		$Margin/HBoxC_one/VBoxC_one/Units.value = 0
		$Margin/HBoxC_one/VBoxC_one/SPunit.value = 0
		$Margin/HBoxC_one/VBoxC_one/CBid.value = 0
		$ContractTimer.start(TIMER_TIME)
	else:
		emit_signal("roundover")
		contract_number = 0


func _on_units_value_changed(value: float) -> void:
	pass # Replace with function body.


func _on_sell_per_unit_value_changed(value: float) -> void:
	pass # Replace with function body.


func _on_contract_bid_value_changed(value: float) -> void:
	pass # Replace with function body.


func _on_contract_correctentered() -> void:
	$ContractTimer.stop()
	$Popupbreather.breathe()
	await get_tree().create_timer(10).timeout
	%Contract.clear()
	%Contract.generate()
	$Margin/TextureProgressBar.progress()
