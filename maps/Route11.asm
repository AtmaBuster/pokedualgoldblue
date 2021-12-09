	object_const_def
	const ROUTE11_GAMBLER1
	const ROUTE11_GAMBLER2
	const ROUTE11_KANTO_YOUNGSTER1
	const ROUTE11_KANTO_SUPER_NERD1
	const ROUTE11_KANTO_YOUNGSTER2
	const ROUTE11_GAMBLER3
	const ROUTE11_GAMBLER4
	const ROUTE11_KANTO_YOUNGSTER3
	const ROUTE11_KANTO_SUPER_NERD2
	const ROUTE11_KANTO_YOUNGSTER4

Route11_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGamblerHugo:
	trainer GAMBLER_GEN1, HUGO_GEN1, EVENT_BEAT_GAMBLER_HUGO_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Win, lose or draw!"
	done

.BeatenText:
	text "Atcha!"
	line "Didn't go my way!"
	done

.AfterText:
	text "#MON is life!"
	line "And to live is to"
	cont "gamble!"
	done

TrainerGamblerJasper:
	trainer GAMBLER_GEN1, JASPER_GEN1, EVENT_BEAT_GAMBLER_JASPER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Competition! I"
	line "can't get enough!"
	done

.BeatenText:
	text "I had"
	line "a chance!"
	done

.AfterText:
	text "You can't be a"
	line "coward in the"
	cont "world of #MON!"
	done

TrainerYoungsterEddie:
	trainer YOUNGSTER_GEN1, EDDIE_GEN1, EVENT_BEAT_YOUNGSTER_EDDIE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Let's go, but"
	line "don't cheat!"
	done

.BeatenText:
	text "Huh?"
	line "That's not right!"
	done

.AfterText:
	text "I did my best! I"
	line "have no regrets!"
	done

TrainerEngineerBraxton:
	trainer ENGINEER_GEN1, BRAXTON_GEN1, EVENT_BEAT_ENGINEER_BRAXTON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Careful!"
	line "I'm laying down"
	cont "some cables!"
	done

.BeatenText:
	text "That"
	line "was electric!"
	done

.AfterText:
	text "Spread the word"
	line "to save energy!"
	done

TrainerYoungsterDillon:
	trainer YOUNGSTER_GEN1, DILLON_GEN1, EVENT_BEAT_YOUNGSTER_DILLON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I just became a"
	line "trainer! But, I"
	cont "think I can win!"
	done

.BeatenText:
	text "My"
	line "#MON couldn't!"
	done

.AfterText:
	text "What do you want?"
	line "Leave me alone!"
	done

TrainerGamblerDirk:
	trainer GAMBLER_GEN1, DIRK_GEN1, EVENT_BEAT_GAMBLER_DIRK_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Fwahaha! I have"
	line "never lost!"
	done

.BeatenText:
	text "My"
	line "first loss!"
	done

.AfterText:
	text "Luck of the draw!"
	line "Just luck!"
	done

TrainerGamblerDarian:
	trainer GAMBLER_GEN1, DARIAN_GEN1, EVENT_BEAT_GAMBLER_DARIAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I have never won"
	line "before..."
	done

.BeatenText:
	text "I saw"
	line "this coming..."
	done

.AfterText:
	text "It's just luck."
	line "Luck of the draw."
	done

TrainerYoungsterYasu:
	trainer YOUNGSTER_GEN1, YASU_GEN1, EVENT_BEAT_YOUNGSTER_YASU_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm the best in"
	line "my class!"
	done

.BeatenText:
	text "Darn!"
	line "I need to make my"
	cont "#MON stronger!"
	done

.AfterText:
	text "There's a fat"
	line "#MON that"
	cont "comes down from"
	cont "the mountains."

	para "It's strong if"
	line "you can get it."
	done

TrainerEngineerBernie:
	trainer ENGINEER_GEN1, BERNIE_GEN1, EVENT_BEAT_ENGINEER_BERNIE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Watch out for"
	line "live wires!"
	done

.BeatenText:
	text "Whoa!"
	line "You spark plug!"
	done

.AfterText:
	text "Well, better get"
	line "back to work."
	done

TrainerYoungsterDave:
	trainer YOUNGSTER_GEN1, DAVE_GEN1, EVENT_BEAT_YOUNGSTER_DAVE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My #MON should"
	line "be ready by now!"
	done

.BeatenText:
	text "Too"
	line "much, too young!"
	done

.AfterText:
	text "I better go find"
	line "stronger ones!"
	done

Route11_SignScript:
	jumptext .Text
.Text:
	text "DIGLETT's CAVE"
	done

Route11_HiddenEscapeRope:
	hiddenitem ESCAPE_ROPE, EVENT_ROUTE_11_HIDDEN_ESCAPE_ROPE

Route11_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 49,  8, ROUTE_11_GATE_1F, 1
	warp_event 49,  9, ROUTE_11_GATE_1F, 2
	warp_event 58,  8, ROUTE_11_GATE_1F, 3
	warp_event 58,  9, ROUTE_11_GATE_1F, 4
	warp_event  4,  5, DIGLETTS_CAVE_ROUTE_11, 1

	def_coord_events

	def_bg_events
	bg_event  1,  5, BGEVENT_READ, Route11_SignScript
	bg_event 48,  5, BGEVENT_ITEM, Route11_HiddenEscapeRope

	def_object_events
	object_event 10, 14, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGamblerHugo, -1
	object_event 26,  9, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGamblerJasper, -1
	object_event 13,  5, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterEddie, -1
	object_event 36, 11, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerEngineerBraxton, -1
	object_event 22,  4, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterDillon, -1
	object_event 45,  7, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGamblerDirk, -1
	object_event 33,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGamblerDarian, -1
	object_event 43,  5, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterYasu, -1
	object_event 45, 16, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerEngineerBernie, -1
	object_event 22, 12, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterDave, -1
