	object_const_def
	const HALLOFFAMEKANTO_OAK

HallOfFameKanto_MapScripts:
	def_scene_scripts

	def_callbacks

HallOfFameKanto_MapEvents:
	def_warp_events
	warp_event  4,  7, CHAMPIONS_ROOM, 3
	warp_event  5,  7, CHAMPIONS_ROOM, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
