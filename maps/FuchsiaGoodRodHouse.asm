	object_const_def
	const FUCHSIAGOODRODHOUSE_FISHING_GURU

FuchsiaGoodRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaGoodRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, FUCHSIA_CITY, 9
	warp_event  2,  7, FUCHSIA_CITY, 8
	warp_event  3,  7, FUCHSIA_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
