@icon("res://addons/menu and options/gear.png")
@tool
extends EditorPlugin

							#---Thanks!---#
						#Thanks for using my plugin!
						#For more tips subscribe to:
						#https://www.youtube.com/@Sr.Erickxz

func _ready():
	if Engine.is_editor_hint():
		print("I'm running!")
	else:
		print("I'm not running!")


func _enter_tree():
	# Initialization of the plugin goes here.
	pass


func _exit_tree():
	# Clean-up of the plugin goes here.
	pass
