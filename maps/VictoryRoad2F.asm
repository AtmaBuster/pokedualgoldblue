	object_const_def
	const VICTORYROAD2F_HIKER
	const VICTORYROAD2F_KANTO_SUPER_NERD1
	const VICTORYROAD2F_COOLTRAINER_M
	const VICTORYROAD2F_KANTO_SUPER_NERD2
	const VICTORYROAD2F_KANTO_SUPER_NERD3
	const VICTORYROAD2F_KANTO_BIRD
	const VICTORYROAD2F_POKE_BALL1
	const VICTORYROAD2F_POKE_BALL2
	const VICTORYROAD2F_POKE_BALL3
	const VICTORYROAD2F_POKE_BALL4
	const VICTORYROAD2F_KANTO_BOULDER1
	const VICTORYROAD2F_KANTO_BOULDER2
	const VICTORYROAD2F_KANTO_BOULDER3

VictoryRoad2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	callback MAPCALLBACK_TILES, .Blockade

.Blockade:
	checkevent EVENT_VICTORY_ROAD_2F_STONE_ON_BUTTON1
	iffalse .Skip1
	changeblock 6, 8, $15
.Skip1:
	checkevent EVENT_VICTORY_ROAD_2F_STONE_ON_BUTTON2
	iffalse .Skip2
	changeblock 22, 14, $1d
.Skip2:
	endcallback

.SetUpStoneTable:
	; checkevent EVENT_VICTORY_ROAD_BOULDER_1B
	; iffalse .UseStoneTable2
	usestonetable .StoneTable1
	endcallback

.UseStoneTable2:
	usestonetable .StoneTable2
	endcallback

.StoneTable1:
	stonetable 0, VICTORYROAD2F_KANTO_BOULDER1, .Boulder1
	stonetable 0, VICTORYROAD2F_KANTO_BOULDER3, .Boulder2
	db -1 ; end

.StoneTable2:
	stonetable 0, VICTORYROAD2F_KANTO_BOULDER1, .Boulder1
	stonetable 0, VICTORYROAD2F_KANTO_BOULDER3, .Boulder2
	db -1 ; end

.Boulder1:
	setevent EVENT_VICTORY_ROAD_2F_STONE_ON_BUTTON1
	refreshscreen $85
	changeblock 6, 8, $15
	reloadmappart
	closetext
	clearstonetable
	end

.Boulder2:
	setevent EVENT_VICTORY_ROAD_2F_STONE_ON_BUTTON2
	refreshscreen $85
	changeblock 22, 14, $1d
	reloadmappart
	closetext
	clearstonetable
	end

TrainerBlackbeltDaisuke:
	trainer BLACKBELT_GEN1, DAISUKE_GEN1, EVENT_BEAT_BLACKBELT_DAISUKE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "VICTORY ROAD is"
	line "the final test"
	cont "for trainers!"
	done

.BeatenText:
	text "Aiyah!"
	done

.AfterText:
	text "If you get stuck,"
	line "try moving some"
	cont "boulders around!"
	done

TrainerJugglerNelson:
	trainer JUGGLER_GEN1, NELSON_GEN1, EVENT_BEAT_JUGGLER_NELSON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Ah, so you wish"
	line "to challenge the"
	cont "ELITE FOUR?"
	done

.BeatenText:
	text "You got me!"
	done

.AfterText:
	text "<RIVAL> also came"
	line "through here!"
	done

TrainerTamerVincent:
	trainer TAMER_GEN1, VINCENT1_GEN1, EVENT_BEAT_TAMER_VINCENT_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Come on!"
	line "I'll whip you!"
	done

.BeatenText:
	text "I got whipped!"
	done

.AfterText:
	text "You earned the"
	line "right to be on"
	cont "VICTORY ROAD!"
	done

TrainerPokemaniacDawson:
	trainer POKEMANIAC_GEN1, DAWSON_GEN1, EVENT_BEAT_POKEMANIAC_DAWSON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "If you can get"
	line "through here, you"
	cont "can go meet the"
	cont "ELITE FOUR!"
	done

.BeatenText:
	text "No! Unbelievable!"
	done

.AfterText:
	text "I can beat you"
	line "when it comes to"
	cont "knowledge about"
	cont "#MON!"
	done

TrainerJugglerGregory:
	trainer JUGGLER_GEN1, GREGORY_GEN1, EVENT_BEAT_JUGGLER_GREGORY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Is VICTORY ROAD"
	line "too tough?"
	done

.BeatenText:
	text "Well done!"
	done

.AfterText:
	text "Many trainers give"
	line "up the challenge"
	cont "here."
	done

VictoryRoad2F_MoltresScript:
	opentext
	writetext .Text
	cry MOLTRES
	pause 15
	closetext
	loadwildmon MOLTRES, 50
	startbattle
	disappear VICTORYROAD2F_KANTO_BIRD
	reloadmapafterbattle
	end

.Text:
	text "Gyaoo!"
	done

VictoryRoad2F_TMSubmissionScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_SUBMISSION
ENDC

VictoryRoad2F_FullHealScript:
	itemball FULL_HEAL

VictoryRoad2F_TMMegaKickScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_MEGA_KICK
ENDC

VictoryRoad2F_GuardSpecScript:
	itemball GUARD_SPEC

VictoryRoad2F_HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_VICTORY_ROAD_2F_HIDDEN_ULTRA_BALL

VictoryRoad2F_HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VICTORY_ROAD_2F_HIDDEN_FULL_RESTORE

VictoryRoad2F_BoulderScript:
	jumpstd StrengthBoulderScript

VictoryRoad2F_MapEvents:
	def_warp_events
	warp_event  0,  8, VICTORY_ROAD_1F, 3
	warp_event 29,  7, ROUTE_23, 4
	warp_event 29,  8, ROUTE_23, 4
	warp_event 23,  7, VICTORY_ROAD_3F, 1
	warp_event 25, 14, VICTORY_ROAD_3F, 3
	warp_event 27,  7, VICTORY_ROAD_3F, 2
	warp_event  1,  1, VICTORY_ROAD_3F, 4
	warp_event 22, 16, VICTORY_ROAD_3F, 5

	def_coord_events

	def_bg_events
	bg_event  5,  2, BGEVENT_ITEM, VictoryRoad2F_HiddenUltraBall
	bg_event 26,  7, BGEVENT_ITEM, VictoryRoad2F_HiddenFullRestore

	def_object_events
	object_event 12,  9, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBlackbeltDaisuke, -1
	object_event 21, 13, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJugglerNelson, -1
	object_event 19,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerTamerVincent, -1
	object_event  4,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerPokemaniacDawson, -1
	object_event 26,  3, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJugglerGregory, -1
	object_event 11,  5, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2F_MoltresScript, EVENT_VICTORY_ROAD_2F_MOLTRES
	object_event 27,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2F_TMSubmissionScript, EVENT_VICTORY_ROAD_2F_TM_SUBMISSION
	object_event 18,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2F_FullHealScript, EVENT_VICTORY_ROAD_2F_FULL_HEAL
	object_event  9, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2F_TMMegaKickScript, EVENT_VICTORY_ROAD_2F_TM_MEGA_KICK
	object_event 11,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2F_GuardSpecScript, EVENT_VICTORY_ROAD_2F_GUARD_SPEC
	object_event  4, 14, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2F_BoulderScript, -1
	object_event  5,  5, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2F_BoulderScript, -1
	object_event 23, 16, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2F_BoulderScript, EVENT_VICTORY_ROAD_BOULDER_1B
