	object_const_def
	const MTMOON1F_HIKER
	const MTMOON1F_KANTO_YOUNGSTER1
	const MTMOON1F_COOLTRAINER_F1
	const MTMOON1F_KANTO_SUPER_NERD
	const MTMOON1F_COOLTRAINER_F2
	const MTMOON1F_KANTO_YOUNGSTER2
	const MTMOON1F_KANTO_YOUNGSTER3
	const MTMOON1F_POKE_BALL1
	const MTMOON1F_POKE_BALL2
	const MTMOON1F_POKE_BALL3
	const MTMOON1F_POKE_BALL4
	const MTMOON1F_POKE_BALL5
	const MTMOON1F_POKE_BALL6

MtMoon1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHikerMarcos:
	trainer HIKER_GEN1, MARCOS_GEN1, EVENT_BEAT_HIKER_MARCOS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "WHOA! You shocked"
	line "me! Oh, you're"
	cont "just a kid!"
	done

.BeatenText:
	text "Wow!"
	line "Shocked again!"
	done

.AfterText:
	text "Kids like you"
	line "shouldn't be"
	cont "here!"
	done

TrainerYoungsterJosh:
	trainer YOUNGSTER_GEN1, JOSH_GEN1, EVENT_BEAT_YOUNGSTER_JOSH_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Did you come to"
	line "explore too?"
	done

.BeatenText:
	text "Losing"
	line "stinks!"
	done

.AfterText:
	text "I came down here"
	line "to show off to"
	cont "girls."
	done

TrainerLassMiriam:
	trainer LASS_GEN1, MIRIAM_GEN1, EVENT_BEAT_LASS_MIRIAM_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Wow! It's way"
	line "bigger in here"
	cont "than I thought!"
	done

.BeatenText:
	text "Oh!"
	line "I lost it!"
	done

.AfterText:
	text "How do you get"
	line "out of here?"
	done

TrainerSuperNerdJovan:
	trainer SUPER_NERD_GEN1, JOVAN_GEN1, EVENT_BEAT_SUPER_NERD_JOVAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What! Don't sneak"
	line "up on me!"
	done

.BeatenText:
	text "My"
	line "#MON won't do!"
	done

.AfterText:
	text "I have to find"
	line "stronger #MON."
	done

TrainerLassIris:
	trainer LASS_GEN1, IRIS_GEN1, EVENT_BEAT_LASS_IRIS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What? I'm waiting"
	line "for my friends to"
	cont "find me here."
	done

.BeatenText:
	text "I lost?"
	done

.AfterText:
	text "I heard there are"
	line "some very rare"
	cont "fossils here."
	done

TrainerBugCatcherKent:
	trainer BUG_CATCHER_GEN1, KENT_GEN1, EVENT_BEAT_BUG_CATCHER_KENT_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Suspicious men"
	line "are in the cave."
	cont "What about you?"
	done

.BeatenText:
	text "You"
	line "got me!"
	done

.AfterText:
	text "I saw them! I'm"
	line "sure they're from"
	cont "TEAM ROCKET!"
	done

TrainerBugCatcherRobby:
	trainer BUG_CATCHER_GEN1, ROBBY_GEN1, EVENT_BEAT_BUG_CATCHER_ROBBY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Go through this"
	line "cave to get to"
	cont "CERULEAN CITY!"
	done

.BeatenText:
	text "I"
	line "lost."
	done

.AfterText:
	text "ZUBAT is tough!"
	line "But, it can be"
	cont "useful if you"
	cont "catch one."
	done

MtMoon1F_Potion1Script:
	itemball POTION

MtMoon1F_MoonStoneScript:
	itemball MOON_STONE

MtMoon1F_RareCandyScript:
	itemball RARE_CANDY

MtMoon1F_EscapeRopeScript:
	itemball ESCAPE_ROPE

MtMoon1F_Potion2Script:
	itemball POTION

MtMoon1F_TMWaterGunScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_WATER_GUN
ENDC

MtMoon1FSignScript:
	jumptext .Text
.Text:
	text "Beware! ZUBAT is"
	line "a blood sucker!"
	done

MtMoon1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 35, ROUTE_4, 2
	warp_event 15, 35, ROUTE_4, 2
	warp_event  5,  5, MT_MOON_B1F, 1
	warp_event 17, 11, MT_MOON_B1F, 3
	warp_event 25, 15, MT_MOON_B1F, 4

	def_coord_events

	def_bg_events
	bg_event 15, 23, BGEVENT_READ, MtMoon1FSignScript

	def_object_events
	object_event  5,  6, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHikerMarcos, -1
	object_event 12, 16, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJosh, -1
	object_event 30,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassMiriam, -1
	object_event 24, 31, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdJovan, -1
	object_event 16, 23, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassIris, -1
	object_event  7, 22, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherKent, -1
	object_event 30, 27, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherRobby, -1
	object_event  2, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1F_Potion1Script, EVENT_MT_MOON_1F_POTION1
	object_event  2,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1F_MoonStoneScript, EVENT_MT_MOON_1F_MOON_STONE
	object_event 35, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1F_RareCandyScript, EVENT_MT_MOON_1F_RARE_CANDY
	object_event 36, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1F_EscapeRopeScript, EVENT_MT_MOON_1F_ESCAPE_ROPE
	object_event 20, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1F_Potion2Script, EVENT_MT_MOON_1F_POTION2
	object_event  5, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1F_TMWaterGunScript, EVENT_MT_MOON_1F_TM_WATER_GUN
