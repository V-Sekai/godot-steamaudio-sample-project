extends AudioStreamPlayerSteamAudio

@onready var stream_pb : AudioStreamPlaybackSteamAudio
@onready var mysound : AudioStreamMP3 


func _ready() -> void:
	mysound = preload("res://assets/audio/lone-wolf-10374.mp3")
	play()
	var success = init_source_steamaudio()
	print("Source Initialized?" + str(success))
	stream_pb = get_stream_playback()
	var rt = stream_pb.play_stream(mysound)
	print("Playing stream " + str(rt))
