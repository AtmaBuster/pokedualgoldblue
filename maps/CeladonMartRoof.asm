	object_const_def
	const CELADONMARTROOF_KANTO_SUPER_NERD
	const CELADONMARTROOF_LITTLE_GIRL

CeladonMartRoof_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMartRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  2, CELADON_MART_5F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  4, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  5, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
