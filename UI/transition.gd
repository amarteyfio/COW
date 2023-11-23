extends CanvasLayer

func change_scene(target: String) -> void:
	$Fade.play("fade")
	await $Fade.animation_finished
	get_tree().change_scene_to_file(target)
	$Fade.play_backwards("fade")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
