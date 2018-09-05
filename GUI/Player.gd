extends Spatial

var selection = 0

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_ColorPickerButton_color_changed(color):
	var material
	if selection == 0:
		material = $Armature/Skeleton/Body.get_mesh().surface_get_material(0)
	elif selection == 1:
		material = $Armature/Skeleton/Shirt.get_mesh().surface_get_material(0)
	elif selection == 2:
		material = $Armature/Skeleton/Pants.get_mesh().surface_get_material(0)
	elif selection == 3:
		material = $Armature/Skeleton/Shoe.get_mesh().surface_get_material(0)
	else:
		material = $"Armature/Skeleton/Body.001".get_mesh().surface_get_material(0)
	material.set_albedo(color)
	

func _on_ItemList_item_activated(index):
	selection = index
