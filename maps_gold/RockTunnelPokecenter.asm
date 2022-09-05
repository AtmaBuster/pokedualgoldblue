	object_const_def
	const ROCKTUNNELPOKECENTER_KANTO_NURSE
	const ROCKTUNNELPOKECENTER_GENTLEMAN
	const ROCKTUNNELPOKECENTER_FISHER
	const ROCKTUNNELPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const ROCKTUNNELPOKECENTER_COUCH_MAN
ENDC

RockTunnelPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

RockTunnelPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript

RockTunnelPokecenter_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "The element types"
	line "of #MON make"
	cont "them stronger"
	cont "than some types"
	cont "and weaker than"
	cont "others!"
	done

RockTunnelPokecenter_NuggetGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "I sold a useless"
	line "NUGGET for ¥5000!"
	done

RockTunnelPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

RockTunnelPokecenter_BenchGuyScript:
	jumptext .Text
.Text:
	text "I heard that"
	line "GHOSTs haunt"
	cont "LAVENDER TOWN!"
	done

RockTunnelPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, ROUTE_10_NORTH, 1
	warp_event  4,  7, ROUTE_10_NORTH, 1
	warp_event 10,  0, TRADE_CENTER, 1
	warp_event 12,  0, COLOSSEUM, 1

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, RockTunnelPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenter_NurseScript, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenter_ManScript, -1
	object_event  2,  5, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenter_NuggetGuyScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
