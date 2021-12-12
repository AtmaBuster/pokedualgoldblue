	object_const_def
	const TRADECENTER_CHRIS1
	const TRADECENTER_CHRIS2

TradeCenter_MapScripts:
	def_scene_scripts
	scene_script .InitializeTradeCenter ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .SetWhichChris

.InitializeTradeCenter:
	sdefer .InitializeAndPreparePokecenter2F
	end

.DummyScene:
	end

.SetWhichChris:
	special CableClubCheckWhichChris
	iffalse .Chris2
	disappear TRADECENTER_CHRIS2
	appear TRADECENTER_CHRIS1
	endcallback

.Chris2:
	disappear TRADECENTER_CHRIS1
	appear TRADECENTER_CHRIS2
	endcallback

.InitializeAndPreparePokecenter2F:
	setscene SCENE_FINISHED
	setmapscene POKECENTER_2F, SCENE_POKECENTER2F_LEAVE_TRADE_CENTER
	end

TradeCenterConsoleScript:
	special TradeCenter
	newloadmap MAPSETUP_LINKRETURN
	end

TradeCenterFriendScript: ; unreferenced
	opentext
	writetext TradeCenterFriendReadyText
	waitbutton
	closetext
	end

TradeCenterFriendReadyText:
	text "Your friend is"
	line "ready."
	done

TradeCenter_MapEvents:
	def_warp_events
	warp_event  4,  7, POKECENTER_2F, 2
	warp_event  5,  7, POKECENTER_2F, 2

	def_coord_events

	def_bg_events
	bg_event  4,  4, BGEVENT_RIGHT, TradeCenterConsoleScript
	bg_event  5,  4, BGEVENT_LEFT, TradeCenterConsoleScript

	def_object_events
	object_event  3,  4, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CableClubFriendScript, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  4, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CableClubFriendScript, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
