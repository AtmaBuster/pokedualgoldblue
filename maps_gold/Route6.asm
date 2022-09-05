	object_const_def
	const ROUTE6_COOLTRAINER_M1
	const ROUTE6_COOLTRAINER_F1
	const ROUTE6_KANTO_YOUNGSTER1
	const ROUTE6_COOLTRAINER_M2
	const ROUTE6_COOLTRAINER_F2
	const ROUTE6_KANTO_YOUNGSTER2

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerJrTrainerMRicky:
	trainer JR_TRAINER_M_GEN1, RICKY_GEN1, EVENT_BEAT_JR_TRAINER_M_RICKY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Who's there?"
	line "Quit listening in"
	cont "on us!"
	done

.BeatenText:
	text "I just can't win!"
	done

.AfterText:
	text "Whisper..."
	line "whisper..."
	done

TrainerJrTrainerFNancy:
	trainer JR_TRAINER_F_GEN1, NANCY_GEN1, EVENT_BEAT_JR_TRAINER_F_NANCY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Excuse me! This"
	line "is a private"
	cont "conversation!"
	done

.BeatenText:
	text "Ugh! I hate"
	line "losing!"
	done

.AfterText:
	text "Whisper..."
	line "whisper..."
	done

TrainerBugCatcherKeigo:
	trainer BUG_CATCHER_GEN1, KEIGO_GEN1, EVENT_BEAT_BUG_CATCHER_KEIGO_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "There aren't many"
	line "bugs out here."
	done

.BeatenText:
	text "No! You're kidding!"
	done

.AfterText:
	text "I like bugs, so"
	line "I'm going back to"
	cont "VIRIDIAN FOREST."
	done

TrainerJrTrainerMJeff:
	trainer JR_TRAINER_M_GEN1, JEFF_GEN1, EVENT_BEAT_JR_TRAINER_M_JEFF_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Huh? You want"
	line "to talk to me?"
	done

.BeatenText:
	text "I didn't start it!"
	done

.AfterText:
	text "I should carry"
	line "more #MON with"
	cont "me for safety."
	done

TrainerJrTrainerFIsabel:
	trainer JR_TRAINER_F_GEN1, ISABEL_GEN1, EVENT_BEAT_JR_TRAINER_F_ISABEL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Me? Well, OK."
	line "I'll play!"
	done

.BeatenText:
	text "Just didn't work!"
	done

.AfterText:
	text "I want to get"
	line "stronger! What's"
	cont "your secret?"
	done

TrainerBugCatcherElijah:
	trainer BUG_CATCHER_GEN1, ELIJAH_GEN1, EVENT_BEAT_BUG_CATCHER_ELIJAH_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I've never seen"
	line "you around!"
	cont "Are you good?"
	done

.BeatenText:
	text "You are too good!"
	done

.AfterText:
	text "Are my #MON"
	line "weak? Or, am I"
	cont "just bad?"
	done

Route6_UndergroundSignScript:
	jumptext .Text
.Text:
	text "UNDERGROUND PATH"
	line "CERULEAN CITY -"
	cont "VERMILION CITY"
	done

Route6_MapEvents:
	def_warp_events
	warp_event  9,  1, ROUTE_6_GATE, 3
	warp_event 10,  1, ROUTE_6_GATE, 3
	warp_event 10,  7, ROUTE_6_GATE, 1
	warp_event 17, 13, UNDERGROUND_PATH_ROUTE_6, 1

	def_coord_events

	def_bg_events
	bg_event 19, 15, BGEVENT_READ, Route6_UndergroundSignScript

	def_object_events
	object_event 10, 21, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerJrTrainerMRicky, -1
	object_event 11, 21, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerJrTrainerFNancy, -1
	object_event  0, 15, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherKeigo, -1
	object_event 11, 31, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerMJeff, -1
	object_event 11, 30, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerFIsabel, -1
	object_event 19, 26, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherElijah, -1
