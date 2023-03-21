extends Line2D
var lmurng = RandomNumberGenerator.new()
var pointone = Vector2i(0,0)
var pointtwo = Vector2i(247, 0)
@export var e_minunits = 10000
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	lmu_line_set()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func lmu_line_set() -> void:
	var minunits = lmurng.randi_range(0,250)
	pointone.y = minunits
	pointtwo.y = minunits
	e_minunits = minunits * 350
	set_point_position(0,pointone)
	set_point_position(1,pointtwo)
