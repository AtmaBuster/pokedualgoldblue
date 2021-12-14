	object_const_def

UndergroundPathNorthSouth_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathNorthSouth_HiddenNugget:
	hiddenitem NUGGET, EVENT_UNDERGROUND_PATH_HIDDEN_NUGGET

UndergroundPathNorthSouth_HiddenElixer:
	hiddenitem ELIXER, EVENT_UNDERGROUND_PATH_HIDDEN_ELIXER

UndergroundPathNorthSouth_MapEvents:
	def_warp_events
	warp_event  5,  2, UNDERGROUND_PATH_ROUTE_5, 3
	warp_event  2, 39, UNDERGROUND_PATH_ROUTE_6, 3

	def_coord_events

	def_bg_events
	bg_event  3,  4, BGEVENT_ITEM, UndergroundPathNorthSouth_HiddenNugget
	bg_event  4, 34, BGEVENT_ITEM, UndergroundPathNorthSouth_HiddenElixer

	def_object_events
