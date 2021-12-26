	object_const_def
	const SILPHCO8F_SILPH_WORKER
	const SILPHCO8F_KANTO_ROCKET1
	const SILPHCO8F_KANTO_SCIENTIST
	const SILPHCO8F_KANTO_ROCKET2

SilphCo8F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_8F_DOOR_1
	iftrue .SkipDoor1
	changeblock 6, 8, $5f
.SkipDoor1:
	endcallback

SilphCo8F_Door1:
	cardkeydoor 3, 4, $0e, EVENT_SILPH_CO_8F_DOOR_1

TrainerRocketGrunt34:
	trainer ROCKET_GEN1, GRUNT34_GEN1, EVENT_BEAT_ROCKET_GRUNT34_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "That's as far as"
	line "you'll go!"
	done

.BeatenText:
	text "Not"
	line "enough grit!"
	done

.AfterText:
	text "If you don't turn"
	line "back, I'll call"
	cont "for backup!"
	done

TrainerScientistParker:
	trainer SCIENTIST_GEN1, PARKER_GEN1, EVENT_BEAT_SCIENTIST_PARKER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You're causing us"
	line "problems!"
	done

.BeatenText:
	text "Huh?"
	line "I lost?"
	done

.AfterText:
	text "So, what do you"
	line "think of SILPH"
	cont "BUILDING's maze?"
	done

TrainerRocketGrunt35:
	trainer ROCKET_GEN1, GRUNT35_GEN1, EVENT_BEAT_ROCKET_GRUNT35_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I am one of the 4"
	line "ROCKET BROTHERS!"
	done

.BeatenText:
	text "Whoo!"
	line "Oh brothers!"
	done

.AfterText:
	text "I'll leave you up"
	line "to my brothers!"
	done

SilphCo8F_WorkerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI2_GEN1
	iftrue .After
	writetext .Text1
	waitbutton
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "I wonder if SILPH"
	line "is finished..."
	done

.Text2:
	text "Thanks for saving"
	line "us!"
	done

SilphCo8F_MapEvents:
	def_warp_events
	warp_event 16,  0, SILPH_CO_9F, 2
	warp_event 14,  0, SILPH_CO_7F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3, 11, SILPH_CO_8F, 7
	warp_event  3, 15, SILPH_CO_2F, 5
	warp_event 11,  5, SILPH_CO_2F, 6
	warp_event 11,  9, SILPH_CO_8F, 4

	def_coord_events

	def_bg_events
	bg_event  7,  8, BGEVENT_KEYDOOR, SilphCo8F_Door1
	bg_event  7,  9, BGEVENT_KEYDOOR, SilphCo8F_Door1

	def_object_events
	object_event  4,  2, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo8F_WorkerScript, -1
	object_event 19,  2, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt34, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 10,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerScientistParker, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 12, 15, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt35, EVENT_SAFFRON_CITY_ROCKET_GROUP1
