	object_const_def

UndergroundPathWestEast_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathWestEast_HiddenNugget:
	hiddenitem NUGGET, EVENT_UNDERGROUND_PATH_HIDDEN_NUGGET

UndergroundPathWestEast_HiddenElixer:
	hiddenitem ELIXER, EVENT_UNDERGROUND_PATH_HIDDEN_ELIXER

UndergroundPathWestEast_MapEvents:
	def_warp_events
	warp_event  2,  5, UNDERGROUND_PATH_ROUTE_7, 3
	warp_event 47,  2, UNDERGROUND_PATH_ROUTE_8, 3

	def_coord_events

	def_bg_events
	bg_event 12,  2, BGEVENT_ITEM, UndergroundPathWestEast_HiddenNugget
	bg_event 21,  5, BGEVENT_ITEM, UndergroundPathWestEast_HiddenElixer

	def_object_events
