	object_const_def

RocketHideoutElevator_MapScripts:
	def_scene_scripts

	def_callbacks

RocketHideoutElevator_MapEvents:
	def_warp_events
	warp_event  2,  1, ROCKET_HIDEOUT_B1F, 3
	warp_event  3,  1, ROCKET_HIDEOUT_B1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  1, BGEVENT_READ, BGEvent

	def_object_events
