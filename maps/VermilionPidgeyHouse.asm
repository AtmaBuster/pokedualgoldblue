	object_const_def
	const VERMILIONPIDGEYHOUSE_KANTO_YOUNGSTER
	const VERMILIONPIDGEYHOUSE_KANTO_BIRD
	const VERMILIONPIDGEYHOUSE_PAPER

VermilionPidgeyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPidgeyHouse_KidScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm getting my"
	line "PIDGEY to fly a"
	cont "letter to SAFFRON"
	cont "in the north!"
	done

VermilionPidgeyHouse_PidgeyScript:
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

VermilionPidgeyHouse_LetterScript:
	jumptext .Text
.Text:
	text "Dear PIPPI, I hope"
	line "to see you soon."

	para "I heard SAFFRON"
	line "has problems with"
	cont "TEAM ROCKET."

	para "VERMILION appears"
	line "to be safe."
	done

VermilionPidgeyHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 5
	warp_event  3,  7, VERMILION_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPidgeyHouse_KidScript, -1
	object_event  3,  5, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPidgeyHouse_PidgeyScript, -1
	object_event  4,  3, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPidgeyHouse_LetterScript, -1
