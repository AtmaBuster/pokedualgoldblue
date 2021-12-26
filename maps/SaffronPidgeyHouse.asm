	object_const_def
	const SAFFRONPIDGEYHOUSE_BRUNETTE_GIRL
	const SAFFRONPIDGEYHOUSE_KANTO_BIRD
	const SAFFRONPIDGEYHOUSE_KANTO_YOUNGSTER
	const SAFFRONPIDGEYHOUSE_PAPER

SaffronPidgeyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronPidgeyHouse_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "Thank you for"
	line "writing. I hope"
	cont "to see you soon!"

	para "Hey! Don't look"
	line "at my letter!"
	done

SaffronPidgeyHouse_PidgeyScript:
	faceplayer
	opentext
	writetext .Text
	cry PIDGEY
	waitsfx
	closetext
	end

.Text:
	text "PIDGEY: Kurukkoo!"
	done

SaffronPidgeyHouse_KidScript:
	jumptextfaceplayer .Text
.Text:
	text "The COPYCAT is"
	line "cute! I'm getting"
	cont "her a # DOLL!"
	done

SaffronPidgeyHouse_LetterScript:
	jumptext .Text
.Text:
	text "I was given a PP"
	line "UP as a gift."

	para "It's used for"
	line "increasing the PP"
	cont "of techniques!"
	done

SaffronPidgeyHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 4
	warp_event  3,  7, SAFFRON_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPidgeyHouse_GirlScript, -1
	object_event  0,  4, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPidgeyHouse_PidgeyScript, -1
	object_event  4,  1, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPidgeyHouse_KidScript, -1
	object_event  3,  3, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPidgeyHouse_LetterScript, -1
