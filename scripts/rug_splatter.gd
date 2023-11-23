extends Area2D

var is_in_area

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_in_area == true:
		if Input.is_action_just_pressed("interact"):
			print("Investigating")
			DialogueManager.show_example_dialogue_balloon(load("res://dialogues/clue.dialogue"), "blood_on_carpet")


func _on_body_entered(body):
	is_in_area = true


func _on_body_exited(body):
	is_in_area = false
