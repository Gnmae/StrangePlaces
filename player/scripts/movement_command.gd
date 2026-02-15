class_name MovementCommand extends Command

class Params:
	var input : Vector3
	
	func _init(_input : Vector3) -> void:
		self.input = _input

func execute(player: Player, data: Object = null) -> void:
	if data is Params:
		player.move(data.input)
