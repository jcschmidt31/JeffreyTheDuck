extends Control

func _on_RestartButton_pressed() -> void:
	get_tree().reload_current_scene()

func _on_QuitButton_pressed() -> void:
	get_tree().quit()
