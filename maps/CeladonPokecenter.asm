	object_const_def
	const CELADONPOKECENTER_KANTO_NURSE
	const CELADONPOKECENTER_GENTLEMAN
	const CELADONPOKECENTER_KANTO_BEAUTY
	const CELADONPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const CELADONPOKECENTER_COUCH_MAN
ENDC

CeladonPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript

CeladonPokecenter_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "# FLUTE awakens"
	line "#MON with a"
	cont "sound that only"
	cont "they can hear!"
	done

CeladonPokecenter_WomanScript:
	jumptextfaceplayer .Text
.Text:
	text "I rode uphill on"
	line "CYCLING ROAD from"
	cont "FUCHSIA!"
	done

CeladonPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

CeladonPokecenter_BenchGuyScript:
	jumptext .Text
.Text:
	text "If I had a BIKE,"
	line "I would go to"
	cont "CYCLING ROAD!"
	done

CeladonPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, CELADON_CITY, 6
	warp_event  4,  7, CELADON_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, CeladonPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter_NurseScript, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter_ManScript, -1
	object_event 10,  5, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter_WomanScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
