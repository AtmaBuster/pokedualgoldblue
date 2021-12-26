	object_const_def
	const ROUTE23_GUARD1
	const ROUTE23_GUARD2
	const ROUTE23_SWIMMER_GUY1
	const ROUTE23_SWIMMER_GUY2
	const ROUTE23_GUARD3
	const ROUTE23_GUARD4
	const ROUTE23_GUARD5

Route23_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_ROUTE_23_CASCADEBADGE
	scene_script DummyScript ; SCENE_ROUTE_23_THUNDERBADGE
	scene_script DummyScript ; SCENE_ROUTE_23_RAINBOWBADGE
	scene_script DummyScript ; SCENE_ROUTE_23_SOULBADGE
	scene_script DummyScript ; SCENE_ROUTE_23_MARSHBADGE
	scene_script DummyScript ; SCENE_ROUTE_23_VOLCANOBADGE
	scene_script DummyScript ; SCENE_ROUTE_23_EARTHBADGE
	scene_script DummyScript ; SCENE_ROUTE_23_FINISHED

	def_callbacks

Route23_HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_23_HIDDEN_FULL_RESTORE

Route23_HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_23_HIDDEN_ULTRA_BALL

Route23_HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_23_HIDDEN_MAX_ETHER

Route23_VictoryRoadSignScript:
	jumptext .Text
.Text:
	text "VICTORY ROAD GATE"
	line "- #MON LEAGUE"
	done

Route23_Guard1Script:
	checkflag ENGINE_CASCADEBADGE
	iftrue .Continue
	setval 0
	sjump Route23_GuardStopScript
.Continue:
	setval 0
	scall Route23_GuardContinueScript
	checkscene
	ifnotequal SCENE_ROUTE_23_CASCADEBADGE, DummyScript
	setscene SCENE_ROUTE_23_THUNDERBADGE
	end

Route23_Guard2Script:
	checkflag ENGINE_THUNDERBADGE
	iftrue .Continue
	setval 1
	sjump Route23_GuardStopScript
.Continue:
	setval 1
	scall Route23_GuardContinueScript
	checkscene
	ifnotequal SCENE_ROUTE_23_THUNDERBADGE, DummyScript
	setscene SCENE_ROUTE_23_RAINBOWBADGE
	end

Route23_Guard3Script:
	checkflag ENGINE_RAINBOWBADGE
	iftrue .Continue
	setval 2
	sjump Route23_GuardStopScript
.Continue:
	setval 2
	scall Route23_GuardContinueScript
	checkscene
	ifnotequal SCENE_ROUTE_23_RAINBOWBADGE, DummyScript
	setscene SCENE_ROUTE_23_SOULBADGE
	end

Route23_Guard4Script:
	checkflag ENGINE_SOULBADGE
	iftrue .Continue
	setval 3
	sjump Route23_GuardStopScript
.Continue:
	setval 3
	scall Route23_GuardContinueScript
	checkscene
	ifnotequal SCENE_ROUTE_23_SOULBADGE, DummyScript
	setscene SCENE_ROUTE_23_MARSHBADGE
	end

Route23_Guard5Script:
	checkflag ENGINE_MARSHBADGE
	iftrue .Continue
	setval 4
	sjump Route23_GuardStopScript
.Continue:
	setval 4
	scall Route23_GuardContinueScript
	checkscene
	ifnotequal SCENE_ROUTE_23_MARSHBADGE, DummyScript
	setscene SCENE_ROUTE_23_VOLCANOBADGE
	end

Route23_Guard6Script:
	checkflag ENGINE_VOLCANOBADGE
	iftrue .Continue
	setval 5
	sjump Route23_GuardStopScript
.Continue:
	setval 5
	scall Route23_GuardContinueScript
	checkscene
	ifnotequal SCENE_ROUTE_23_VOLCANOBADGE, DummyScript
	setscene SCENE_ROUTE_23_EARTHBADGE
	end

Route23_Guard7Script:
	checkflag ENGINE_EARTHBADGE
	iftrue .Continue
	setval 6
	sjump Route23_GuardStopScript
.Continue:
	setval 6
	scall Route23_GuardContinueScript
	checkscene
	ifnotequal SCENE_ROUTE_23_EARTHBADGE, DummyScript
	setscene SCENE_ROUTE_23_FINISHED
	end

Route23_GuardStopScript:
	callasm Route23_GetBadgeName_asm
	faceplayer
	opentext
	writetext Route23_GuardText1
	playsound SFX_WRONG
	waitsfx
	waitbutton
	closetext
	applymovement PLAYER, .MoveDown
	end

.MoveDown:
	step DOWN
	step_end

Route23_GuardContinueScript:
	callasm Route23_GetBadgeName_asm
	faceplayer
	opentext
	writetext Route23_GuardText2
	playsound SFX_ITEM
	waitsfx
	waitbutton
	writetext Route23_GuardText3
	waitbutton
	closetext
	end

Route23_GuardText1:
	text "You can pass here"
	line "only if you have"
	cont "the @"
	text_ram wStringBuffer3
	text "!"

	para "You don't have the"
	line "@"
	text_ram wStringBuffer3
	text " yet!"

	para "You have to have"
	line "it to get to"
	cont "#MON LEAGUE!"
	done

Route23_GuardText2:
	text "You can pass here"
	line "only if you have"
	cont "the @"
	text_ram wStringBuffer3
	text "!"

	para "Oh! That is the"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Route23_GuardText3:
	text "OK then! Please,"
	line "go right ahead!"
	done

Route23_GetBadgeName_asm:
	ld a, [wScriptVar]
	ld hl, .BadgeNames
	call GetNthString
	ld bc, STRING_BUFFER_LENGTH
	ld de, wStringBuffer3
	call CopyBytes
	ret

