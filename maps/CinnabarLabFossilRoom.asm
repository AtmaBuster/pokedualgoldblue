	object_const_def
	const CINNABARLABFOSSILROOM_KANTO_SCIENTIST1
	const CINNABARLABFOSSILROOM_KANTO_SCIENTIST2

CinnabarLabFossilRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLabFossilRoom_MapEvents:
	def_warp_events
	warp_event  2,  7, CINNABAR_LAB, 5
	warp_event  3,  7, CINNABAR_LAB, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  6, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
