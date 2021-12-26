	object_const_def
	const CINNABARPOKECENTER_KANTO_NURSE
	const CINNABARPOKECENTER_COOLTRAINER_F
	const CINNABARPOKECENTER_GENTLEMAN
	const CINNABARPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const CINNABARPOKECENTER_COUCH_MAN
ENDC

CinnabarPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript

CinnabarPokecenter_CooltrainerScript:
	jumptextfaceplayer .Text
.Text:
	text "You can cancel"
	line "evolution."

	para "When a #MON is"
	line "evolving, you can"
	cont "stop it and leave"
	cont "it the way it is."
	done

CinnabarPokecenter_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "Do you have any"
	line "friends?"

	para "#MON you get"
	line "in trades grow"
	cont "very quickly."

	para "I think it's"
	line "worth a try!"
	done

CinnabarPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

CinnabarPokecenter_BenchGuyScript:
	jumptext .Text
.Text:
	text "#MON can still"
	line "learn techniques"
	cont "after canceling"
	cont "evolution."

	para "Evolution can wait"
	line "until new moves"
	cont "have been learned."
	done

CinnabarPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, CINNABAR_ISLAND, 4
	warp_event  4,  7, CINNABAR_ISLAND, 4

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, CinnabarPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter_NurseScript, -1
	object_event  9,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter_CooltrainerScript, -1
	object_event  2,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter_ManScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
