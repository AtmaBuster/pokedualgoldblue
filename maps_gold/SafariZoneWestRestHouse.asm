	object_const_def
	const SAFARIZONEWESTRESTHOUSE_KANTO_SCIENTIST
	const SAFARIZONEWESTRESTHOUSE_COOLTRAINER_M
	const SAFARIZONEWESTRESTHOUSE_KANTO_ERIKA

SafariZoneWestRestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneWestRestHouse_ScientistScript:
	jumptextfaceplayer .Text
.Text:
	text "Tossing ROCKs at"
	line "#MON might"
	cont "make them run,"
	cont "but they'll be"
	cont "easier to catch."
	done

SafariZoneWestRestHouse_CooltrainerScript:
	jumptextfaceplayer .Text
.Text:
	text "Using BAIT will"
	line "make #MON"
	cont "easier to catch."
	done

SafariZoneWestRestHouse_WomanScript:
	jumptextfaceplayer .Text
.Text:
	text "I hiked a lot, but"
	line "I didn't see any"
	cont "#MON I wanted."
	done

SafariZoneWestRestHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 8
	warp_event  3,  7, SAFARI_ZONE_WEST, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneWestRestHouse_ScientistScript, -1
	object_event  0,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneWestRestHouse_CooltrainerScript, -1
	object_event  6,  2, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneWestRestHouse_WomanScript, -1
