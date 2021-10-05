	object_const_def

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
