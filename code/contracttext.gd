extends RichTextLabel

signal correctentered
@export var selected_name = "Al'eezra"
var rngname = RandomNumberGenerator.new()
var part_one = "Impossible"
var part_two = "Impossigun"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	generate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func generate() -> void:
	add_text("Contract to manufacture a:")
	var part_one_rand = rngname.randi_range(0, 5)
	var part_two_rand = rngname.randi_range(0, 5)
	if part_one_rand == 0:
		part_one = "Massive"
	elif part_one_rand == 1:
		part_one = "Holy"
	elif part_one_rand == 2:
		part_one = "Shattering"
	elif part_one_rand == 3:
		part_one = "Flaming"
	elif part_one_rand == 4:
		part_one = "Sharp"
	elif part_one_rand == 5:
		part_one = "Shocking"
	else:
		part_one = "Impossible"
		print("generation debug required")
	if part_two_rand == 0:
		part_two = "Rifle"
	elif part_two_rand == 1:
		part_two = "Shotgun"
	elif part_two_rand == 2:
		part_two = "Telsa"
	elif part_two_rand == 3:
		part_two = "Laser"
	elif part_two_rand == 4:
		part_two = "Pistol"
	elif  part_two_rand == 5:
		part_two = "RPG"
	else:
		part_two = "Impossible"
		print("generation debug required")
	add_text(part_one)
	add_text(" ")
	add_text(part_two)

func name_select() -> String:
	var selector = rngname.randi_range(0, 13)
	if selector == 0:
		return selected_name
	elif selector == 1:
		selected_name = "Rak'aesh"
		return selected_name
	elif selector == 2:
		selected_name = "Popwopo"
		return selected_name
	elif selector == 3:
		selected_name = "Xlubu"
		return selected_name
	elif selector == 4:
		selected_name = "Apragra"
		return selected_name
	elif selector == 5:
		selected_name = "Gromunder"
		return selected_name
	elif selector == 6:
		selected_name = "Fraggle"
		return selected_name
	elif selector == 7:
		selected_name = "Borpa"
		return selected_name
	elif selector == 8:
		selected_name = "Ukrukanock"
		return selected_name
	elif selector == 9:
		selected_name = "Wezzhu"
		return selected_name
	elif selector == 10:
		selected_name = "Q'Jgeon"
		return selected_name
	elif selector == 11:
		selected_name = "Pidgeoneoneon"
		return selected_name
	elif selector == 12:
		selected_name = "Crus'hoboy"
		return selected_name
	elif  selector == 13:
		selected_name = "Spotlight"
		return selected_name
	else:
		return "ERR'OR_the_bug&terribbible"

func _on_signname_text_changed(new_text: String) -> void:
	if new_text == selected_name:
		add_text("\nSIGN HERE")



func _on_signname_text_submitted(new_text: String) -> void:
	if new_text == selected_name:
		remove_paragraph(-1)
		add_text("Bound, Signed, And Notorized")
		emit_signal("correctentered")
