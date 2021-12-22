	object_const_def
	const SAFARIZONECENTER_POKE_BALL

SafariZoneCenter_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneCenter_NuggetScript:
	itemball NUGGET
SafariZoneCenter_RestHouseSignScript:
	jumptext .Text
.Text:
	text "REST HOUSE"
	done

SafariZoneCenter_TrainerTipsScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Press the START"
	line "Button to check"
	cont "remaining time!"
	done

SafariZoneCenter_MapEvents:
	def_warp_events
	warp_event 14, 25, SAFARI_ZONE_GATE, 3
	warp_event 15, 25, SAFARI_ZONE_GATE, 4
	warp_event  0, 10, SAFARI_ZONE_WEST, 5
	warp_event  0, 11, SAFARI_ZONE_WEST, 6
	warp_event 14,  0, SAFARI_ZONE_NORTH, 5
	warp_event 15,  0, SAFARI_ZONE_NORTH, 6
	warp_event 29, 10, SAFARI_ZONE_EAST, 3
	warp_event 29, 11, SAFARI_ZONE_EAST, 4
	warp_event 17, 19, SAFARI_ZONE_CENTER_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 18, 20, BGEVENT_READ, SafariZoneCenter_RestHouseSignScript
	bg_event 14, 22, BGEVENT_READ, SafariZoneCenter_TrainerTipsScript

	def_object_events
	object_event 14, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneCenter_NuggetScript, EVENT_SAFARI_ZONE_CENTER_NUGGET
