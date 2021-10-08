	object_const_def
	const ROUTE2TRADEHOUSE_KANTO_SCIENTIST
	const ROUTE2TRADEHOUSE_GAMEBOY_KID

Route2TradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route2TradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_2, 3
	warp_event  3,  7, ROUTE_2, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
