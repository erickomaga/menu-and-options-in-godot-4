extends Control

							#---Thanks!---#
					#Thanks for using my plugin!
					#For more tips subscribe to:
					#https://www.youtube.com/@Sr.Erickxz

@onready var music = $music
var sample = false

func _ready():
	pass 

func _process(delta):
	pass

#---Menu---#

func _on_play_pressed():
	print("Scene changed!")
#	get_tree().change_scene_to_file(res://your_folder/scene)
	pass 

func _on_options_pressed():
	if sample:
		$options.hide()
		Engine.time_scale = 1
	else:
		$options.show()
		$menu.hide()
		Engine.time_scale = 0
	sample = !sample
	pass

func _on_exit_pressed():
	get_tree().quit()
	pass

#---Options---#
	#---Video---#
func _on_back_pressed():
	if sample:
		$options.show()
		Engine.time_scale = 1
	else:
		$options.hide()
		$menu.show()
		Engine.time_scale = 0
	sample = !sample
	pass

func _on_fullscreen_toggled(toggled_on: bool) -> void:
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	pass

	#---Audio---#

func set_volume(idx, value):
	if value == 0:
		AudioServer.set_bus_mute(idx, true)  
	else:
		AudioServer.set_bus_mute(idx, false)
		var db_value = lerp(-40, 0, value / 10.0)  
		AudioServer.set_bus_volume_db(idx, db_value)
	pass
	
func _on_master_slider_value_changed(value):
	set_volume(0,value)
	pass 

func _on_music_slider_value_changed(value):
	set_volume(1,value)
	pass

func _on_sfx_slider_value_changed(value):
	set_volume(2,value)
	pass
