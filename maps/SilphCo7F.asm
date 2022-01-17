	object_const_def
	const SILPHCO7F_SILPH_WORKER1
	const SILPHCO7F_SILPH_WORKER2
	const SILPHCO7F_SILPH_WORKER3
	const SILPHCO7F_KANTO_ERIKA
	const SILPHCO7F_KANTO_ROCKET1
	const SILPHCO7F_KANTO_SCIENTIST
	const SILPHCO7F_KANTO_ROCKET2
	const SILPHCO7F_KANTO_ROCKET3
	const SILPHCO7F_KANTO_BLUE
	const SILPHCO7F_POKE_BALL1
	const SILPHCO7F_POKE_BALL2

SilphCo7F_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_7F_DOOR_1
	iftrue .SkipDoor1
	changeblock 10, 6, $54
.SkipDoor1:
	checkevent EVENT_SILPH_CO_7F_DOOR_2
	iftrue .SkipDoor2
	changeblock 20, 4, $54
.SkipDoor2:
	checkevent EVENT_SILPH_CO_7F_DOOR_3
	iftrue .SkipDoor3
	changeblock 20, 12, $54
.SkipDoor3:
	endcallback

SilphCo7F_Door1:
	cardkeydoor 5, 3, $0e, EVENT_SILPH_CO_7F_DOOR_1

SilphCo7F_Door2:
	cardkeydoor 10, 2, $0e, EVENT_SILPH_CO_7F_DOOR_2

SilphCo7F_Door3:
	cardkeydoor 10, 6, $0e, EVENT_SILPH_CO_7F_DOOR_3

SilphCo7F_RivalScriptU:
	playmusic MUSIC_RBY_MEET_RIVAL
	turnobject PLAYER, DOWN
	opentext
	writetext SilphCo7F_WhatKeptYouText
	waitbutton
	closetext
	applymovement SILPHCO7F_KANTO_BLUE, .ApproachMovement
	scall SilphCo7F_RivalScript
	applymovement SILPHCO7F_KANTO_BLUE, .LeaveMovement
	disappear SILPHCO7F_KANTO_BLUE
	special RestartMapMusic
	end

.ApproachMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

.LeaveMovement:
	step RIGHT
	step RIGHT
	step_end

SilphCo7F_RivalScriptD:
	playmusic MUSIC_RBY_MEET_RIVAL
	turnobject PLAYER, DOWN
	opentext
	writetext SilphCo7F_WhatKeptYouText
	waitbutton
	closetext
	applymovement SILPHCO7F_KANTO_BLUE, .ApproachMovement
	scall SilphCo7F_RivalScript
	applymovement SILPHCO7F_KANTO_BLUE, .LeaveMovement
	disappear SILPHCO7F_KANTO_BLUE
	special RestartMapMusic
	end

.ApproachMovement:
	step UP
	step UP
	step UP
	step_end

.LeaveMovement:
	step LEFT
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step_end

SilphCo7F_RivalScript:
	opentext
	writetext .IntroText
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER
	iftrue .VsSquirtle
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .VsBulbasaur
; VsCharmander
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_3_CHARMANDER_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsSquirtle:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_3_SQUIRTLE_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsBulbasaur:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_3_BULBASAUR_GEN1
	startbattle
	reloadmapafterbattle
.After:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	playmusic MUSIC_RBY_MEET_RIVAL
	end

.IntroText:
	text "<RIVAL>: Hahaha!"
	line "I thought you'd"
	cont "turn up if I"
	cont "waited here!"

	para "I guess TEAM"
	line "ROCKET slowed you"
	cont "down! Not that I"
	cont "care!"

	para "I saw you in"
	line "SAFFRON, so I"
	cont "decided to see if"
	cont "you got better!"
	done

.WinText:
	text "Oh ho! So, you are"
	line "ready for BOSS"
	cont "ROCKET!"
	done

.LossText:
	text "<RIVAL>: How can"
	line "I put this?"

	para "You're not good"
	line "enough to play"
	cont "with us big boys!"
	done

.AfterText:
	text "Well, <PLAYER>!"

	para "I'm moving on up"
	line "and ahead!"

	para "By checking my"
	line "#DEX, I'm"
	cont "starting to see"
	cont "what's strong and"
	cont "how they evolve!"

	para "I'm going to the"
	line "#MON LEAGUE"
	cont "to boot out the"
	cont "ELITE FOUR!"

	para "I'll become the"
	line "world's most"
	cont "powerful trainer!"

	para "<PLAYER>, well"
	line "good luck to you!"
	cont "Don't sweat it!"
	cont "Smell ya!"
	done

SilphCo7F_WhatKeptYouText:
	text "<RIVAL>: What"
	line "kept you <PLAYER>?"
	done

TrainerRocketGrunt31:
	trainer ROCKET_GEN1, GRUNT31_GEN1, EVENT_BEAT_ROCKET_GRUNT31_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Oh ho! I smell a"
	line "little rat!"
	done

.BeatenText:
	text "Lights out!"
	done

.AfterText:
	text "You won't find my"
	line "BOSS by just"
	cont "scurrying around!"
	done

TrainerScientistJoshua:
	trainer SCIENTIST_GEN1, JOSHUA_GEN1, EVENT_BEAT_SCIENTIST_JOSHUA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Heheh!"

	para "You mistook me for"
	line "a SILPH worker?"
	done

