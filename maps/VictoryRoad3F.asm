	object_const_def
	const VICTORYROAD3F_COOLTRAINER_M1
	const VICTORYROAD3F_COOLTRAINER_F1
	const VICTORYROAD3F_COOLTRAINER_M2
	const VICTORYROAD3F_COOLTRAINER_F2
	const VICTORYROAD3F_POKE_BALL1
	const VICTORYROAD3F_POKE_BALL2
	const VICTORYROAD3F_KANTO_BOULDER1
	const VICTORYROAD3F_KANTO_BOULDER2
	const VICTORYROAD3F_KANTO_BOULDER3
	const VICTORYROAD3F_KANTO_BOULDER4

VictoryRoad3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	callback MAPCALLBACK_TILES, .Blockade

.Blockade:
	checkevent EVENT_VICTORY_ROAD_3F_STONE_ON_BUTTON
	iffalse .Skip
	changeblock 6, 10, $1d
.Skip:
	endcallback

.SetUpStoneTable:
	checkevent EVENT_VICTORY_ROAD_3F_STONE_ON_BUTTON
	iftrue .UseTable2
	usestonetable .Table1
	endcallback

.UseTable2:
	usestonetable .Table2
	endcallback

.Table1:
	stonetable 5, VICTORYROAD3F_KANTO_BOULDER4, .Boulder1
	stonetable 0, VICTORYROAD3F_KANTO_BOULDER1, .Boulder2
	stonetable 0, VICTORYROAD3F_KANTO_BOULDER3, .Boulder2
	db -1 ; end

.Table2:
	stonetable 5, VICTORYROAD3F_KANTO_BOULDER4, .Boulder1
	db -1 ; end

.Boulder1:
	pause 20
	playsound SFX_STRENGTH
	disappear VICTORYROAD3F_KANTO_BOULDER4
	clearevent EVENT_VICTORY_ROAD_BOULDER_1B
	end

.Boulder2:
	setevent EVENT_VICTORY_ROAD_2F_STONE_ON_BUTTON1
	refreshscreen $85
	changeblock 6, 10, $1d
	reloadmappart
	closetext
	usestonetable .Table2
	end

TrainerCooltrainerMBen:
	trainer COOLTRAINER_M_GEN1, BEN_GEN1, EVENT_BEAT_COOLTRAINER_M_BEN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I heard rumors of"
	line "a child prodigy!"
	done

.BeatenText:
	text "The"
	line "rumors were true!"
	done

.AfterText:
	text "You beat GIOVANNI"
	line "of TEAM ROCKET?"
	done

TrainerCooltrainerFTina:
	trainer COOLTRAINER_F_GEN1, TINA_GEN1, EVENT_BEAT_COOLTRAINER_F_TINA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'll show you just"
	line "how good you are!"
	done

.BeatenText:
	text "I'm"
	line "furious!"
	done

.AfterText:
	text "You showed me just"
	line "how good I was!"
	done

TrainerCooltrainerMColby:
	trainer COOLTRAINER_M_GEN1, COLBY_GEN1, EVENT_BEAT_COOLTRAINER_M_COLBY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Only the chosen"
	line "can pass here!"
	done

.BeatenText:
	text "I"
	line "don't believe it!"
	done

.AfterText:
	text "All trainers here"
	line "are headed to the"
	cont "#MON LEAGUE!"
	cont "Be careful!"
	done

TrainerCooltrainerFAlexa:
	trainer COOLTRAINER_F_GEN1, ALEXA_GEN1, EVENT_BEAT_COOLTRAINER_F_ALEXA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Trainers live to"
	line "seek stronger"
	cont "opponents!"
	done

.BeatenText:
	text "Oh!"
	line "So strong!"
	done

.AfterText:
	text "By fighting tough"
	line "battles, you get"
	cont "stronger!"
	done

VictoryRoad3F_MaxReviveScript:
	itemball MAX_REVIVE

VictoryRoad3F_TMExplosionScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_EXPLOSION
ENDC

VictoryRoad3F_BoulderScript:
	jumpstd StrengthBoulderScript

VictoryRoad3F_MapEvents:
	def_warp_events
	warp_event 23,  7, VICTORY_ROAD_2F, 4
	warp_event 26,  8, VICTORY_ROAD_2F, 6
	warp_event 27, 15, VICTORY_ROAD_2F, 5
	warp_event  2,  0, VICTORY_ROAD_2F, 7
	warp_event 23, 15, VICTORY_ROAD_2F, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event 28,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerMBen, -1
	object_event  7, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerFTina, -1
	object_event  6, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerMColby, -1
	object_event 13,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerFAlexa, -1
	object_event 26,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad3F_MaxReviveScript, EVENT_VICTORY_ROAD_3F_MAX_REVIVE
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad3F_TMExplosionScript, EVENT_VICTORY_ROAD_3F_TM_EXPLOSION
	object_event 22,  3, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3F_BoulderScript, -1
	object_event 13, 12, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3F_BoulderScript, -1
	object_event 24, 10, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3F_BoulderScript, -1
	object_event 22, 15, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3F_BoulderScript, EVENT_VICTORY_ROAD_BOULDER_1A
