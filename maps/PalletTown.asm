	object_const_def
	const PALLETTOWN_OAK
	const PALLETTOWN_GIRL
	const PALLETTOWN_FISHER

PalletTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_PALLET
	endcallback

PalletTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  5, SPRITE_OAK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  8, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11, 14, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
