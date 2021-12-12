	object_const_def
	const LANCESROOMKANTO_LANCE

LancesRoomKanto_MapScripts:
	def_scene_scripts

	def_callbacks

LancesRoomKanto_MapEvents:
	def_warp_events
	warp_event 24, 16, AGATHAS_ROOM, 3
	warp_event  5,  0, CHAMPIONS_ROOM, 1
	warp_event  6,  0, CHAMPIONS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
