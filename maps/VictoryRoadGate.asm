	object_const_def
	const VICTORYROADGATE_OFFICER
	const VICTORYROADGATE_BLACK_BELT1
	const VICTORYROADGATE_BLACK_BELT2

VictoryRoadGate_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

VictoryRoadGateBadgeCheckScene:
	turnobject PLAYER, LEFT
	sjump VictoryRoadGateBadgeCheckScript

VictoryRoadGateOfficerScript:
	faceplayer
VictoryRoadGateBadgeCheckScript:
	opentext
	writetext VictoryRoadGateOfficerText
	promptbutton
	readvar VAR_BADGES
	ifgreater NUM_JOHTO_BADGES - 1, .AllEightBadges
	writetext VictoryRoadGateNotEnoughBadgesText
	waitbutton
	closetext
	applymovement PLAYER, VictoryRoadGateStepBackMovement
	end

.AllEightBadges:
	writetext VictoryRoadGateEightBadgesText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end

VictoryRoadGateLeftBlackBeltScript:
	jumptextfaceplayer VictoryRoadGateLeftBlackBeltText

VictoryRoadGateRightBlackBeltScript:
	jumptextfaceplayer VictoryRoadGateRightBlackBeltText

VictoryRoadGateStepBackMovement:
IF DEF(_GOLD)
	step DOWN
ELIF DEF(_BLUE)
	step UP
ENDC
	step_end

VictoryRoadGateOfficerText:
	text "Only trainers who"
	line "have proven them-"
	cont "selves may pass."
	done

VictoryRoadGateNotEnoughBadgesText:
	text "You don't have all"
	line "the GYM BADGES of"
IF DEF(_GOLD)
	cont "JOHTO."
ELIF DEF(_BLUE)
	cont "KANTO."
ENDC

	para "I'm sorry, but I"
	line "can't let you go"
	cont "through."
	done

VictoryRoadGateEightBadgesText:
	text "Oh! The eight"
IF DEF(_GOLD)
	line "BADGES of JOHTO!"
ELIF DEF(_BLUE)
	line "BADGES of KANTO!"
ENDC

	para "Please, go right"
	line "ahead, sir!"
	done

VictoryRoadGateLeftBlackBeltText:
	text "This way leads to"
	line "MT.SILVER."

	para "You'll see scary-"
	line "strong #MON out"
	cont "there."
	done

VictoryRoadGateRightBlackBeltText:
	text "Off to the #MON"
	line "LEAGUE, are you?"

	para "The ELITE FOUR are"
	line "so strong it's"

	para "scary, and they're"
	line "ready for you!"
	done

VictoryRoadGate_MapEvents:
	def_warp_events
	warp_event 17,  7, ROUTE_22_GATE, 5
	warp_event 18,  7, ROUTE_22_GATE, 6
	warp_event  9, 17, ROUTE_26, 1
	warp_event 10, 17, ROUTE_26, 1
	warp_event  9,  0, VICTORY_ROAD, 1
	warp_event 10,  0, VICTORY_ROAD, 1
	warp_event  1,  7, ROUTE_28, 2
	warp_event  2,  7, ROUTE_28, 2

	def_coord_events
	coord_event 10, 11, SCENE_DEFAULT, VictoryRoadGateBadgeCheckScene

	def_bg_events

	def_object_events
	object_event  8, 11, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
	object_event  7,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateLeftBlackBeltScript, EVENT_OPENED_MT_SILVER
IF DEF(_GOLD)
	object_event 19,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateRightBlackBeltScript, EVENT_FOUGHT_SNORLAX
ENDC
