	object_const_def
	const DAYCAREKANTO_GENTLEMAN

DayCareKanto_MapScripts:
	def_scene_scripts

	def_callbacks

DayCareKanto_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_5, 5
	warp_event  3,  7, ROUTE_5, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
