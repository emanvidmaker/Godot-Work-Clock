@tool
extends EditorPlugin
const CLOCK = preload("res://addons/workclock/clock.tscn")
var instance:Node
const dock = EditorPlugin.CONTAINER_INSPECTOR_BOTTOM
func _enter_tree() -> void:
	instance = CLOCK.instantiate()
	add_control_to_container(
		dock,
		instance
		)
		
		## ⏰
		
		
	# Initialization of the plugin goes here.
	pass


func _exit_tree() -> void:
	remove_control_from_container(
		dock,
		instance
		)
	instance.queue_free()
	# Clean-up of the plugin goes here.
	pass
