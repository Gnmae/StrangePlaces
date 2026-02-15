class_name AiController
extends PlayerController

var _init_time : int = 0

func _ready() -> void:
	_init_time = Time.get_ticks_msec()
	

func _physics_process(delta: float) -> void:
	var current_time = Time.get_ticks_msec() - _init_time
	
	if current_time < 3000:
		movement_command.execute(player, MovementCommand.Params.new(Vector2.ZERO))
	elif current_time < 4000:
		movement_command.execute(player, MovementCommand.Params.new(Vector2(1, 0)))
	else:
		movement_command.execute(player, MovementCommand.Params.new(Vector2.ZERO))
