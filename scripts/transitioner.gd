extends Control

class_name Transitioner

@onready var animation_tex : TextureRect = $TextureRect
@onready var animation_player : AnimationPlayer = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_tex.visible = false

func fade_out():
	animation_player.queue("fade_out")
