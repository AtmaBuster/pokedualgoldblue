	object_const_def
	const SAFFRONPOKECENTER_KANTO_NURSE
	const SAFFRONPOKECENTER_KANTO_BEAUTY
	const SAFFRONPOKECENTER_GENTLEMAN
	const SAFFRONPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const SAFFRONPOKECENTER_COUCH_MAN
ENDC

SaffronPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks
SaffronPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript

SaffronPokecenter_WomanScript:
	jumptextfaceplayer .Text
.Text:
	text "#MON growth"
	line "rates differ from"
	cont "specie to specie."
	done

SaffronPokecenter_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "SILPH CO. is very"
	line "famous. That's"
	cont "why it attracted"
	cont "TEAM ROCKET!"
	done

SaffronPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

SaffronPokecenter_BenchGuyScript:
	opentext
	checkevent EVENT_BEAT_GIOVANNI2_GEN1
	iftrue .After
	writetext .Text1
	waitbutton
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "It would be great"
	line "if the ELITE FOUR"
	cont "came and stomped"
	cont "TEAM ROCKET!"
	done

.Text2:
	text "TEAM ROCKET took"
	line "off! We can go"
	cont "out safely again!"
	cont "That's great!"
	done

SaffronPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, SAFFRON_CITY, 7
	warp_event  4,  7, SAFFRON_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, SaffronPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter_NurseScript, -1
	object_event  5,  5, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter_WomanScript, -1
	object_event  8,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter_ManScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
