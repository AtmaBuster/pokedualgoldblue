	object_const_def

Route5_MapScripts:
	def_scene_scripts

	def_callbacks

Route5_UndergroundSignScript:
	jumptext .Text
.Text:
	text "UNDERGROUND PATH"
	line "CERULEAN CITY -"
	cont "VERMILION CITY"
	done

Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 29, ROUTE_5_GATE, 4
	warp_event  9, 29, ROUTE_5_GATE, 3
	warp_event 10, 33, ROUTE_5_GATE, 1
	warp_event 17, 27, UNDERGROUND_PATH_ROUTE_5, 1
	warp_event 10, 21, DAY_CARE_KANTO, 1

	def_coord_events

	def_bg_events
	bg_event 17, 29, BGEVENT_READ, Route5_UndergroundSignScript

	def_object_events
