class_name HumanController
extends PlayerController

func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("lmb"):
		var cam = get_tree().get_first_node_in_group("Camera")
		var new_object = cam.get_object_at_mouse_position()
		if new_object:
			if new_object.collider.is_in_group("floor"):
				var movement_input = new_object.position
				movement_command.execute(player, MovementCommand.Params.new(movement_input))
