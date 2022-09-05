	object_const_def
	const SAFARIZONENORTHRESTHOUSE_KANTO_SCIENTIST
	const SAFARIZONENORTHRESTHOUSE_SAFARI_ZONE_WORKER
	const SAFARIZONENORTHRESTHOUSE_GENTLEMAN

SafariZoneNorthRestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneNorthRestHouse_ScientistScript:
	jumptextfaceplayer .Text
.Text:
	text "You can keep any"
	line "item you find on"
	cont "the ground here."

	para "But, you'll run"
	line "out of time if"
	cont "you try for all"
	cont "of them at once!"
	done

SafariZoneNorthRestHouse_WorkerScript:
	jumptextfaceplayer .Text
.Text:
	text "Go to the deepest"
	line "part of the"
	cont "SAFARI ZONE. You"
	cont "will win a prize!"
	done

SafariZoneNorthRestHouse_FlareonGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "My EEVEE evolved"
	line "into FLAREON!"

	para "But, a friend's"
	line "EEVEE turned into"
	cont "a VAPOREON!"
	cont "I wonder why?"
	done

SafariZoneNorthRestHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_NORTH, 9
	warp_event  3,  7, SAFARI_ZONE_NORTH, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneNorthRestHouse_ScientistScript, -1
	object_event  3,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneNorthRestHouse_WorkerScript, -1
	object_event  1,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneNorthRestHouse_FlareonGuyScript, -1
