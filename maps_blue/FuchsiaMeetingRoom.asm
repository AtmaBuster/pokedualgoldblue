	object_const_def
	const FUCHSIAMEETINGROOM_SAFARI_ZONE_WORKER1
	const FUCHSIAMEETINGROOM_SAFARI_ZONE_WORKER2
	const FUCHSIAMEETINGROOM_SAFARI_ZONE_WORKER3

FuchsiaMeetingRoom_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaMeetingRoom_Worker1Script:
	jumptextfaceplayer .Text
.Text:
	text "We nicknamed the"
	line "WARDEN SLOWPOKE."

	para "He and SLOWPOKE"
	line "both look vacant!"
	done

FuchsiaMeetingRoom_Worker2Script:
	jumptextfaceplayer .Text
.Text:
	text "SLOWPOKE is very"
	line "knowledgeable"
	cont "about #MON!"

	para "He even has some"
	line "fossils of rare,"
	cont "extinct #MON!"
	done

FuchsiaMeetingRoom_Worker3Script:
	jumptextfaceplayer .Text
.Text:
	text "SLOWPOKE came in,"
	line "but I couldn't"
	cont "understand him."

	para "I think he's got"
	line "a speech problem!"
	done

FuchsiaMeetingRoom_MapEvents:
	def_warp_events
	warp_event  4,  7, FUCHSIA_CITY, 7
	warp_event  5,  7, FUCHSIA_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMeetingRoom_Worker1Script, -1
	object_event  0,  2, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMeetingRoom_Worker2Script, -1
	object_event 10,  1, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMeetingRoom_Worker3Script, -1
