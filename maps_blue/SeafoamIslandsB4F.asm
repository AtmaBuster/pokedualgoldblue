	object_const_def
	const SEAFOAMISLANDSB4F_KANTO_BOULDER1
	const SEAFOAMISLANDSB4F_KANTO_BOULDER2
	const SEAFOAMISLANDSB4F_KANTO_BIRD

SeafoamIslandsB4F_MapScripts:
	def_scene_scripts
	scene_script .TryWaterCurrent ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

.TryWaterCurrent:
	scall SeafoamIslandsB4F_CheckCurrentFlowing
	iftrue .DoWaterCurrent
	setscene SCENE_FINISHED
	end

.DoWaterCurrent:
	readvar VAR_YCOORD
	ifnotequal 14, DummyScript
	readvar VAR_XCOORD
	ifequal 4, .CurrentLeft
	ifequal 5, .CurrentRight
	end

.CurrentLeft:
	applymovement PLAYER, .MovementLeft
	end

.CurrentRight:
	applymovement PLAYER, .MovementRight
	end

.MovementRight:
	step UP
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step_end

.MovementLeft:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step_end

SeafoamIslandsB4F_ArticunoScript:
	opentext
	writetext .Text
	cry ARTICUNO
	pause 15
	closetext
	loadwildmon ARTICUNO, 50
	startbattle
	disappear SEAFOAMISLANDSB4F_KANTO_BIRD
	reloadmapafterbattle
	end

.Text:
	text "Gyaoo!"
	done

SeafoamIslandsB4F_WaterBoulderScript:
	jumptext .Text
.Text:
	text "This requires"
	line "STRENGTH to move!"
	done

SeafoamIslandsB4F_Sign1Script:
	jumptext .Text
.Text:
	text "Boulders might"
	line "change the flow"
	cont "of water!"
	done

SeafoamIslandsB4F_Sign2Script:
	jumptext .Text
.Text:
	text "DANGER"
	line "Fast current!"
	done

SeafoamIslandsB4F_CheckCurrentFlowing:
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_3B
	iftrue DummyScript
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_4B
	end

SeafoamIslandsB4F_CheckB3FCurrentFlowing:
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_1D
	iftrue DummyScript
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_2D
	end

SeafoamIslandsB4F_HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_SEAFOAM_ISLANDS_B4F_HIDDEN_ULTRA_BALL

SeafoamIslandsB4F_WaterWarpL:
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	warpfacing UP, SEAFOAM_ISLANDS_B3F, 20, 17
	end

SeafoamIslandsB4F_WaterWarpR:
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	warpfacing UP, SEAFOAM_ISLANDS_B3F, 21, 17
	end

SeafoamIslandsB4F_CurrentSurfPreventerScript:
	applymovement PLAYER, .MoveUp
	end

.MoveUp:
	step UP
	step_end

SeafoamIslandsB4F_UpstairsCurrentPushScript:
	scall SeafoamIslandsB4F_CheckB3FCurrentFlowing
	iffalse DummyScript
	applymovement PLAYER, .MoveUp
	end

.MoveUp:
	step UP
	step_end

SeafoamIslandsB4F_MapEvents:
	def_warp_events
	warp_event 20, 17, SEAFOAM_ISLANDS_B3F, 6
	warp_event 21, 17, SEAFOAM_ISLANDS_B3F, 7
	warp_event 11,  7, SEAFOAM_ISLANDS_B3F, 2
	warp_event 25,  4, SEAFOAM_ISLANDS_B3F, 3
	warp_event  4, 14, SEAFOAM_ISLANDS_B3F, 10
	warp_event  5, 14, SEAFOAM_ISLANDS_B3F, 11

	def_coord_events
	coord_event  7, 12, SCENE_DEFAULT, SeafoamIslandsB4F_CurrentSurfPreventerScript
	coord_event 20, 17, SCENE_DEFAULT, SeafoamIslandsB4F_WaterWarpL
	coord_event 21, 17, SCENE_DEFAULT, SeafoamIslandsB4F_WaterWarpR
	coord_event 20, 16, SCENE_DEFAULT, SeafoamIslandsB4F_UpstairsCurrentPushScript
	coord_event 21, 16, SCENE_DEFAULT, SeafoamIslandsB4F_UpstairsCurrentPushScript
	coord_event 20, 17, SCENE_FINISHED, SeafoamIslandsB4F_WaterWarpL
	coord_event 21, 17, SCENE_FINISHED, SeafoamIslandsB4F_WaterWarpR
	coord_event 20, 16, SCENE_FINISHED, SeafoamIslandsB4F_UpstairsCurrentPushScript
	coord_event 21, 16, SCENE_FINISHED, SeafoamIslandsB4F_UpstairsCurrentPushScript

	def_bg_events
	bg_event  9, 15, BGEVENT_READ, SeafoamIslandsB4F_Sign1Script
	bg_event 23,  1, BGEVENT_READ, SeafoamIslandsB4F_Sign2Script
	bg_event 25, 17, BGEVENT_ITEM, SeafoamIslandsB4F_HiddenUltraBall

	def_object_events
	object_event  4, 15, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4F_WaterBoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_3B
	object_event  5, 15, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4F_WaterBoulderScript, EVENT_SEAFOAM_ISLANDS_BOULDER_4B
	object_event  6,  1, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4F_ArticunoScript, -1
