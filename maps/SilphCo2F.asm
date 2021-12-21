	object_const_def
	const SILPHCO2F_KANTO_ERIKA
	const SILPHCO2F_KANTO_SCIENTIST1
	const SILPHCO2F_KANTO_SCIENTIST2
	const SILPHCO2F_KANTO_ROCKET1
	const SILPHCO2F_KANTO_ROCKET2

SilphCo2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_2F_DOOR_1
	iftrue .SkipDoor1
	changeblock 4, 4, $54
.SkipDoor1:
	checkevent EVENT_SILPH_CO_2F_DOOR_2
	iftrue .SkipDoor2
	changeblock 4, 10, $54
.SkipDoor2:
	endcallback

SilphCo2F_TMGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_SELFDESTRUCT
	iftrue .After
	writetext .Text1
	waitbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_SELFDESTRUCT
ENDC
	setevent EVENT_GOT_TM_SELFDESTRUCT
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Eeek!"
	line "No! Stop! Help!"

	para "Oh, you're not"
	line "with TEAM ROCKET."
	cont "I thought..."
	cont "I'm sorry. Here,"
	cont "please take this!"
	done

.Text2:
	text "TM36 is"
	line "SELFDESTRUCT!"

	para "It's powerful, but"
	line "the #MON that"
	cont "uses it faints!"
	cont "Be careful."
	done

TrainerScientistConnor:
	trainer SCIENTIST_GEN1, CONNOR_GEN1, EVENT_BEAT_SCIENTIST_CONNOR_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Help! I'm a SILPH"
	line "employee."
	done

.BeatenText:
	text "How"
	line "did you know I"
	cont "was a ROCKET?"
	done

.AfterText:
	text "I work for both"
	line "SILPH and TEAM"
	cont "ROCKET!"
	done

TrainerScientistLiam:
	trainer SCIENTIST_GEN1, LIAM_GEN1, EVENT_BEAT_SCIENTIST_LIAM_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "It's off limits"
	line "here! Go home!"
	done

.BeatenText:
	text "You're"
	line "good."
	done

.AfterText:
	text "Can you solve the"
	line "maze in here?"
	done

TrainerRocketGrunt22:
	trainer ROCKET_GEN1, GRUNT22_GEN1, EVENT_BEAT_ROCKET_GRUNT22_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "No kids are"
	line "allowed in here!"
	done

.BeatenText:
	text "Tough!"
	done

.AfterText:
	text "Diamond shaped"
	line "tiles are"
	cont "teleport blocks!"

	para "They're hi-tech"
	line "transporters!"
	done

TrainerRocketGrunt23:
	trainer ROCKET_GEN1, GRUNT23_GEN1, EVENT_BEAT_ROCKET_GRUNT23_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey kid! What are"
	line "you doing here?"
	done

.BeatenText:
	text "I goofed!"
	done

.AfterText:
	text "SILPH CO. will"
	line "be merged with"
	cont "TEAM ROCKET!"
	done

SilphCo2F_Door1:
	cardkeydoor 2, 2, $0e, EVENT_SILPH_CO_2F_DOOR_1

SilphCo2F_Door2:
	cardkeydoor 2, 5, $0e, EVENT_SILPH_CO_2F_DOOR_2

SilphCo2F_MapEvents:
	def_warp_events
	warp_event 24,  0, SILPH_CO_1F, 3
	warp_event 26,  0, SILPH_CO_3F, 1
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3,  3, SILPH_CO_3F, 7
	warp_event 13,  3, SILPH_CO_8F, 5
	warp_event 27, 15, SILPH_CO_8F, 6
	warp_event  9, 15, SILPH_CO_6F, 5

	def_coord_events

	def_bg_events
	bg_event  4,  4, BGEVENT_KEYDOOR, SilphCo2F_Door1
	bg_event  5,  4, BGEVENT_KEYDOOR, SilphCo2F_Door1
	bg_event  4, 10, BGEVENT_KEYDOOR, SilphCo2F_Door2
	bg_event  5, 10, BGEVENT_KEYDOOR, SilphCo2F_Door2

	def_object_events
	object_event 10,  1, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo2F_TMGirlScript, -1
	object_event  5, 12, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistConnor, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 24, 13, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerScientistLiam, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 16, 11, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt22, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 24,  7, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt23, EVENT_SAFFRON_CITY_ROCKET_GROUP1
