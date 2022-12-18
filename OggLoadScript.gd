extends AudioStreamPlayer2D

var music_path = 'res://Symphony-Nr-5-in-C-Minor-(1st-Movement).ogg'

const exported_path_in_pck = 'res://.import/Symphony-Nr-5-in-C-Minor-(1st-Movement).ogg-ddee16cf28ebd776db9cd88d611ab1f8.oggstr'


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if File.new().file_exists(music_path):
		var track = load(music_path) 
		track.set_loop(false)
		self.stream = track
		self.play()
		print_debug("path valid, music is playing")
	else:
		print_debug(music_path + " not found")
		if File.new().file_exists(exported_path_in_pck):
			prints(exported_path_in_pck, "was found instead.")