.BeatenText:
	text "I'm done!"
	done

.AfterText:
	text "Despite your age,"
	line "you are a skilled"
	cont "trainer!"
	done

TrainerRocketGrunt32:
	trainer ROCKET_GEN1, GRUNT32_GEN1, EVENT_BEAT_ROCKET_GRUNT32_GEN1, .SeenText, .BeatenText, 0, .Script
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
	text "Aack! Brothers,"
	line "I lost!"
	done

.AfterText:
	text "Doesn't matter."
	line "My brothers will"
	cont "repay the favor!"
	done

TrainerRocketGrunt33:
	trainer ROCKET_GEN1, GRUNT33_GEN1, EVENT_BEAT_ROCKET_GRUNT33_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "A child intruder?"
	line "That must be you!"
	done

.BeatenText:
	text "Fine! I lost!"
	done

.AfterText:
	text "Go on home"
	line "before my BOSS"
	cont "gets ticked off!"
	done

SilphCo7F_Worker1Script:
	faceplayer
	opentext
	checkevent EVENT_SILPH_CO_7F_GOT_LAPRAS
	iftrue .After
	writetext .Text1
	promptbutton
	writetext .GotText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke LAPRAS, 15
	writetext .Text2
	waitbutton
	closetext
	setevent EVENT_SILPH_CO_7F_GOT_LAPRAS
	end

.After:
	checkevent EVENT_BEAT_GIOVANNI2_GEN1
	iftrue .After2
	writetext .Text3
	waitbutton
	closetext
	end

.After2:
	writetext .Text4
	waitbutton
	closetext
	end

.Text1:
	text "Oh! Hi! You're"
	line "not a ROCKET! You"
	cont "came to save us?"
	cont "Why, thank you!"

	para "I want you to"
	line "have this #MON"
	cont "for saving us."
	done

.Text2:
	text "It's LAPRAS. It's"
	line "very intelligent."

	para "We kept it in our"
	line "lab, but it will"
	cont "be much better"
	cont "off with you!"

	para "I think you will"
	line "be a good trainer"
	cont "for LAPRAS!"

	para "It's a good"
	line "swimmer. It'll"
	cont "give you a lift!"
	done

.Text3:
	text "TEAM ROCKET's"
	line "BOSS went to the"
	cont "boardroom! Is our"
	cont "PRESIDENT OK?"
	done

.Text4:
	text "Saved at last!"
	line "Thank you!"
	done

.GotText:
	text "<PLAYER> got"
	line "LAPRAS!"
	done

SilphCo7F_Worker2Script:
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
	text "TEAM ROCKET was"
	line "after the MASTER"
	cont "BALL which will"
	cont "catch any #MON!"
	done

.Text2:
	text "We canceled the"
	line "MASTER BALL"
	cont "project because"
	cont "of TEAM ROCKET."
	done

SilphCo7F_Worker3Script:
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
	text "It would be bad"
	line "if TEAM ROCKET"
	cont "took over SILPH"
	cont "or our #MON!"
	done

.Text2:
	text "Wow! You chased"
	line "off TEAM ROCKET"
	cont "all by yourself?"
	done

SilphCo7F_WomanScript:
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
	text "You! It's really"
	line "dangerous here!"
	cont "You came to save"
	cont "me? You can't!"
	done

.Text2:
	text "Safe at last!"
	line "Oh thank you!"
	done

SilphCo7F_CalciumScript:
	itemball CALCIUM

SilphCo7F_TMSwordsDanceScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_SWORDS_DANCE
ENDC

SilphCo7F_MapEvents:
	def_warp_events
	warp_event 16,  0, SILPH_CO_8F, 2
	warp_event 22,  0, SILPH_CO_6F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  5,  7, SILPH_CO_11F, 4
	warp_event  5,  3, SILPH_CO_3F, 9
	warp_event 21, 15, SILPH_CO_5F, 4

	def_coord_events
	coord_event  3,  2, SCENE_DEFAULT, SilphCo7F_RivalScriptU
	coord_event  3,  3, SCENE_DEFAULT, SilphCo7F_RivalScriptD

	def_bg_events
	bg_event 10,  6, BGEVENT_KEYDOOR, SilphCo7F_Door1
	bg_event 11,  6, BGEVENT_KEYDOOR, SilphCo7F_Door1
	bg_event 20,  4, BGEVENT_KEYDOOR, SilphCo7F_Door2
	bg_event 21,  4, BGEVENT_KEYDOOR, SilphCo7F_Door2
	bg_event 20, 12, BGEVENT_KEYDOOR, SilphCo7F_Door3
	bg_event 21, 12, BGEVENT_KEYDOOR, SilphCo7F_Door3

	def_object_events
	object_event  1,  5, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo7F_Worker1Script, -1
	object_event 13, 13, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo7F_Worker2Script, -1
	object_event  7, 10, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo7F_Worker3Script, -1
	object_event 10,  8, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo7F_WomanScript, -1
	object_event 13,  1, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt31, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  2, 13, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistJoshua, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 20,  2, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt32, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 19, 14, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt33, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  3,  7, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SILPH_CO_7F_RIVAL
	object_event  1,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo7F_CalciumScript, EVENT_SILPH_CO_7F_CALCIUM
	object_event 24, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo7F_TMSwordsDanceScript, EVENT_SILPH_CO_7F_TM_SWORDS_DANCE
