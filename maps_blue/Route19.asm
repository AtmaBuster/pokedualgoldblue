	object_const_def
	const ROUTE19_COOLTRAINER_M1
	const ROUTE19_COOLTRAINER_M2
	const ROUTE19_SWIMMER_GUY1
	const ROUTE19_SWIMMER_GUY2
	const ROUTE19_SWIMMER_GUY3
	const ROUTE19_SWIMMER_GUY4
	const ROUTE19_SWIMMER_GUY5
	const ROUTE19_SWIMMER_GUY6
	const ROUTE19_SWIMMER_GUY7
	const ROUTE19_SWIMMER_GUY8

Route19_MapScripts:
	def_scene_scripts

	def_callbacks

Route19_NameSignScript:

	jumptext .Text
.Text:
	text "SEA ROUTE 19"
	line "FUCHSIA CITY -"
	cont "SEAFOAM ISLANDS"
	done

TrainerSwimmerRichard:
	trainer SWIMMER_GEN1, RICHARD_GEN1, EVENT_BEAT_SWIMMER_RICHARD_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Have to warm up"
	line "before my swim!"
	done

.BeatenText:
	text "All warmed up!"
	done

.AfterText:
	text "Thanks, kid! I'm"
	line "ready for a swim!"
	done

TrainerSwimmerReece:
	trainer SWIMMER_GEN1, REECE_GEN1, EVENT_BEAT_SWIMMER_REECE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Wait! You'll have"
	line "a heart attack!"
	done

.BeatenText:
	text "Ooh! That's chilly!"
	done

.AfterText:
	text "Watch out for"
	line "TENTACOOL!"
	done

TrainerSwimmerMatthew:
	trainer SWIMMER_GEN1, MATTHEW_GEN1, EVENT_BEAT_SWIMMER_MATTHEW_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I love swimming!"
	line "What about you?"
	done

.BeatenText:
	text "Belly flop!"
	done

.AfterText:
	text "I can beat #MON"
	line "at swimming!"
	done

TrainerSwimmerDouglas:
	trainer SWIMMER_GEN1, DOUGLAS_GEN1, EVENT_BEAT_SWIMMER_DOUGLAS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What's beyond the"
	line "horizon?"
	done

.BeatenText:
	text "Glub!"
	done

.AfterText:
	text "I see a couple of"
	line "islands!"
	done

TrainerSwimmerDavid:
	trainer SWIMMER_GEN1, DAVID_GEN1, EVENT_BEAT_SWIMMER_DAVID_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I tried diving"
	line "for #MON, but"
	cont "it was a no go!"
	done

.BeatenText:
	text "Help!"
	done

.AfterText:
	text "You have to fish"
	line "for sea #MON!"
	done

TrainerSwimmerTony:
	trainer SWIMMER_GEN1, TONY_GEN1, EVENT_BEAT_SWIMMER_TONY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I look at the"
	line "sea to forget!"
	done

.BeatenText:
	text "Ooh! Traumatic!"
	done

.AfterText:
	text "I'm looking at the"
	line "sea to forget!"
	done

TrainerBeautyAnya:
	trainer BEAUTY_GEN1, ANYA_GEN1, EVENT_BEAT_BEAUTY_ANYA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Oh, I just love"
	line "your ride! Can I"
	cont "have it if I win?"
	done

.BeatenText:
	text "Oh! I lost!"
	done

.AfterText:
	text "It's still a long"
	line "way to go to"
	cont "SEAFOAM ISLANDS."
	done

TrainerBeautyAlice:
	trainer BEAUTY_GEN1, ALICE_GEN1, EVENT_BEAT_BEAUTY_ALICE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Swimming's great!"
	line "Sunburns aren't!"
	done

.BeatenText:
	text "Shocker!"
	done

.AfterText:
	text "My boy friend"
	line "wanted to swim to"
	cont "SEAFOAM ISLANDS."
	done

TrainerSwimmerAxle:
	trainer SWIMMER_GEN1, AXLE_GEN1, EVENT_BEAT_SWIMMER_AXLE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "These waters are"
	line "treacherous!"
	done

.BeatenText:
	text "Ooh! Dangerous!"
	done

.AfterText:
	text "I got a cramp!"
	line "Glub, glub..."
	done

TrainerBeautyConnie:
	trainer BEAUTY_GEN1, CONNIE_GEN1, EVENT_BEAT_BEAUTY_CONNIE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I swam here, but"
	line "I'm tired."
	done

.BeatenText:
	text "I'm exhausted..."
	done

.AfterText:
	text "LAPRAS is so big,"
	line "it must keep you"
	cont "dry on water."
	done

Route19_MapEvents:
	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 11,  9, BGEVENT_READ, Route19_NameSignScript

	def_object_events
	object_event  8,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSwimmerRichard, -1
	object_event 13,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSwimmerReece, -1
	object_event 13, 25, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMatthew, -1
	object_event  4, 27, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSwimmerDouglas, -1
	object_event 16, 31, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSwimmerDavid, -1
	object_event  9, 11, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSwimmerTony, -1
	object_event  8, 43, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBeautyAnya, -1
	object_event 11, 43, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyAlice, -1
	object_event  9, 42, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSwimmerAxle, -1
	object_event 10, 44, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyConnie, -1
