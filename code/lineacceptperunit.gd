extends Line2D
var lapurng = RandomNumberGenerator.new()
var pointone = Vector2i(0,0)
var pointtwo = Vector2i(247, 0)
@export var e_minprice = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	lapu_line_set()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func lapu_line_set() -> void:
	var lapurand = lapurng.randf_range(0,25)
	var minprice = lapurand * 10
	var minmod = lapurng.randf_range(0.9, 4)
	pointone.y = minprice
	pointtwo.y = minprice
	e_minprice = minprice * minmod
	set_point_position(0,pointone)
	set_point_position(1,pointtwo)
