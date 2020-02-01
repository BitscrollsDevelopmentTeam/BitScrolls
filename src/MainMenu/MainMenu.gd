extends Control

onready var fade = $Fade

func _ready():
	for button in $Menu/CenterRow/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
		

func _on_Button_pressed(scene_to_load):
	get_tree().change_scene(scene_to_load)
	

func _on_ExitButton_pressed() -> void:
	get_tree().quit()


func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	fade.hide()
