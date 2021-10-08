	object_const_def

SilphCoElevator_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCoElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, SILPH_CO_1F, 4
	warp_event  2,  3, SILPH_CO_1F, 4

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, BGEvent

	def_object_events
