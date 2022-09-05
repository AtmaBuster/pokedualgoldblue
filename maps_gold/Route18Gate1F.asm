	object_const_def
	const ROUTE18GATE1F_GUARD

Route18Gate1F_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT

	def_callbacks

Route18Gate1F_BikeCheckScript1:
	checkitem BICYCLE
	iftrue Route18Gate1F_BikeCheckEnd
	opentext
	writetext Route18Gate1F_BikeCheckStopText
	waitbutton
	writetext Route18Gate1F_BikeCheckNeedBikeText
	waitbutton
	closetext
	applymovement PLAYER, Route18Gate1F_BikeCheckLeaveMovement
	end

Route18Gate1F_BikeCheckScript2:
	checkitem BICYCLE
	iftrue Route18Gate1F_BikeCheckEnd
	opentext
	writetext Route18Gate1F_BikeCheckStopText
	waitbutton
	closetext
	applymovement PLAYER, Route18Gate1F_ApproachCounterMovement3
	opentext
	writetext Route18Gate1F_BikeCheckNeedBikeText
	waitbutton
	closetext
	applymovement PLAYER, Route18Gate1F_BikeCheckLeaveMovement
	end

Route18Gate1F_BikeCheckScript3:
	checkitem BICYCLE
	iftrue Route18Gate1F_BikeCheckEnd
	opentext
	writetext Route18Gate1F_BikeCheckStopText
	waitbutton
	closetext
	applymovement PLAYER, Route18Gate1F_ApproachCounterMovement2
	opentext
	writetext Route18Gate1F_BikeCheckNeedBikeText
	waitbutton
	closetext
	applymovement PLAYER, Route18Gate1F_BikeCheckLeaveMovement
	end

Route18Gate1F_BikeCheckScript4:
	checkitem BICYCLE
	iftrue Route18Gate1F_BikeCheckEnd
	opentext
	writetext Route18Gate1F_BikeCheckStopText
	waitbutton
	closetext
	applymovement PLAYER, Route18Gate1F_ApproachCounterMovement1
	opentext
	writetext Route18Gate1F_BikeCheckNeedBikeText
	waitbutton
	closetext
	applymovement PLAYER, Route18Gate1F_BikeCheckLeaveMovement
Route18Gate1F_BikeCheckEnd:
	end

Route18Gate1F_BikeCheckStopText:
	text "Excuse me! Wait"
	line "up please!"
	done

Route18Gate1F_BikeCheckNeedBikeText:
	text "No pedestrians"
	line "are allowed on"
	cont "CYCLING ROAD!"
	done

Route18Gate1F_ApproachCounterMovement1:
	step UP
Route18Gate1F_ApproachCounterMovement2:
	step UP
Route18Gate1F_ApproachCounterMovement3:
	step UP
	step_end

Route18Gate1F_BikeCheckLeaveMovement:
	step RIGHT
	step_end

Route18Gate1F_GuardScript:
	jumptextfaceplayer .Text
.Text:
	text "CYCLING ROAD is"
	line "all uphill from"
	cont "here."
	done

Route18Gate1F_MapEvents:
	def_warp_events
	warp_event  0,  4, ROUTE_18, 1
	warp_event  0,  5, ROUTE_18, 2
	warp_event  7,  4, ROUTE_18, 3
	warp_event  7,  5, ROUTE_18, 4
	warp_event  6,  8, ROUTE_18_GATE_2F, 1

	def_coord_events
	coord_event  4,  3, SCENE_DEFAULT, Route18Gate1F_BikeCheckScript1
	coord_event  4,  4, SCENE_DEFAULT, Route18Gate1F_BikeCheckScript2
	coord_event  4,  5, SCENE_DEFAULT, Route18Gate1F_BikeCheckScript3
	coord_event  4,  6, SCENE_DEFAULT, Route18Gate1F_BikeCheckScript4

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route18Gate1F_GuardScript, -1
