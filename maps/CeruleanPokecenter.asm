	object_const_def
	const CERULEANPOKECENTER_KANTO_NURSE
	const CERULEANPOKECENTER_KANTO_SUPER_NERD
	const CERULEANPOKECENTER_GENTLEMAN
	const CERULEANPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const CERULEANPOKECENTER_COUCH_MAN
ENDC

CeruleanPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript

CeruleanPokecenter_SuperNerdScript:
	jumptextfaceplayer .Text
.Text:
	text "That BILL!"

	para "I heard that"
	line "he'll do whatever"
	cont "it takes to get"
	cont "rare #MON!"
	done

CeruleanPokecenter_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "Have you heard"
	line "about BILL?"

	para "Everyone calls"
	line "him a #MANIAC!"

	para "I think people"
	line "are just jealous"
	cont "of BILL, though."

	para "Who wouldn't want"
	line "to boast about"
	cont "their #MON?"
	done

CeruleanPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

CeruleanPokecenter_BenchGuyScript:
	jumptext .Text
.Text:
	text "BILL has lots of"
	line "#MON!"

	para "He collects rare"
	line "ones too!"
	done

CeruleanPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 3
	warp_event  4,  7, CERULEAN_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, CeruleanPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter_NurseScript, -1
	object_event 10,  5, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter_SuperNerdScript, -1
	object_event  4,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter_ManScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
