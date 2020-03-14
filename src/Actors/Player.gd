extends KinematicBody2D

onready var anim = $AnimatedSprite
var speed: = Vector2(6000, 6000)
var direction = "down"

var veloctiy: = Vector2(0, 0)


func _physics_process(delta: float) -> void:
	# Movement
	var move = handle_input()
	if move.x != 0 or move.y != 0:
		veloctiy = speed * move
	else:
		handle_idle(direction)
	
	veloctiy = move_and_slide(veloctiy * delta)
	
	
func handle_idle(dir: String) -> void:
	if dir == "down":
		anim.play("idle down")
	elif dir == "up":
		anim.play("idle up")
	elif dir == "left":
		anim.play("idle left")
	elif dir == "right":
		anim.play("idle right")


func handle_input() -> Vector2:
	var out: = Vector2.ZERO
	
	# X axis
	if Input.is_action_pressed("move_left"):
		anim.play("run left")
		out.x += -1
		direction = "left"
	elif Input.is_action_pressed("move_right"):
		anim.play("run right")
		out.x += 1
		direction = "right"
		
	# Y axis
	elif Input.is_action_pressed("move_up"):
		anim.play("run up")
		out.y += -1
		direction = "up"
	elif Input.is_action_pressed("move_down"):
		anim.play("run down")
		out.y += 1
		direction = "down"
	
	return out
