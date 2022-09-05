	object_const_def
	const SEAFOAMISLANDSB3F_KANTO_BOULDER1
	const SEAFOAMISLANDSB3F_KANTO_BOULDER2
	const SEAFOAMISLANDSB3F_KANTO_BOULDER3
	const SEAFOAMISLANDSB3F_KANTO_BOULDER4
	const SEAFOAMISLANDSB3F_KANTO_BOULDER5
	const SEAFOAMISLANDSB3F_KANTO_BOULDER6

SeafoamIslandsB3F_MapScripts:
	def_scene_scripts
	scene_script .TryWaterCurrent ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.TryWaterCurrent:
	scall SeafoamIslandsB3F_CheckCurrentFlowing
	iftrue .DoWaterCurrent
	setscene SCENE_FINISHED
	end

.DoWaterCurrent:
	readvar VAR_YCOORD
	ifnotequal 7, DummyScript
	readvar VAR_XCOORD
	ifequal 18, .CurrentLeft
	ifequal 19, .CurrentRight
	end

.CurrentLeft:
	applymovement PLAYER, .MovementLeft
	scall SeafoamIslandsB3F_CurrentWarp
	applymovement PLAYER, .MoveUp
	end

.CurrentRight:
	applymovement PLAYER, .MovementRight
	scall SeafoamIslandsB3F_CurrentWarp
	applymovement PLAYER, .MoveUp
	end

.MoveUp:
	step UP
	step UP
	step_end

.MovementRight:
	step LEFT
.MovementLeft:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 10, SEAFOAMISLANDSB3F_KANTO_BOULDER2, .Boulder1
	stonetable 11, SEAFOAMISLANDSB3F_KANTO_BOULDER3, .Boulder2
	db -1 ; end

.Boulder1:
	pause 20
	playsound SFX_STRENGTH
	disappear SEAFOAMISLANDSB3F_KANTO_BOULDER2
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_3B
	end

.Boulder2:
	pause 20
	playsound SFX_STRENGTH
	disappear SEAFOAMISLANDSB3F_KANTO_BOULDER3
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_4B
	end

SeafoamIslandsB3F_BoulderScript:
	jumpstd StrengthBoulderScript

SeafoamIslandsB3F_WaterBoulderScript:
	jumptext .Text
.Text:
	text "This requires"
	line "STRENGTH to move!"
	done

SeafoamIslandsB3F_HiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_MAX_ELIXER

SeafoamIslandsB3F_CurrentSurfScript:
	applymovement PLAYER, SeafoamIslandsB3F_CurrentSurfMovement
	scall SeafoamIslandsB3F_CurrentWarp
	applymovement PLAYER,  .MoveUp
	end

.MoveUp:
	step UP
	step UP
	step_end

SeafoamIslandsB3F_CurrentWarp:
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	warpfacing UP, SEAFOAM_ISLANDS_B4F, 20, 17
	end

SeafoamIslandsB3F_CurrentWarp2:
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	warpfacing UP, SEAFOAM_ISLANDS_B4F, 21, 17
	end

SeafoamIslandsB3F_CurrentSurfMovement:
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

SeafoamIslandsB3F_CheckCurrentFlowing:
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_1D
	iftrue DummyScript
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_2D
	end

SeafoamIslandsB3F_MapEvents:
	def_warp_events
	warp_event  5, 12, SEAFOAM_ISLANDS_B2F, 2
	warp_event  8,  6, SEAFOAM_ISLANDS_B4F, 3
	warp_event 25,  4, SEAFOAM_ISLANDS_B4F, 4
	warp_event 25,  3, SEAFOAM_ISLANDS_B2F, 5
	warp_event 25, 14, SEAFOAM_ISLANDS_B2F, 7
	warp_event 20, 17, SEAFOAM_ISLANDS_B4F, 1
	warp_event 21, 17, SEAFOAM_ISLANDS_B4F, 2
	warp_event 18,  7, SEAFOAM_ISLANDS_B2F, 10
	warp_event 19,  7, SEAFOAM_ISLANDS_B2F, 11
	warp_event  3, 16, SEAFOAM_ISLANDS_B4F, 5
	warp_event  6, 16, SEAFOAM_ISLANDS_B4F, 6

	def_coord_events
	coord_event 15,  8, SCENE_DEFAULT, SeafoamIslandsB3F_CurrentSurfScript
	coord_event 20, 17, SCENE_DEFAULT, SeafoamIslandsB3F_CurrentWarp
	coord_event 21, 17, SCENE_DEFAULT, SeafoamIslandsB3F_CurrentWarp2
	coord_event 20, 17, SCENE_FINISHED, SeafoamIslandsB3F_CurrentWarp
	coord_event 21, 17, SCENE_FINISHED, SeafoamIslandsB3F_CurrentWarp2

	def_bg_events
	bg_event  9, 16, BGEVENT_ITEM, SeafoamIslandsB3F_HiddenMaxElixer

	def_object_events
	object_event  5, 14, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3F_BoulderScript, -1
	object_event  3, 15, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3F_BoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_3A
	object_event  8, 14, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3F_BoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_4A
	object_event  9, 14, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3F_BoulderScript, -1
	object_event 18,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3F_WaterBoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_1D
	object_event 19,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3F_WaterBoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_2D
