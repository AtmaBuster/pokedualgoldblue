	object_const_def
	const VERMILIONOLDRODHOUSE_FISHING_GURU

VermilionOldRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionOldRodHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 9
	warp_event  3,  7, VERMILION_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
