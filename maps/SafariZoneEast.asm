	object_const_def
	const SAFARIZONEEAST_POKE_BALL1
	const SAFARIZONEEAST_POKE_BALL2
	const SAFARIZONEEAST_POKE_BALL3
	const SAFARIZONEEAST_POKE_BALL4

SafariZoneEast_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneEast_FullRestoreScript:
	itemball FULL_RESTORE

SafariZoneEast_MaxPotionScript:
	itemball MAX_POTION

SafariZoneEast_CarbosScript:
	itemball CARBOS

SafariZoneEast_TMEggBombScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_EGG_BOMB
ENDC

SafariZoneEast_RestHouseSignScript:
	jumptext .Text
.Text:
	text "REST HOUSE"
	done

SafariZoneEast_TrainerTipsScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "The remaining time"
	line "declines only"
	cont "while you walk!"
	done

SafariZoneEast_LocationSignScript:
	jumptext .Text
.Text:
	text "CENTER AREA"
	line "NORTH: AREA 2"
	done

SafariZoneEast_MapEvents:
	def_warp_events
	warp_event  0,  4, SAFARI_ZONE_NORTH, 7
	warp_event  0,  5, SAFARI_ZONE_NORTH, 8
	warp_event  0, 22, SAFARI_ZONE_CENTER, 7
	warp_event  0, 23, SAFARI_ZONE_CENTER, 7
	warp_event 25,  9, SAFARI_ZONE_EAST_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 26, 10, BGEVENT_READ, SafariZoneEast_RestHouseSignScript
	bg_event  6,  4, BGEVENT_READ, SafariZoneEast_TrainerTipsScript
	bg_event  5, 23, BGEVENT_READ, SafariZoneEast_LocationSignScript

	def_object_events
	object_event 21, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEast_FullRestoreScript, EVENT_SAFARI_ZONE_EAST_FULL_RESTORE
	object_event  3,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEast_MaxPotionScript, EVENT_SAFARI_ZONE_EAST_MAX_POTION
	object_event 20, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEast_CarbosScript, EVENT_SAFARI_ZONE_EAST_CARBOS
	object_event 15, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEast_TMEggBombScript, EVENT_SAFARI_ZONE_EAST_TM_EGG_BOMB
