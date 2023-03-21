extends Line2D
var lmbrng = RandomNumberGenerator.new()
var pointone = Vector2i(0,0)
var pointtwo = Vector2i(247, 0)
@export var e_maxbid = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	lmb_line_set()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func lmb_line_set() -> void:
	var maxbid = lmbrng.randi_range(0,250)
	var maxmod = lmbrng.randf_range(30, 350)
	pointone.y = maxbid
	pointtwo.y = maxbid
	e_maxbid = maxbid * maxmod
	set_point_position(0,pointone)
	set_point_position(1,pointtwo)
