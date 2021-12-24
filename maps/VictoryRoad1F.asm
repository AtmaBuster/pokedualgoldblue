	object_const_def
	const VICTORYROAD1F_COOLTRAINER_F
	const VICTORYROAD1F_COOLTRAINER_M
	const VICTORYROAD1F_POKE_BALL1
	const VICTORYROAD1F_POKE_BALL2
	const VICTORYROAD1F_KANTO_BOULDER1
	const VICTORYROAD1F_KANTO_BOULDER2
	const VICTORYROAD1F_KANTO_BOULDER3

VictoryRoad1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 0, VICTORYROAD1F_KANTO_BOULDER1, .Boulder1
	db -1 ; end

.Boulder1:
	setevent EVENT_VICTORY_ROAD_1F_STONE_ON_BUTTON
	refreshscreen $85
	changeblock 8, 12, $1d
	reloadmappart
	closetext
	clearstonetable
	end

TrainerCooltrainerFNaomi:
	trainer COOLTRAINER_F_GEN1, NAOMI_GEN1, EVENT_BEAT_COOLTRAINER_F_NAOMI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I wonder if you"
	line "are good enough"
	cont "for me!"
	done

.BeatenText:
	text "I"
	line "lost out!"
	done

.AfterText:
	text "I never wanted to"
	line "lose to anybody!"
	done

TrainerCooltrainerMHank:
	trainer COOLTRAINER_M_GEN1, HANK_GEN1, EVENT_BEAT_COOLTRAINER_M_HANK_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I can see you're"
	line "good! Let me see"
	cont "exactly how good!"
	done

.BeatenText:
	text "I"
	line "had a chance..."
	done

.AfterText:
	text "I concede, you're"
	line "better than me!"
	done

VictoryRoad1F_TMSkyAttackScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_SKY_ATTACK
ENDC

VictoryRoad1F_RareCandyScript:
	itemball RARE_CANDY

VictoryRoad1F_BoulderScript:
	jumpstd StrengthBoulderScript

VictoryRoad1F_MapEvents:
	def_warp_events
	warp_event  8, 17, ROUTE_23, 3
	warp_event  9, 17, ROUTE_23, 3
	warp_event  1,  1, VICTORY_ROAD_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerFNaomi, -1
	object_event  3,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerMHank, -1
	object_event 11,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad1F_TMSkyAttackScript, EVENT_VICTORY_ROAD_1F_TM_SKY_ATTACK
	object_event  9,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad1F_RareCandyScript, EVENT_VICTORY_ROAD_1F_RARE_CANDY
	object_event  5, 15, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad1F_BoulderScript, -1
	object_event 14,  2, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad1F_BoulderScript, -1
	object_event  2, 10, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad1F_BoulderScript, -1
