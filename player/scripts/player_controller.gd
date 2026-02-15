class_name PlayerController 
extends Node

var player : Player

var movement_command :=  MovementCommand.new()

func _init(_player : Player) -> void:
	self.player = _player
