extends VBoxContainer
var vbc_two_rng = RandomNumberGenerator.new()
var rover = false
var line_one_one = Vector2(0, 0)
var line_two_one = Vector2(247, 0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func random_bid() -> void:
	while rover == false:
		var selectionone = vbc_two_rng.randi_range(0,100)
		var selectiontwo = vbc_two_rng.randi_range(0,100)
		var selectionthree = vbc_two_rng.randi_range(0,100)
		var selection_line = vbc_two_rng.randi_range(0, 250)
		line_one_one.y = selection_line
		line_two_one.y = selection_line
		await get_tree().create_timer(10).timeout
		$"Opponent Units".value = selectionone
		$"Means nothing".value = selectionone
		$"Graphical BS".value = selectiontwo
		$"Opponent Sell per unit".value = selectiontwo
		$"Opponent Sell per unit2".value = selectionthree
		$"haha funny sex number".value = selectionthree
		$"../PanelC_two/Examplelineone".set_point_position(0, line_one_one)
		$"../PanelC_two/Examplelinetwo".set_point_position(1, line_two_one)

func _on_contract_scene_roundover() -> void:
	rover = true


func _on_popup_menustart_id_pressed(id: int) -> void:
	random_bid()
