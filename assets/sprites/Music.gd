extends Node
@onready var music_player = $AudioStreamPlayer


func _ready():
	# Load the AudioStreamSample
	const JUHANI_JUNKALA__RETRO_GAME_MUSIC_PACK__ENDING = preload("res://assets/music/Juhani Junkala [Retro Game Music Pack] Ending.wav")
	# Check if the audio_stream is an instance of AudioStreamSample
	if audio_stream is JUHANI_JUNKALA__RETRO_GAME_MUSIC_PACK__ENDING:
		audio_stream = JUHANI_JUNKALA__RETRO_GAME_MUSIC_PACK__ENDING.duplicate()  # Make the audio stream editable
		audio_stream.loop_mode = AudioStreamSample.LOOP_PING_PONG  # Set the loop mode
		music_player.stream = audio_stream
	
	# Play the music
	music_player.play()
