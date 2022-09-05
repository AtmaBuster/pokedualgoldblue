	object_const_def
	const SAFARIZONENORTH_POKE_BALL1
	const SAFARIZONENORTH_POKE_BALL2

SafariZoneNorth_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneNorth_ProteinScript:
	itemball PROTEIN

SafariZoneNorth_TMSkullBashScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_SKULL_BASH
ENDC

SafariZoneNorth_RestHouseSignScript:
	jumptext .Text
.Text:
	text "REST HOUSE"
	done

SafariZoneNorth_TrainerTips1Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "The SECRET HOUSE"
	line "is still ahead!"
	done

SafariZoneNorth_LocationSignScript:
	jumptext .Text
.Text:
	text "AREA 2"
	done

SafariZoneNorth_TrainerTips2Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "#MON hide in"
	line "tall grass!"

	para "Zigzag through"
	line "grassy areas to"
	cont "flush them out."
	done

SafariZoneNorth_TrainerTips3Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Win a free HM for"
	line "finding the"
	cont "SECRET HOUSE!"
	done

SafariZoneNorth_MapEvents:
	def_warp_events
	warp_event  2, 35, SAFARI_ZONE_WEST, 1
	warp_event  3, 35, SAFARI_ZONE_WEST, 2
	warp_event  8, 35, SAFARI_ZONE_WEST, 3
	warp_event  9, 35, SAFARI_ZONE_WEST, 4
	warp_event 20, 35, SAFARI_ZONE_CENTER, 5
	warp_event 21, 35, SAFARI_ZONE_CENTER, 6
	warp_event 39, 30, SAFARI_ZONE_EAST, 1
	warp_event 39, 31, SAFARI_ZONE_EAST, 2
	warp_event 35,  3, SAFARI_ZONE_NORTH_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 36,  4, BGEVENT_READ, SafariZoneNorth_RestHouseSignScript
	bg_event  4, 25, BGEVENT_READ, SafariZoneNorth_TrainerTips1Script
	bg_event 13, 31, BGEVENT_READ, SafariZoneNorth_LocationSignScript
	bg_event 19, 33, BGEVENT_READ, SafariZoneNorth_TrainerTips2Script
	bg_event 26, 28, BGEVENT_READ, SafariZoneNorth_TrainerTips3Script

	def_object_events
	object_event 25,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneNorth_ProteinScript, EVENT_SAFARI_ZONE_NORTH_PROTEIN
	object_event 19,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneNorth_TMSkullBashScript, EVENT_SAFARI_ZONE_NORTH_TM_SKULL_BASH
