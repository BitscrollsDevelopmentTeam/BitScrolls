extends Control


func _on_StartButton_pressed() -> void:
	get_tree().change_scene("res://src/Levels/World.tscn")


func _on_OptionsButton_pressed() -> void:
	get_tree().change_scene("res://src/OptionsMenu/OptionsMenu.tscn")


func _on_ExitButton_pressed() -> void:
	get_node("ExitScreen").visible = true
