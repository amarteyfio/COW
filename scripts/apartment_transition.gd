extends Area2D

@export var transitioner : Transitioner

var entered

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("interact"):
			print("Changing Scene")
			Transition.change_scene("res://nodes/apartment.tscn")
			
			


func _on_body_entered(body: PhysicsBody2D):
	print("Press Enter")
	entered = true


func _on_body_exited(body):
	entered = false
