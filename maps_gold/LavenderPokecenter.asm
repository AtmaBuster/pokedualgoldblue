	object_const_def
	const LAVENDERPOKECENTER_KANTO_NURSE
	const LAVENDERPOKECENTER_GENTLEMAN
	const LAVENDERPOKECENTER_LITTLE_GIRL
	const LAVENDERPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const LAVENDERPOKECENTER_COUCH_MAN
ENDC

LavenderPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript

LavenderPokecenter_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "TEAM ROCKET will"
	line "do anything for"
	cont "the sake of gold!"
	done

LavenderPokecenter_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "I saw CUBONE's"
	line "mother die trying"
	cont "to escape from"
	cont "TEAM ROCKET!"
	done

LavenderPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

LavenderPokecenter_BenchGuyScript:
	jumptext .Text
.Text:
	text "CUBONEs wear"
	line "skulls, right?"

	para "People will pay a"
	line "lot for one!"
	done

LavenderPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 1
	warp_event  4,  7, LAVENDER_TOWN, 1
	warp_event 10,  0, TRADE_CENTER, 1
	warp_event 12,  0, COLOSSEUM, 1

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, LavenderPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter_NurseScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter_ManScript, -1
	object_event  2,  6, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter_GirlScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
