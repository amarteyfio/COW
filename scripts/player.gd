extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D


var npc_in_range
var npc_name


func cartesian_to_isometric(cartesian):
	return Vector2(cartesian.x - cartesian.y, (cartesian.x + cartesian.y)/2)


func _process(delta):
	#conversation
	if npc_in_range == true:
		if Input.is_action_just_pressed("interact"):
			print("Start Dialogue")
			if npc_name == "Character2":
				DialogueManager.show_example_dialogue_balloon(load("res://dialogues/main.dialogue"), "start")
			elif npc_name == "Character1":
				DialogueManager.show_example_dialogue_balloon(load("res://dialogues/char1.dialogue"), "start")
			return
			
			
	
	
	#input
	var direction = Input.get_vector("right", "down", "up", "left")
	velocity = cartesian_to_isometric(direction * 3000 * delta)
	move_and_slide()


	if Input.is_action_pressed("right"):
		_animated_sprite.flip_h = true
		_animated_sprite.play("up")
	elif Input.is_action_pressed("left"):
		_animated_sprite.flip_h = true
		_animated_sprite.play("down")
	elif Input.is_action_pressed("up"):
		if _animated_sprite.flip_h:
			_animated_sprite.flip_h = false
		_animated_sprite.play("up")
	elif Input.is_action_pressed("down"):
		if _animated_sprite.flip_h:
			_animated_sprite.flip_h = false
		_animated_sprite.play("down")
	else:
		_animated_sprite.stop()


func _on_detection_area_body_entered(body):
	if body.has_method("can_speak_to_player"):
		npc_in_range = true
		npc_name = body.name
		print(npc_in_range)
	



func _on_detection_area_body_exited(body):
	if body.has_method("can_speak_to_player"):
		npc_in_range = false
	


