class_name Player extends CharacterBody3D

const SPEED : float = 10.0

@onready var controller_container = $ControllerContainer
@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D

var controller : PlayerController
var direction : Vector3
var next_position : Vector3

func set_controller(_controller : PlayerController) -> void:
	# Delete all previous controllers
	for child in controller_container.get_children():
		child.queue_free()
	
	controller = _controller
	controller_container.add_child(controller)

func _physics_process(_delta: float) -> void:
	
	if next_position and navigation_agent_3d:
		navigation_agent_3d.target_position = next_position
		
		direction = navigation_agent_3d.get_next_path_position() - global_position
		
		velocity = direction.normalized() * SPEED
	
	move_and_slide()

func move(input : Vector3) -> void:
	next_position = input
