	object_const_def
	const ROUTE16GATE1F_GUARD
	const ROUTE16GATE1F_GAMBLER

Route16Gate1F_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT

	def_callbacks

Route16Gate1F_BikeCheckScript1:
	checkitem BICYCLE
	iftrue Route16Gate1F_BikeCheckEnd
	opentext
	writetext Route16Gate1F_BikeCheckStopText
	waitbutton
	writetext Route16Gate1F_BikeCheckNeedBikeText
	waitbutton
	closetext
	applymovement PLAYER, Route16Gate1F_BikeCheckLeaveMovement
	end

Route16Gate1F_BikeCheckScript2:
	checkitem BICYCLE
	iftrue Route16Gate1F_BikeCheckEnd
	opentext
	writetext Route16Gate1F_BikeCheckStopText
	waitbutton
	closetext
	applymovement PLAYER, Route16Gate1F_ApproachCounterMovement3
	opentext
	writetext Route16Gate1F_BikeCheckNeedBikeText
	waitbutton
	closetext
	applymovement PLAYER, Route16Gate1F_BikeCheckLeaveMovement
	end

Route16Gate1F_BikeCheckScript3:
	checkitem BICYCLE
	iftrue Route16Gate1F_BikeCheckEnd
	opentext
	writetext Route16Gate1F_BikeCheckStopText
	waitbutton
	closetext
	applymovement PLAYER, Route16Gate1F_ApproachCounterMovement2
	opentext
	writetext Route16Gate1F_BikeCheckNeedBikeText
	waitbutton
	closetext
	applymovement PLAYER, Route16Gate1F_BikeCheckLeaveMovement
	end

Route16Gate1F_BikeCheckScript4:
	checkitem BICYCLE
	iftrue Route16Gate1F_BikeCheckEnd
	opentext
	writetext Route16Gate1F_BikeCheckStopText
	waitbutton
	closetext
	applymovement PLAYER, Route16Gate1F_ApproachCounterMovement1
	opentext
	writetext Route16Gate1F_BikeCheckNeedBikeText
	waitbutton
	closetext
	applymovement PLAYER, Route16Gate1F_BikeCheckLeaveMovement
Route16Gate1F_BikeCheckEnd:
	end

Route16Gate1F_BikeCheckStopText:
	text "Excuse me! Wait"
	line "up please!"
	done

Route16Gate1F_BikeCheckNeedBikeText:
	text "No pedestrians"
	line "are allowed on"
	cont "CYCLING ROAD!"
	done

Route16Gate1F_ApproachCounterMovement1:
	step UP
Route16Gate1F_ApproachCounterMovement2:
	step UP
Route16Gate1F_ApproachCounterMovement3:
	step UP
	step_end

Route16Gate1F_BikeCheckLeaveMovement:
	step RIGHT
	step_end

Route16Gate1F_GuardScript:
	jumptextfaceplayer .Text
.Text:
	text "CYCLING ROAD is a"
	line "downhill course"
	cont "by the sea. It's"
	cont "a great ride."
	done

Route16Gate1F_GamblerScript:
	jumptextfaceplayer .Text
.Text:
	text "How'd you get in?"
	line "Good effort!"
	done

Route16Gate1F_MapEvents:
	def_warp_events
	warp_event  0,  8, ROUTE_16, 1
	warp_event  0,  9, ROUTE_16, 2
	warp_event  7,  8, ROUTE_16, 3
	warp_event  7,  9, ROUTE_16, 3
	warp_event  0,  2, ROUTE_16, 5
	warp_event  0,  3, ROUTE_16, 6
	warp_event  7,  2, ROUTE_16, 7
	warp_event  7,  3, ROUTE_16, 8
	warp_event  6, 12, ROUTE_16_GATE_2F, 1

	def_coord_events
	coord_event  4,  7, SCENE_DEFAULT, Route16Gate1F_BikeCheckScript1
	coord_event  4,  8, SCENE_DEFAULT, Route16Gate1F_BikeCheckScript2
	coord_event  4,  9, SCENE_DEFAULT, Route16Gate1F_BikeCheckScript3
	coord_event  4, 10, SCENE_DEFAULT, Route16Gate1F_BikeCheckScript4

	def_bg_events

	def_object_events
	object_event  4,  5, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16Gate1F_GuardScript, -1
	object_event  4,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16Gate1F_GamblerScript, -1
