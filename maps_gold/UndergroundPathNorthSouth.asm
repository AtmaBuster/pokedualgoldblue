	object_const_def

UndergroundPathNorthSouth_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathNorthSouth_HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_UNDERGROUND_PATH_HIDDEN_FULL_RESTORE

UndergroundPathNorthSouth_HiddenXSpecial:
	hiddenitem X_SPECIAL, EVENT_UNDERGROUND_PATH_HIDDEN_X_SPECIAL

UndergroundPathNorthSouth_MapEvents:
	def_warp_events
	warp_event  5,  2, UNDERGROUND_PATH_ROUTE_5, 3
	warp_event  2, 39, UNDERGROUND_PATH_ROUTE_6, 3

	def_coord_events

	def_bg_events
	bg_event  3,  4, BGEVENT_ITEM, UndergroundPathNorthSouth_HiddenFullRestore
	bg_event  4, 34, BGEVENT_ITEM, UndergroundPathNorthSouth_HiddenXSpecial

	def_object_events
