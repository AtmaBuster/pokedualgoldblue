	object_const_def
	const SSANNEKITCHEN_COOK1
	const SSANNEKITCHEN_COOK2
	const SSANNEKITCHEN_COOK3
	const SSANNEKITCHEN_COOK4
	const SSANNEKITCHEN_COOK5
	const SSANNEKITCHEN_COOK6
	const SSANNEKITCHEN_COOK7

SSAnneKitchen_MapScripts:
	def_scene_scripts

	def_callbacks

SSAnneKitchen_MapEvents:
	def_warp_events
	warp_event  6,  0, SS_ANNE_1F, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  8, SPRITE_COOK, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  8, SPRITE_COOK, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  9,  7, SPRITE_COOK, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 13,  6, SPRITE_COOK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 13,  8, SPRITE_COOK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 13, 10, SPRITE_COOK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11, 13, SPRITE_COOK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
