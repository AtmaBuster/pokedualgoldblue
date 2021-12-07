	object_const_def
	const ROUTE3_KANTO_SUPER_NERD
	const ROUTE3_KANTO_YOUNGSTER1
	const ROUTE3_KANTO_YOUNGSTER2
	const ROUTE3_COOLTRAINER_F1
	const ROUTE3_KANTO_YOUNGSTER3
	const ROUTE3_COOLTRAINER_F2
	const ROUTE3_KANTO_YOUNGSTER4
	const ROUTE3_KANTO_YOUNGSTER5
	const ROUTE3_COOLTRAINER_F3

Route3_MapScripts:
	def_scene_scripts

	def_callbacks

Route3_SuperNerdScript:
	jumptextfaceplayer .Text
.Text:
	text "Whew... I better"
	line "take a rest..."
	cont "Groan..."

	para "That tunnel from"
	line "CERULEAN takes a"
	cont "lot out of you!"
	done

Route3_MtMoonSignScript:
	jumptext .Text
.Text:
_Route3Text10::
	text "ROUTE 3"
	line "MT.MOON AHEAD"
	done

TrainerBugCatcherRick2:
	trainer BUG_CATCHER_GEN1, RICK2_GEN1, EVENT_BEAT_BUG_CATCHER_RICK2_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey! I met you in"
	line "VIRIDIAN FOREST!"
	done

.BeatenText:
	text "You"
	line "beat me again!"
	done

.AfterText:
	text "There are other"
	line "kinds of #MON"
	cont "than those found"
	cont "in the forest!"
	done

TrainerYoungsterJimmy:
	trainer YOUNGSTER_GEN1, JIMMY_GEN1, EVENT_BEAT_YOUNGSTER_JIMMY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hi! I like shorts!"
	line "They're comfy and"
	cont "easy to wear!"
	done

.BeatenText:
	text "I don't"
	line "believe it!"
	done

.AfterText:
	text "Are you storing"
	line "your #MON on"
	cont "PC? Each BOX can"
	cont "hold 20 #MON!"
	done

TrainerLassJanice:
	trainer LASS_GEN1, JANICE_GEN1, EVENT_BEAT_LASS_JANICE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You looked at me,"
	line "didn't you?"
	done

.BeatenText:
	text "You're"
	line "mean!"
	done

.AfterText:
	text "Quit staring if"
	line "you don't want to"
	cont "fight!"
	done

TrainerBugCatcherGreg:
	trainer BUG_CATCHER_GEN1, GREG_GEN1, EVENT_BEAT_BUG_CATCHER_GREG_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Are you a trainer?"
	line "Let's fight!"
	done

.BeatenText:
	text "If I"
	line "had new #MON I"
	cont "would've won!"
	done

.AfterText:
	text "If a #MON BOX"
	line "on the PC gets"
	cont "full, just switch"
	cont "to another BOX!"
	done

TrainerLassSally:
	trainer LASS_GEN1, SALLY_GEN1, EVENT_BEAT_LASS_SALLY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "That look you"
	line "gave me, it's so"
	cont "intriguing!"
	done

.BeatenText:
	text "Be nice!"
	done

.AfterText:
	text "Avoid fights by"
	line "not letting"
	cont "people see you!"
	done

TrainerYoungsterWarren:
	trainer YOUNGSTER_GEN1, WARREN_GEN1, EVENT_BEAT_YOUNGSTER_WARREN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey! You're not"
	line "wearing shorts!"
	done

.BeatenText:
	text "Lost!"
	line "Lost! Lost!"
	done

.AfterText:
	text "I always wear"
	line "shorts, even in"
	cont "winter!"
	done

TrainerBugCatcherJames:
	trainer BUG_CATCHER_GEN1, JAMES_GEN1, EVENT_BEAT_BUG_CATCHER_JAMES_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You can fight my"
	line "new #MON!"
	done

.BeatenText:
	text "Done"
	line "like dinner!"
	done

.AfterText:
	text "Trained #MON"
	line "are stronger than"
	cont "the wild ones!"
	done

TrainerLassRobin:
	trainer LASS_GEN1, ROBIN_GEN1, EVENT_BEAT_LASS_ROBIN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Eek! Did you"
	line "touch me?"
	done

.BeatenText:
	text "That's it?"
	done

.AfterText:
	text "ROUTE 4 is at the"
	line "foot of MT.MOON."
	done

Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 59,  9, BGEVENT_READ, Route3_MtMoonSignScript

	def_object_events
	object_event 57, 11, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route3_SuperNerdScript, -1
	object_event 10,  6, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherRick2, -1
	object_event 14,  4, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJimmy, -1
	object_event 16,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassJanice, -1
	object_event 19,  5, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherGreg, -1
	object_event 23,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerLassSally, -1
	object_event 22,  9, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterWarren, -1
	object_event 24,  6, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJames, -1
	object_event 33, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassRobin, -1
