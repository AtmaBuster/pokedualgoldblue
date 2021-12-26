	object_const_def
	const SEAFOAMISLANDSB1F_KANTO_BOULDER1
	const SEAFOAMISLANDSB1F_KANTO_BOULDER2

SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 10, SEAFOAMISLANDSB1F_KANTO_BOULDER1, .Boulder1
	stonetable 11, SEAFOAMISLANDSB1F_KANTO_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	pause 20
	playsound SFX_STRENGTH
	disappear SEAFOAMISLANDSB1F_KANTO_BOULDER1
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_1C
	end

.Boulder2:
	pause 20
	playsound SFX_STRENGTH
	disappear SEAFOAMISLANDSB1F_KANTO_BOULDER2
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_2C
	end

SeafoamIslandsB1F_BoulderScript:
	jumpstd StrengthBoulderScript

SeafoamIslandsB1F_MapEvents:
	def_warp_events
	warp_event  4,  2, SEAFOAM_ISLANDS_B2F, 1
	warp_event  7,  5, SEAFOAM_ISLANDS_1F, 5
	warp_event 13,  7, SEAFOAM_ISLANDS_B2F, 3
	warp_event 19, 15, SEAFOAM_ISLANDS_B2F, 4
	warp_event 23, 15, SEAFOAM_ISLANDS_1F, 7
	warp_event 25, 11, SEAFOAM_ISLANDS_B2F, 6
	warp_event 25,  3, SEAFOAM_ISLANDS_1F, 6
	warp_event 18,  7, SEAFOAM_ISLANDS_1F, 8
	warp_event 23,  7, SEAFOAM_ISLANDS_1F, 9
	warp_event 18,  6, SEAFOAM_ISLANDS_B2F, 8
	warp_event 23,  6, SEAFOAM_ISLANDS_B2F, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1F_BoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_1B
	object_event 22,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1F_BoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_2B
