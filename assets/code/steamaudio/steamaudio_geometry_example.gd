extends SteamAudioGeometry


func _ready():
	var mesh = get_parent().mesh
	self.create_geometry(mesh,self.global_transform)
	self.register_geometry()
