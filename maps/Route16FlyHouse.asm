	object_const_def
	const ROUTE16FLYHOUSE_BRUNETTE_GIRL
	const ROUTE16FLYHOUSE_KANTO_BIRD

Route16FlyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route16FlyHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_16, 9
	warp_event  3,  7, ROUTE_16, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  4, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
