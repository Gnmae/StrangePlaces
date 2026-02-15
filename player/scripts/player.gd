class_name Player extends CharacterBody3D

const SPEED : float = 400.0

@onready var controller_container = $ControllerContainer

var controller : PlayerController
var input := Vector2.ZERO


func set_controller(_controller : PlayerController) -> void:
	# Delete all previous controllers
	for child in controller_container.get_children():
		child.queue_free()
	
	controller = _controller
	controller_container.add_child(controller)

func _physics_process(_delta: float) -> void:
	
	move_and_slide()

func move(_input : Vector2) -> void:
	input = _input
