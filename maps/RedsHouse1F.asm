	object_const_def
	const REDSHOUSE1F_KANTO_MOM

RedsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

RedsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 1
	warp_event  3,  7, PALLET_TOWN, 1
	warp_event  7,  1, REDS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_KANTO_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