.BadgeNames:
	db "CASCADEBADGE@"
	db "THUNDERBADGE@"
	db "RAINBOWBADGE@"
	db "SOULBADGE@"
	db "MARSHBADGE@"
	db "VOLCANOBADGE@"
	db "EARTHBADGE@"

Route23_MapEvents:
	def_warp_events
	warp_event  7, 139, ROUTE_22_GATE, 3
	warp_event  8, 139, ROUTE_22_GATE, 4
	warp_event  4, 31, VICTORY_ROAD_1F, 1
	warp_event 14, 31, VICTORY_ROAD_2F, 2

	def_coord_events
	coord_event  0,  35, SCENE_ROUTE_23_EARTHBADGE, Route23_Guard7Script
	coord_event  1,  35, SCENE_ROUTE_23_EARTHBADGE, Route23_Guard7Script
	coord_event  2,  35, SCENE_ROUTE_23_EARTHBADGE, Route23_Guard7Script
	coord_event  3,  35, SCENE_ROUTE_23_EARTHBADGE, Route23_Guard7Script
	coord_event  5,  35, SCENE_ROUTE_23_EARTHBADGE, Route23_Guard7Script
	coord_event  6,  35, SCENE_ROUTE_23_EARTHBADGE, Route23_Guard7Script
	coord_event  7,  35, SCENE_ROUTE_23_EARTHBADGE, Route23_Guard7Script
	coord_event  6,  56, SCENE_ROUTE_23_VOLCANOBADGE, Route23_Guard6Script
	coord_event  7,  56, SCENE_ROUTE_23_VOLCANOBADGE, Route23_Guard6Script
	coord_event  8,  56, SCENE_ROUTE_23_VOLCANOBADGE, Route23_Guard6Script
	coord_event  9,  56, SCENE_ROUTE_23_VOLCANOBADGE, Route23_Guard6Script
	coord_event 11,  56, SCENE_ROUTE_23_VOLCANOBADGE, Route23_Guard6Script
	coord_event 12,  56, SCENE_ROUTE_23_VOLCANOBADGE, Route23_Guard6Script
	coord_event 13,  56, SCENE_ROUTE_23_VOLCANOBADGE, Route23_Guard6Script
	coord_event  4,  85, SCENE_ROUTE_23_MARSHBADGE, Route23_Guard5Script
	coord_event  5,  85, SCENE_ROUTE_23_MARSHBADGE, Route23_Guard5Script
	coord_event  6,  85, SCENE_ROUTE_23_MARSHBADGE, Route23_Guard5Script
	coord_event  7,  85, SCENE_ROUTE_23_MARSHBADGE, Route23_Guard5Script
	coord_event  9,  85, SCENE_ROUTE_23_MARSHBADGE, Route23_Guard5Script
	coord_event 10,  85, SCENE_ROUTE_23_MARSHBADGE, Route23_Guard5Script
	coord_event 11,  85, SCENE_ROUTE_23_MARSHBADGE, Route23_Guard5Script
	coord_event 12,  85, SCENE_ROUTE_23_MARSHBADGE, Route23_Guard5Script
	coord_event 13,  85, SCENE_ROUTE_23_MARSHBADGE, Route23_Guard5Script
	coord_event  8,  96, SCENE_ROUTE_23_SOULBADGE, Route23_Guard4Script
	coord_event  9,  96, SCENE_ROUTE_23_SOULBADGE, Route23_Guard4Script
	coord_event 10,  96, SCENE_ROUTE_23_SOULBADGE, Route23_Guard4Script
	coord_event 12,  96, SCENE_ROUTE_23_SOULBADGE, Route23_Guard4Script
	coord_event 13,  96, SCENE_ROUTE_23_SOULBADGE, Route23_Guard4Script
	coord_event 10, 105, SCENE_ROUTE_23_RAINBOWBADGE, Route23_Guard3Script
	coord_event 11, 105, SCENE_ROUTE_23_RAINBOWBADGE, Route23_Guard3Script
	coord_event 13, 105, SCENE_ROUTE_23_RAINBOWBADGE, Route23_Guard3Script
	coord_event 14, 105, SCENE_ROUTE_23_RAINBOWBADGE, Route23_Guard3Script
	coord_event 15, 105, SCENE_ROUTE_23_RAINBOWBADGE, Route23_Guard3Script
	coord_event  9, 119, SCENE_ROUTE_23_THUNDERBADGE, Route23_Guard2Script
	coord_event  6, 136, SCENE_ROUTE_23_CASCADEBADGE, Route23_Guard1Script
	coord_event  7, 136, SCENE_ROUTE_23_CASCADEBADGE, Route23_Guard1Script
	coord_event  9, 136, SCENE_ROUTE_23_CASCADEBADGE, Route23_Guard1Script

	def_bg_events
	bg_event  3, 33, BGEVENT_READ, Route23_VictoryRoadSignScript
	bg_event  9, 44, BGEVENT_ITEM, Route23_HiddenFullRestore
	bg_event 19, 70, BGEVENT_ITEM, Route23_HiddenUltraBall
	bg_event  8, 90, BGEVENT_ITEM, Route23_HiddenMaxEther

	def_object_events
	object_event  4, 35, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Guard7Script, -1
	object_event 10, 56, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Guard6Script, -1
	object_event  8, 85, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Guard5Script, -1
	object_event 11, 96, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Guard4Script, -1
	object_event 12, 105, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Guard3Script, -1
	object_event  8, 119, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Guard2Script, -1
	object_event  8, 136, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Guard1Script, -1
