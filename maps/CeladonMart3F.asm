	object_const_def

CeladonMart3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  1, CELADON_MART_4F, 1
	warp_event 16,  1, CELADON_MART_2F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_coord_events

	def_bg_events

	def_object_events
