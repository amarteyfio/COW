extends Area2D

var at_door

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if at_door == true:
		if Input.is_action_just_pressed("interact"):
			Transition.change_scene("res://nodes/room.tscn")


func _on_body_entered(body):
	print("Body Entered")
	at_door = true

func _on_body_exited(body):
	print("Body Exited")
	at_door = false
