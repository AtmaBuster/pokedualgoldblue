	object_const_def
	const COPYCATSHOUSE2F_BRUNETTE_GIRL
	const COPYCATSHOUSE2F_KANTO_BIRD1
	const COPYCATSHOUSE2F_MONSTER
	const COPYCATSHOUSE2F_KANTO_BIRD2
	const COPYCATSHOUSE2F_FAIRY

CopycatsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

CopycatsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  1, COPYCATS_HOUSE_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  6, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  1, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  0, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  6, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
