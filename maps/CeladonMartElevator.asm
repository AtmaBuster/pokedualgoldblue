	object_const_def

CeladonMartElevator_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMartElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, CELADON_MART_1F, 6
	warp_event  2,  3, CELADON_MART_1F, 6

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, BGEvent

	def_object_events
