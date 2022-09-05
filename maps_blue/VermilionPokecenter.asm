	object_const_def
	const VERMILIONPOKECENTER_KANTO_NURSE
	const VERMILIONPOKECENTER_FISHING_GURU
	const VERMILIONPOKECENTER_KANTO_SAILOR
	const VERMILIONPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const VERMILIONPOKECENTER_COUCH_MAN
ENDC

VermilionPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript
VermilionPokecenter_FisherScript:
	jumptextfaceplayer .Text
.Text:
	text "Even if they are"
	line "the same level,"
	cont "#MON can have"
	cont "very different"
	cont "abilities."

	para "A #MON raised"
	line "by a trainer is"
	cont "stronger than one"
	cont "in the wild."
	done

VermilionPokecenter_SailorScript:
	jumptextfaceplayer .Text
.Text:
	text "My #MON was"
	line "poisoned! It"
	cont "fainted while we"
	cont "were walking!"
	done

VermilionPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

VermilionPokecenter_BenchGuyScript:
	jumptext .Text
.Text:
	text "It is true that a"
	line "higher level"
	cont "#MON will be"
	cont "more powerful..."

	para "But, all #MON"
	line "will have weak"
	cont "points against"
	cont "specific types."

	para "So, there is no"
	line "universally"
	cont "strong #MON."
	done

VermilionPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 1
	warp_event  4,  7, VERMILION_CITY, 1
	warp_event 10,  0, TRADE_CENTER, 1
	warp_event 12,  0, COLOSSEUM, 1

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, VermilionPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter_NurseScript, -1
	object_event 10,  5, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter_FisherScript, -1
	object_event  5,  4, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter_SailorScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
