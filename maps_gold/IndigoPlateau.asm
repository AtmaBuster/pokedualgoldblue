	object_const_def

IndigoPlateau_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	endcallback

IndigoPlateau_MapEvents:
	def_warp_events
IF DEF(_GOLD)
	warp_event  9,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event 10,  5, INDIGO_PLATEAU_POKECENTER_1F, 2
ELIF DEF(_BLUE)
	warp_event  9,  5, INDIGO_PLATEAU_LOBBY, 1
	warp_event 10,  5, INDIGO_PLATEAU_LOBBY, 2
ENDC

	def_coord_events

	def_bg_events

	def_object_events
