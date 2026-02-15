class_name EmptyController
extends PlayerController

func _physics_process(_delta: float) -> void:
	movement_command.execute(player, MovementCommand.Params.new(Vector2.ZERO))
