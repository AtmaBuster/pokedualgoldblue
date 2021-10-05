	object_const_def

SilphCo11F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo11F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  0, SILPH_CO_10F, 2
	warp_event 13,  0, SILPH_CO_ELEVATOR, 1
	warp_event  5,  5, SILPH_CO_11F, 10 ; LAST_MAP?
	warp_event  3,  2, SILPH_CO_7F, 4

	def_coord_events

	def_bg_events

	def_object_events
