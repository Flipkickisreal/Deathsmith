extends RichTextLabel
@export var selected_name = "Al'eezra"
var rngname = RandomNumberGenerator.new()
var inputtext
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

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
		clear()
		add_text(new_text)
		if new_text == selected_name:
			add_text("Contract Signed!!\n You didn't forget your name did you?")
	
	
