	object_const_def
	const SAFARIZONEWEST_POKE_BALL1
	const SAFARIZONEWEST_POKE_BALL2
	const SAFARIZONEWEST_POKE_BALL3
	const SAFARIZONEWEST_POKE_BALL4

SafariZoneWest_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneWest_MaxPotionScript:
	itemball MAX_POTION

SafariZoneWest_TMDoubleTeamScript:
	itemball TM_DOUBLE_TEAM

SafariZoneWest_MaxReviveScript:
	itemball MAX_REVIVE

SafariZoneWest_GoldTeethScript:
	itemball GOLD_TEETH

SafariZoneWest_RestHouseSignScript:
	jumptext .Text
.Text:
	text "REST HOUSE"
	done

SafariZoneWest_RequestNoticeScript:
	jumptext .Text
.Text:
	text "REQUEST NOTICE"

	para "Please find the"
	line "SAFARI WARDEN's"
	cont "lost GOLD TEETH."
	cont "They're around"
	cont "here somewhere."

	para "Reward offered!"
	line "Contact: WARDEN"
	done

SafariZoneWest_TrainerTipsScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Zone Exploration"
	line "Campaign!"

	para "The Search for"
	line "the SECRET HOUSE!"
	done

SafariZoneWest_LocationSignScript:
	jumptext .Text
.Text:
	text "AREA 3"
	line "EAST: CENTER AREA"
	done

SafariZoneWest_HiddenRevive:
	hiddenitem REVIVE, EVENT_SAFARI_ZONE_WEST_HIDDEN_REVIVE

SafariZoneWest_MapEvents:
	def_warp_events
	warp_event 20,  0, SAFARI_ZONE_NORTH, 1
	warp_event 21,  0, SAFARI_ZONE_NORTH, 2
	warp_event 26,  0, SAFARI_ZONE_NORTH, 3
	warp_event 27,  0, SAFARI_ZONE_NORTH, 4
	warp_event 29, 22, SAFARI_ZONE_CENTER, 3
	warp_event 29, 23, SAFARI_ZONE_CENTER, 4
	warp_event  3,  3, SAFARI_ZONE_SECRET_HOUSE, 1
	warp_event 11, 11, SAFARI_ZONE_WEST_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 12, 12, BGEVENT_READ, SafariZoneWest_RestHouseSignScript
	bg_event 17,  3, BGEVENT_READ, SafariZoneWest_RequestNoticeScript
	bg_event 26,  4, BGEVENT_READ, SafariZoneWest_TrainerTipsScript
	bg_event 24, 22, BGEVENT_READ, SafariZoneWest_LocationSignScript
	bg_event  6,  5, BGEVENT_ITEM, SafariZoneWest_HiddenRevive

	def_object_events
	object_event  8, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWest_MaxPotionScript, EVENT_SAFARI_ZONE_WEST_MAX_POTION
	object_event  9,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWest_TMDoubleTeamScript, EVENT_SAFARI_ZONE_WEST_TM_DOUBLE_TEAM
	object_event 18, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWest_MaxReviveScript, EVENT_SAFARI_ZONE_WEST_MAX_REVIVE
	object_event 19,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWest_GoldTeethScript, EVENT_SAFARI_ZONE_WEST_GOLD_TEETH
