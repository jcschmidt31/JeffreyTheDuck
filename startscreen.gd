extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var button: Button = $Button
	if button:
		button.connect("pressed", _on_StartButton_pressed)
	else:
		print("Button node not found")

func _on_StartButton_pressed() -> void:
	# Replace "res://game_singleplayer.tscn" with the actual path to your main scene
	get_tree().change_scene_to_file("res://game_singleplayer.tscn")
