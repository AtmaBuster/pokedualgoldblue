	object_const_def

CeladonMartElevator_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMartElevator_ElevatorScript:
	opentext
	elevator .ElevatorData
	closetext
	iffalse DummyScript
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	end

.ElevatorData:
	db 5
	elevfloor FLOOR_1F, 6, CELADON_MART_1F
	elevfloor FLOOR_2F, 3, CELADON_MART_2F
	elevfloor FLOOR_3F, 3, CELADON_MART_3F
	elevfloor FLOOR_4F, 3, CELADON_MART_4F
	elevfloor FLOOR_5F, 3, CELADON_MART_5F
	db -1

CeladonMartElevator_MapEvents:
	def_warp_events
	warp_event  1,  3, CELADON_MART_1F, -1
	warp_event  2,  3, CELADON_MART_1F, -1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, CeladonMartElevator_ElevatorScript

	def_object_events
