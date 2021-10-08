	object_const_def
	const CELADONMANSION3F_BIKE_SHOP_CLERK
	const CELADONMANSION3F_KANTO_CLERK
	const CELADONMANSION3F_KANTO_SUPER_NERD
	const CELADONMANSION3F_SILPH_WORKER

CeladonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, CELADON_MANSION_2F, 1
	warp_event  7,  1, CELADON_MANSION_ROOF, 1
	warp_event  2,  1, CELADON_MANSION_ROOF, 2
	warp_event  4,  1, CELADON_MANSION_2F, 4

	def_coord_events

	def_bg_events
	bg_event  1,  3, BGEVENT_READ, BGEvent
	bg_event  4,  3, BGEVENT_READ, BGEvent
	bg_event  1,  6, BGEVENT_READ, BGEvent
	bg_event  4,  9, BGEVENT_READ, BGEvent

	def_object_events
	object_event  0,  4, SPRITE_BIKE_SHOP_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  4, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  0,  7, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  3, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
