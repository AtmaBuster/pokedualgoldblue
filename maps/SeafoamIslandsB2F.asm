	object_const_def
	const SEAFOAMISLANDSB2F_KANTO_BOULDER1
	const SEAFOAMISLANDSB2F_KANTO_BOULDER2

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 10, SEAFOAMISLANDSB2F_KANTO_BOULDER1, .Boulder1
	stonetable 11, SEAFOAMISLANDSB2F_KANTO_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	pause 20
	playsound SFX_STRENGTH
	disappear SEAFOAMISLANDSB2F_KANTO_BOULDER1
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_1D
	end

.Boulder2:
	pause 20
	playsound SFX_STRENGTH
	disappear SEAFOAMISLANDSB2F_KANTO_BOULDER2
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_2D
	end

SeafoamIslandsB2F_BoulderScript:
	jumpstd StrengthBoulderScript

SeafoamIslandsB2F_HiddenNugget:
	hiddenitem NUGGET, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_NUGGET

SeafoamIslandsB2F_MapEvents:
	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 1
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 1
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 3
	warp_event 19, 15, SEAFOAM_ISLANDS_B1F, 4
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 4
	warp_event 25, 11, SEAFOAM_ISLANDS_B1F, 6
	warp_event 25, 14, SEAFOAM_ISLANDS_B3F, 5
	warp_event 19,  7, SEAFOAM_ISLANDS_B1F, 10
	warp_event 22,  7, SEAFOAM_ISLANDS_B1F, 11
	warp_event 19,  6, SEAFOAM_ISLANDS_B3F, 8
	warp_event 22,  6, SEAFOAM_ISLANDS_B3F, 9

	def_coord_events

	def_bg_events
	bg_event 15, 15, BGEVENT_ITEM, SeafoamIslandsB2F_HiddenNugget

	def_object_events
	object_event 18,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2F_BoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_1C
	object_event 23,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2F_BoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_2C
