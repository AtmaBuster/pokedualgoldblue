	object_const_def
	const ROUTE24_COOLTRAINER_M1
	const ROUTE24_COOLTRAINER_M2
	const ROUTE24_COOLTRAINER_M3
	const ROUTE24_COOLTRAINER_F1
	const ROUTE24_KANTO_YOUNGSTER1
	const ROUTE24_COOLTRAINER_F2
	const ROUTE24_KANTO_YOUNGSTER2
	const ROUTE24_POKE_BALL

Route24_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

Route24_RocketScript:
	setlasttalked ROUTE24_COOLTRAINER_M1
	faceplayer
	opentext
	checkevent EVENT_BEAT_ROCKET_GRUNT6_GEN1
	iftrue .AlreadyBeaten
	writetext .CongratsText
	promptbutton
	checkevent EVENT_GOT_NUGGET_BRIDGE_REWARD
	iftrue .SkipNugget
	writetext .EarnedPrizeText
	promptbutton
	verbosegiveitem NUGGET
	iffalse .SkipNugget
	setevent EVENT_GOT_NUGGET_BRIDGE_REWARD
.SkipNugget:
	writetext .LikeToJoinText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer ROCKET_GEN1, GRUNT6_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_GRUNT6_GEN1
	opentext
.AlreadyBeaten:
	writetext .AfterText
	waitbutton
	setscene SCENE_FINISHED
	closetext
	end

.CongratsText:
	text "Congratulations!"
	line "You beat our 5"
	cont "contest trainers!"
	done

.EarnedPrizeText:
	text "You just earned a"
	line "fabulous prize!"
	done

.LikeToJoinText:
	text "By the way, would"
	line "you like to join"
	cont "TEAM ROCKET?"

	para "We're a group"
	line "dedicated to evil"
	cont "using #MON!"

	para "Want to join?"

	para "Are you sure?"

	para "Come on, join us!"

	para "I'm telling you"
	line "to join!"

	para "OK, you need"
	line "convincing!"

	para "I'll make you an"
	line "offer you can't"
	cont "refuse!"
	done

.WinText:
	text "Arrgh!"
	line "You are good!"
	done

.AfterText:
	text "With your ability,"
	line "you could become"
	cont "a top leader in"
	cont "TEAM ROCKET!"
	done

TrainerJrTrainerMShane:
	trainer JR_TRAINER_M_GEN1, SHANE_GEN1, EVENT_BEAT_JR_TRAINER_M_SHANE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I saw your feat"
	line "from the grass!"
	done

.BeatenText:
	text "I"
	line "thought not!"
	done

.AfterText:
	text "I hid because the"
	line "people on the"
	cont "bridge scared me!"
	done

TrainerJrTrainerMEthan:
	trainer JR_TRAINER_M_GEN1, ETHAN_GEN1, EVENT_BEAT_JR_TRAINER_M_ETHAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "OK! I'm No. 5!"
	line "I'll stomp you!"
	done

.BeatenText:
	text "Whoa!"
	line "Too much!"
	done

.AfterText:
	text "I did my best, I"
	line "have no regrets!"
	done

TrainerLassAli:
	trainer LASS_GEN1, ALI_GEN1, EVENT_BEAT_LASS_ALI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm No. 4!"
	line "Getting tired?"
	done

.BeatenText:
	text "I lost"
	line "too!"
	done

.AfterText:
	text "I did my best, so"
	line "I've no regrets!"
	done

TrainerYoungsterTimmy:
	trainer YOUNGSTER_GEN1, TIMMY_GEN1, EVENT_BEAT_YOUNGSTER_TIMMY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Here's No. 3!"
	line "I won't be easy!"
	done

.BeatenText:
	text "Ow!"
	line "Stomped flat!"
	done

.AfterText:
	text "I did my best, I"
	line "have no regrets!"
	done

TrainerLassReli:
	trainer LASS_GEN1, RELI_GEN1, EVENT_BEAT_LASS_RELI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm second!"
	line "Now it's serious!"
	done

.BeatenText:
	text "How could I"
	line "lose?"
	done

.AfterText:
	text "I did my best, I"
	line "have no regrets!"
	done

TrainerBugCatcherCale:
	trainer BUG_CATCHER_GEN1, CALE_GEN1, EVENT_BEAT_BUG_CATCHER_CALE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "This is NUGGET"
	line "BRIDGE! Beat us 5"
	cont "trainers and win"
	cont "a fabulous prize!"

	para "Think you got"
	line "what it takes?"
	done

.BeatenText:
	text "Whoo!"
	line "Good stuff!"
	done

.AfterText:
	text "I did my best, I"
	line "have no regrets!"
	done

Route24_TMThunderWaveScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_THUNDER_WAVE
ENDC

Route24_MapEvents:
	def_warp_events

	def_coord_events
	coord_event 10, 15, SCENE_DEFAULT, Route24_RocketScript

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24_RocketScript, EVENT_ROUTE_24_ROCKET
	object_event  5, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJrTrainerMShane, -1
	object_event 11, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerJrTrainerMEthan, -1
	object_event 10, 22, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassAli, -1
	object_event 11, 25, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerYoungsterTimmy, -1
	object_event 10, 28, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassReli, -1
	object_event 11, 31, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherCale, -1
	object_event 10,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route24_TMThunderWaveScript, EVENT_ROUTE_24_TM_THUNDER_WAVE
