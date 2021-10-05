	object_const_def

CeladonMart2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  1, CELADON_MART_1F, 5
	warp_event 16,  1, CELADON_MART_3F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_coord_events

	def_bg_events

	def_object_events
