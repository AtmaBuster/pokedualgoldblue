	object_const_def
	const CELADONMART1F_OLD_LINK_RECEPTIONIST

CeladonMart1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_CITY, 1
	warp_event  3,  7, CELADON_CITY, 1
	warp_event 16,  7, CELADON_CITY, 2
	warp_event 17,  7, CELADON_CITY, 2
	warp_event 12,  1, CELADON_MART_2F, 1
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  3, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
