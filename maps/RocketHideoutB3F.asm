	object_const_def
	const ROCKETHIDEOUTB3F_KANTO_ROCKET1
	const ROCKETHIDEOUTB3F_KANTO_ROCKET2
	const ROCKETHIDEOUTB3F_POKE_BALL1
	const ROCKETHIDEOUTB3F_POKE_BALL2

RocketHideoutB3F_MapScripts:
	def_scene_scripts

	def_callbacks

RocketHideoutB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  6, ROCKET_HIDEOUT_B2F, 2
	warp_event 19, 18, ROCKET_HIDEOUT_B4F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 22, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 26, 12, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 26, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 20, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
