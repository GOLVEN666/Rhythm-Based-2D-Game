extends AudioStreamPlayer

#this allows me to access these variables from the Inspector sidebar
@export var bpm := 155
@export var measures := 4

#here I'm creating signals
signal beat(position)
signal measure(position)

#hcreating a variable to use to track song position
var song_position = 0.0

func _ready():
	self.play()

func _process(_delta):
	if playing:
		song_position = self.get_playback_position() + AudioServer.get_time_since_last_mix()
		song_position -= AudioServer.get_output_latency()
