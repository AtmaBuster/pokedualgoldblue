	object_const_def
	const SILPHCO5F_SILPH_WORKER
	const SILPHCO5F_KANTO_ROCKET1
	const SILPHCO5F_KANTO_SCIENTIST
	const SILPHCO5F_KANTO_ROCKER
	const SILPHCO5F_KANTO_ROCKET2
	const SILPHCO5F_POKE_BALL1
	const SILPHCO5F_POKE_BALL2
	const SILPHCO5F_POKE_BALL3
	const SILPHCO5F_CLIPBOARD1
	const SILPHCO5F_CLIPBOARD2
	const SILPHCO5F_CLIPBOARD3

SilphCo5F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_5F_DOOR_1
	iftrue .SkipDoor1
	changeblock 6, 4, $5f
.SkipDoor1:
	checkevent EVENT_SILPH_CO_5F_DOOR_2
	iftrue .SkipDoor2
	changeblock 6, 12, $5f
.SkipDoor2:
	checkevent EVENT_SILPH_CO_5F_DOOR_3
	iftrue .SkipDoor3
	changeblock 14, 10, $5f
.SkipDoor3:
	endcallback

SilphCo5F_Door1:
	cardkeydoor 3, 2, $0e, EVENT_SILPH_CO_5F_DOOR_1

SilphCo5F_Door2:
	cardkeydoor 3, 6, $0e, EVENT_SILPH_CO_5F_DOOR_2

SilphCo5F_Door3:
	cardkeydoor 7, 5, $0e, EVENT_SILPH_CO_5F_DOOR_3

SilphCo5F_HiddenElixer:
	hiddenitem ELIXER, EVENT_SILPH_CO_5F_HIDDEN_ELIXER

TrainerRocketGrunt27:
	trainer ROCKET_GEN1, GRUNT27_GEN1, EVENT_BEAT_ROCKET_GRUNT27_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I heard a kid was"
	line "wandering around."
	done

.BeatenText:
	text "Boom!"
	done

.AfterText:
	text "It's not smart"
	line "to pick a fight"
	cont "with TEAM ROCKET!"
	done

TrainerScientistBeau:
	trainer SCIENTIST_GEN1, BEAU_GEN1, EVENT_BEAT_SCIENTIST_BEAU_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "We study #"
	line "BALL technology"
	cont "on this floor!"
	done

.BeatenText:
	text "Dang! Blast it!"
	done

.AfterText:
	text "We worked on the"
	line "ultimate #"
	cont "BALL which would"
	cont "catch anything!"
	done

TrainerJugglerDalton:
	trainer JUGGLER_GEN1, DALTON_GEN1, EVENT_BEAT_JUGGLER_DALTON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Whaaat? There"
	line "shouldn't be any"
	cont "children here?"
	done

.BeatenText:
	text "Oh goodness!"
	done

.AfterText:
	text "You're only on 5F."
	line "It's a long way"
	cont "to my BOSS!"
	done

TrainerRocketGrunt28:
	trainer ROCKET_GEN1, GRUNT28_GEN1, EVENT_BEAT_ROCKET_GRUNT28_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Show TEAM ROCKET"
	line "a little respect!"
	done

.BeatenText:
	text "Cough...Cough..."
	done

.AfterText:
	text "Which reminds me."

	para "KOFFING evolves"
	line "into WEEZING!"
	done

SilphCo5F_WorkerScript:
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
	text "TEAM ROCKET is"
	line "in an uproar over"
	cont "some intruder."
	cont "That's you right?"
	done

.Text2:
	text "TEAM ROCKET took"
	line "off! You're our"
	cont "hero! Thank you!"
	done

SilphCo5F_TMTakeDownScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_TAKE_DOWN
ENDC

SilphCo5F_ProteinScript:
	itemball PROTEIN

SilphCo5F_CardKeyScript:
	itemball CARD_KEY

SilphCo5F_Cliboard1Script:
	jumptext .Text
.Text:
_SilphCo5Text9::
	text "It's a #MON"
	line "REPORT!"

	para "#MON LAB"
	line "created PORYGON,"
	cont "the first virtual"
	cont "reality #MON."
	done

SilphCo5F_Cliboard2Script:
	jumptext .Text
.Text:
	text "It's a #MON"
	line "REPORT!"

	para "Over 160 #MON"
	line "techniques have"
	cont "been confirmed."
	done

SilphCo5F_Cliboard3Script:
	jumptext .Text
.Text:
	text "It's a #MON"
	line "REPORT!"

	para "4 #MON evolve"
	line "only when traded"
	cont "by link-cable."
	done

SilphCo5F_MapEvents:
	def_warp_events
	warp_event 24,  0, SILPH_CO_6F, 2
	warp_event 26,  0, SILPH_CO_4F, 2
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 27,  3, SILPH_CO_7F, 6
	warp_event  9, 15, SILPH_CO_9F, 5
	warp_event 11,  5, SILPH_CO_3F, 5
	warp_event  3, 15, SILPH_CO_3F, 6

	def_coord_events

	def_bg_events
	bg_event 12,  3, BGEVENT_ITEM, SilphCo5F_HiddenElixer
	bg_event  7,  4, BGEVENT_KEYDOOR, SilphCo5F_Door1
	bg_event  7,  5, BGEVENT_KEYDOOR, SilphCo5F_Door1
	bg_event  7, 12, BGEVENT_KEYDOOR, SilphCo5F_Door2
	bg_event  7, 13, BGEVENT_KEYDOOR, SilphCo5F_Door2
	bg_event 15, 10, BGEVENT_KEYDOOR, SilphCo5F_Door3
	bg_event 15, 11, BGEVENT_KEYDOOR, SilphCo5F_Door3

	def_object_events
	object_event 13,  9, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5F_WorkerScript, -1
	object_event  8, 16, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRocketGrunt27, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  8,  3, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistBeau, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 18, 10, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJugglerDalton, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 28,  4, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt28, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  2, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo5F_TMTakeDownScript, EVENT_SILPH_CO_5F_TM_TAKE_DOWN
	object_event  4,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo5F_ProteinScript, EVENT_SILPH_CO_5F_PROTEIN
	object_event 21, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo5F_CardKeyScript, EVENT_SILPH_CO_5F_CARD_KEY
	object_event 22, 12, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5F_Cliboard1Script, -1
	object_event 25, 10, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5F_Cliboard2Script, -1
	object_event 24,  6, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5F_Cliboard3Script, -1
