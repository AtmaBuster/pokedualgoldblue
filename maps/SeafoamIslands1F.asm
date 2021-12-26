	object_const_def
	const SEAFOAMISLANDS1F_KANTO_BOULDER1
	const SEAFOAMISLANDS1F_KANTO_BOULDER2

SeafoamIslands1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 8, SEAFOAMISLANDS1F_KANTO_BOULDER1, .Boulder1
	stonetable 9, SEAFOAMISLANDS1F_KANTO_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	pause 20
	playsound SFX_STRENGTH
	disappear SEAFOAMISLANDS1F_KANTO_BOULDER1
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_1B
	end

.Boulder2:
	pause 20
	playsound SFX_STRENGTH
	disappear SEAFOAMISLANDS1F_KANTO_BOULDER2
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_2B
	end

SeafoamIslands1F_BoulderScript:
	jumpstd StrengthBoulderScript

SeafoamIslands1F_MapEvents:
	def_warp_events
	warp_event  4, 17, ROUTE_20, 1
	warp_event  5, 17, ROUTE_20, 1
	warp_event 26, 17, ROUTE_20, 2
	warp_event 27, 17, ROUTE_20, 2
	warp_event  7,  5, SEAFOAM_ISLANDS_B1F, 2
	warp_event 25,  3, SEAFOAM_ISLANDS_B1F, 7
	warp_event 23, 15, SEAFOAM_ISLANDS_B1F, 5
	warp_event 17,  6, SEAFOAM_ISLANDS_B1F, 8
	warp_event 24,  6, SEAFOAM_ISLANDS_B1F, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event 18, 10, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslands1F_BoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_1A
	object_event 26,  7, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslands1F_BoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_2A
