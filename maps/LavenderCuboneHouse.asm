	object_const_def
	const LAVENDERCUBONEHOUSE_MONSTER
	const LAVENDERCUBONEHOUSE_BRUNETTE_GIRL

LavenderCuboneHouse_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCuboneHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 5
	warp_event  3,  7, LAVENDER_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  4, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
