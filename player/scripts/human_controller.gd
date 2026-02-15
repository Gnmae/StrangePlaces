class_name HumanController
extends PlayerController

func _physics_process(_delta: float) -> void:
	var movement_input = Vector2(Input.get_axis("move_left", "move_right"), Input.get_axis("move_up", "move_down"))
	movement_command.execute(player, MovementCommand.Params.new(movement_input))
