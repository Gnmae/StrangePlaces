extends Node3D

func _ready() -> void:
	$Player.set_controller(HumanController.new($Player))
