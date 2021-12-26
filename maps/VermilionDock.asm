	object_const_def

VermilionDock_MapScripts:
	def_scene_scripts
	scene_script DummyScript    ; SCENE_DEFAULT
	scene_script .SSAnneLeaving ; SCENE_VERMILION_DOCK_SS_ANNE_LEAVING

	def_callbacks

.SSAnneLeaving:
	sdefer .SSAnneLeavingScript
	end

.SSAnneLeavingScript:
	turnobject PLAYER, DOWN
	playmusic MUSIC_RBY_SURFING
	pause 60
	playsound SFX_BOAT
	special SSAnneAnimation
	playsound SFX_BOAT
	waitsfx
	applymovement PLAYER, .LeaveMovement
	setscene SCENE_DEFAULT
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	setevent EVENT_SS_ANNE_LEFT
	warpfacing UP, VERMILION_CITY, 18, 31
	applymovement PLAYER, .LeaveMovement
	clearevent EVENT_VERMILION_CITY_PASSED_TICKET_CHECK
	end

.LeaveMovement:
	step UP
	step UP
	step_end

VermilionDock_MapEvents:
	def_warp_events
	warp_event 14,  0, VERMILION_CITY, 6
	warp_event 14,  2, SS_ANNE_1F, 2

	def_coord_events

	def_bg_events

	def_object_events
