extends Control


func _ready() -> void:
	$ExitScreen.hide()


func _on_StartButton_pressed() -> void:
	get_tree().change_scene("res://src/Levels/World.tscn")


func _on_OptionsButton_pressed() -> void:
	get_tree().change_scene("res://src/OptionsMenu/OptionsMenu.tscn")


func _on_ExitButton_pressed() -> void:
	$ExitScreen.visible = true
