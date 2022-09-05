	object_const_def

RocketHideoutElevator_MapScripts:
	def_scene_scripts

	def_callbacks

RocketHideoutElevator_ElevatorScript:
	opentext
	checkitem LIFT_KEY
	iffalse .NoKey
	elevator .ElevatorData
	closetext
	iffalse DummyScript
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	end

.NoKey:
	writetext .NoKeyText
	waitbutton
	closetext
	end

.NoKeyText:
	text "It appears to"
	line "need a key."
	done

.ElevatorData:
	db 3
	elevfloor FLOOR_B1F, 5, ROCKET_HIDEOUT_B1F
	elevfloor FLOOR_B2F, 5, ROCKET_HIDEOUT_B2F
	elevfloor FLOOR_B4F, 3, ROCKET_HIDEOUT_B4F
	db -1

RocketHideoutElevator_MapEvents:
	def_warp_events
	warp_event  2,  1, ROCKET_HIDEOUT_B1F, -1
	warp_event  3,  1, ROCKET_HIDEOUT_B1F, -1

	def_coord_events

	def_bg_events
	bg_event  1,  1, BGEVENT_READ, RocketHideoutElevator_ElevatorScript

	def_object_events
