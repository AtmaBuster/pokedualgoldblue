	object_const_def
	const SILPHCO4F_SILPH_WORKER
	const SILPHCO4F_KANTO_ROCKET1
	const SILPHCO4F_KANTO_SCIENTIST
	const SILPHCO4F_KANTO_ROCKET2
	const SILPHCO4F_POKE_BALL1
	const SILPHCO4F_POKE_BALL2
	const SILPHCO4F_POKE_BALL3

SilphCo4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_4F_DOOR_1
	iftrue .SkipDoor1
	changeblock 4, 12, $54
.SkipDoor1:
	checkevent EVENT_SILPH_CO_4F_DOOR_2
	iftrue .SkipDoor2
	changeblock 12, 8, $54
.SkipDoor2:
	endcallback

SilphCo4F_WorkerScript:
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
	text "Sssh! Can't you"
	line "see I'm hiding?"
	done

.Text2:
	text "Huh? TEAM ROCKET"
	line "is gone?"
	done

SilphCo4F_FullHealScript:
	itemball FULL_HEAL

SilphCo4F_MaxReviveScript:
	itemball MAX_REVIVE

SilphCo4F_EscapeRopeScript:
	itemball ESCAPE_ROPE

SilphCo4F_Door1:
	cardkeydoor 2, 6, $0e, EVENT_SILPH_CO_4F_DOOR_1

SilphCo4F_Door2:
	cardkeydoor 6, 4, $0e, EVENT_SILPH_CO_4F_DOOR_2

TrainerRocketGrunt25:
	trainer ROCKET_GEN1, GRUNT25_GEN1, EVENT_BEAT_ROCKET_GRUNT25_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "TEAM ROCKET has"
	line "taken command of"
	cont "SILPH CO.!"
	done

.BeatenText:
	text "Arrgh!"
	done

.AfterText:
	text "Fwahahaha!"
	line "My BOSS has been"
	cont "after this place!"
	done

TrainerScientistRodney:
	trainer SCIENTIST_GEN1, RODNEY_GEN1, EVENT_BEAT_SCIENTIST_RODNEY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My #MON are my"
	line "loyal soldiers!"
	done

.BeatenText:
	text "Darn! You weak"
	line "#MON!"
	done

.AfterText:
	text "The doors are"
	line "electronically"
	cont "locked! A CARD"
	cont "KEY opens them!"
	done

TrainerRocketGrunt26:
	trainer ROCKET_GEN1, GRUNT26_GEN1, EVENT_BEAT_ROCKET_GRUNT26_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Intruder spotted!"
	done

.BeatenText:
	text "Who are you?"
	done

.AfterText:
	text "I better tell the"
	line "BOSS on 11F!"
	done

SilphCo4F_MapEvents:
	def_warp_events
	warp_event 24,  0, SILPH_CO_3F, 2
	warp_event 26,  0, SILPH_CO_5F, 2
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 11,  7, SILPH_CO_10F, 4
	warp_event 17,  3, SILPH_CO_6F, 4
	warp_event  3, 15, SILPH_CO_10F, 5
	warp_event 17, 11, SILPH_CO_10F, 6

	def_coord_events

	def_bg_events
	bg_event  4, 12, BGEVENT_KEYDOOR, SilphCo4F_Door1
	bg_event  5, 12, BGEVENT_KEYDOOR, SilphCo4F_Door1
	bg_event 12,  8, BGEVENT_KEYDOOR, SilphCo4F_Door2
	bg_event 13,  8, BGEVENT_KEYDOOR, SilphCo4F_Door2

	def_object_events
	object_event  6,  2, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo4F_WorkerScript, -1
	object_event  9, 14, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt25, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 14,  6, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistRodney, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 26, 10, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt26, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  3,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo4F_FullHealScript, EVENT_SILPH_CO_4F_FULL_HEAL
	object_event  4,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo4F_MaxReviveScript, EVENT_SILPH_CO_4F_MAX_REVIVE
	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo4F_EscapeRopeScript, EVENT_SILPH_CO_4F_ESCAPE_ROPE
