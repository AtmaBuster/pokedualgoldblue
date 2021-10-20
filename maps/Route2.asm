	object_const_def
	const ROUTE2_POKE_BALL1
	const ROUTE2_POKE_BALL2

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

Route2_DirectionSignScript:
	jumptext .Text
.Text:
	text "ROUTE 2"
	line "VIRIDIAN CITY -"
	cont "PEWTER CITY"
	done

Route2_CaveSignScript:
	jumptext .Text
.Text:
	text "DIGLETT's CAVE"
	done

Route2_MoonStoneScript:
	itemball MOON_STONE

Route2_HPUpScript:
	itemball HP_UP

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  9, DIGLETTS_CAVE_ROUTE_2, 1
	warp_event  3, 11, VIRIDIAN_FOREST_NORTH_GATE, 2
	warp_event 15, 19, ROUTE_2_TRADE_HOUSE, 1
	warp_event 16, 35, ROUTE_2_GATE, 2
	warp_event 15, 39, ROUTE_2_GATE, 3
	warp_event  3, 43, VIRIDIAN_FOREST_SOUTH_GATE, 3

	def_coord_events

	def_bg_events
	bg_event  5, 65, BGEVENT_READ, Route2_DirectionSignScript
	bg_event 11, 11, BGEVENT_READ, Route2_CaveSignScript

	def_object_events
	object_event 13, 54, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2_MoonStoneScript, EVENT_ROUTE_2_MOON_STONE
	object_event 13, 45, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2_HPUpScript, EVENT_ROUTE_2_HP_UP
