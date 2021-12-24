	object_const_def
	const FUCHSIAPOKECENTER_KANTO_NURSE
	const FUCHSIAPOKECENTER_KANTO_ROCKER
	const FUCHSIAPOKECENTER_COOLTRAINER_F
	const FUCHSIAPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const FUCHSIAPOKECENTER_COUCH_MAN
ENDC

FuchsiaPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript

FuchsiaPokecenter_RockerScript:
	jumptextfaceplayer .Text
.Text:
	text "You can't win"
	line "with just one"
	cont "strong #MON."

	para "It's tough, but"
	line "you have to raise"
	cont "them evenly."
	done

FuchsiaPokecenter_CooltrainerScript:
	jumptextfaceplayer .Text
.Text:
	text "There's a narrow"
	line "trail west of"
	cont "VIRIDIAN CITY."

	para "It goes to #MON"
	line "LEAGUE HQ."
	cont "The HQ governs"
	cont "all trainers."
	done

FuchsiaPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

FuchsiaPokecenter_BenchGuyScript:
	jumptext .Text
.Text:
	text "If you're studying "
	line "#MON, visit"
	cont "the SAFARI ZONE."

	para "It has all sorts"
	line "of rare #MON."
	done

FuchsiaPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, FUCHSIA_CITY, 3
	warp_event  4,  7, FUCHSIA_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, FuchsiaPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter_NurseScript, -1
	object_event  2,  3, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter_RockerScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter_CooltrainerScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
