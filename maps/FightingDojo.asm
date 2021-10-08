	object_const_def
	const FIGHTINGDOJO_HIKER1
	const FIGHTINGDOJO_HIKER2
	const FIGHTINGDOJO_HIKER3
	const FIGHTINGDOJO_HIKER4
	const FIGHTINGDOJO_HIKER5
	const FIGHTINGDOJO_POKE_BALL1
	const FIGHTINGDOJO_POKE_BALL2

FightingDojo_MapScripts:
	def_scene_scripts

	def_callbacks

FightingDojo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, SAFFRON_CITY, 2
	warp_event  5, 11, SAFFRON_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3,  6, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  5,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  5,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
