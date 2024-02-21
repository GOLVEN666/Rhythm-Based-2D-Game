extends AudioStreamPlayer

#this allows me to access these variables from the Inspector sidebar
@export var bpm := 155
@export var beats_per_measure := 4



#creating a variable to use to track song position
var song_position = 0.0
var song_position_in_beats = 1
var sec_per_beat = 60.0 / bpm
var last_reported_beat = 0
var measure_position = 1

#here I'm creating signals
signal beat(position)
signal measure_beat(position)

func _ready():
	self.play()

func _physics_process(_delta):
	if playing:
		song_position = self.get_playback_position() + AudioServer.get_time_since_last_mix()
		song_position -= AudioServer.get_output_latency()
		song_position_in_beats = int(floor(song_position / sec_per_beat))
		_report_beat()

func _report_beat():
	if last_reported_beat < song_position_in_beats:
		if measure_position > beats_per_measure:
			measure_position = 1
		emit_signal("beat", song_position_in_beats)
		emit_signal("measure_beat", measure_position)
		last_reported_beat = song_position_in_beats
		measure_position += 1

func play_from_beat(start_beat):
	play()
	seek(start_beat * sec_per_beat)
	measure_position = start_beat % beats_per_measure
