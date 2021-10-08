	object_const_def
	const DIGLETTSCAVEROUTE2_FISHING_GURU

DiglettsCaveRoute2_MapScripts:
	def_scene_scripts

	def_callbacks

DiglettsCaveRoute2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_2, 1
	warp_event  3,  7, ROUTE_2, 1
	warp_event  4,  4, DIGLETTS_CAVE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
