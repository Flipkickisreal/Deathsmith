extends Line2D

@export var unitsvzero = Vector2(96,0)
@export var spunit = Vector2(180,0)
@export var bunit = Vector2(247, 0)
var ouvc_max = Vector2i(96, 250)
var ouvc_moderator = 100
var ospuvc_moderator = 6
var opsuvc_max = Vector2i(180, 250)
var ocbvc_moderator = 500
var ocbvc_max = Vector2i(247, 250)
const LINE_LIMIT = 250

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_units_value_changed(uvalue: float) -> void:
	var ouvc_check = uvalue / ouvc_moderator
	if ouvc_check < LINE_LIMIT:
		unitsvzero.y = uvalue / ouvc_moderator
		set_point_position(1, unitsvzero)
	else:
		ouvc_moderator + 10
		ouvc_check = uvalue / ouvc_moderator
		if ouvc_check < LINE_LIMIT:
			unitsvzero.y = uvalue / ouvc_moderator
			set_point_position(1, unitsvzero)
		else:
			ouvc_moderator + 10
			ouvc_check = uvalue / ouvc_moderator
			if ouvc_check < LINE_LIMIT:
				unitsvzero.y = uvalue / ouvc_moderator
				set_point_position(1, unitsvzero)
			else:
				set_point_position(1, ouvc_max)
				ouvc_moderator = 200
			


func _on_sell_per_unit_value_changed(svalue: float) -> void:
	var ospuvc_check = svalue / ospuvc_moderator
	if ospuvc_check < LINE_LIMIT:
		spunit.y = svalue / ospuvc_moderator
		set_point_position(2, spunit)
	else:
		ospuvc_moderator += 1
		set_point_position(2, opsuvc_max)


func _on_contract_bid_value_changed(bvalue: float) -> void:
	var ocbvc_check = bvalue / ocbvc_moderator
	if ocbvc_check < LINE_LIMIT:
		bunit.y = bvalue / ocbvc_moderator
		set_point_position(3, bunit)
	else:
		ocbvc_moderator += 50
		set_point_position(3, ocbvc_max)


func _on_contract_timer_timeout() -> void:
	unitsvzero.y = 0
	spunit.y = 0
