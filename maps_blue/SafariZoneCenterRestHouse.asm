	object_const_def
	const SAFARIZONECENTERRESTHOUSE_GIRL
	const SAFARIZONECENTERRESTHOUSE_KANTO_SCIENTIST

SafariZoneCenterRestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneCenterRestHouse_SaraScript:
	jumptextfaceplayer .Text
.Text:
	text "SARA: Where did"
	line "my boy friend,"
	cont "ERIK, go?"
	done

SafariZoneCenterRestHouse_ScientistScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm catching"
	line "#MON to take"
	cont "home as gifts!"
	done

SafariZoneCenterRestHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_CENTER, 9
	warp_event  3,  7, SAFARI_ZONE_CENTER, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneCenterRestHouse_SaraScript, -1
	object_event  1,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneCenterRestHouse_ScientistScript, -1
