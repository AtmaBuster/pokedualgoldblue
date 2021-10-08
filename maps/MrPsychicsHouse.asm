	object_const_def
	const MRPSYCHICSHOUSE_FISHING_GURU

MrPsychicsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrPsychicsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 8
	warp_event  3,  7, SAFFRON_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
