	object_const_def
	const ROUTE22GATE_GUARD

IF DEF(_GOLD)
ROUTE22GATE_GUARD_Y EQU 5
ELIF DEF(_BLUE)
ROUTE22GATE_GUARD_Y EQU 2
ENDC

Route22Gate_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks
IF DEF(_BLUE)
	callback MAPCALLBACK_TILES, .Route26_Gate_Entrance

.Route26_Gate_Entrance:
	checkevent EVENT_BEAT_LEAGUE
	iftrue .KeepOpen
	changeblock 0, 0, $03 ; wall
.KeepOpen:
	endcallback
ENDC

Route22Gate_GuardScript:
	faceplayer
	opentext
IF DEF(_GOLD)
	checkevent EVENT_BEAT_ELITE_FOUR
ELIF DEF(_BLUE)
	checkflag ENGINE_BOULDERBADGE
ENDC
	iffalse .CantPass
	writetext .CanPassText
	playsound SFX_ITEM
	waitsfx
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end

.CantPass:
	writetext .CantPassText
	playsound SFX_WRONG
	waitsfx
	promptbutton
	writetext .RulesText
	waitbutton
	closetext
	applymovement PLAYER, .MoveBack
	end

.CanPassText:
IF DEF(_GOLD)
	text "Oh! You're the"
	line "#MON LEAGUE"
	cont "CHAMPION!"

	para "Go right ahead!"
	done
ELIF DEF(_BLUE)
	text "Oh! That is the"
	line "BOULDERBADGE!"
	cont "Go right ahead!"
	done
ENDC

.CantPassText:
	text "Only truly skilled"
	line "trainers are"
	cont "allowed through."

IF DEF(_GOLD)
	para "You don't impress"
	line "me yet!"
	done
ELIF DEF(_BLUE)
	para "You don't have the"
	line "BOULDERBADGE yet!"
	done
ENDC

.RulesText:
	text "The rules are"
	line "rules. I can't"
	cont "let you pass."
	done

.MoveBack:
	IF DEF(_GOLD)
	step UP
ELIF DEF(_BLUE)
	step DOWN
ENDC
	step_end

Route22Gate_MapEvents:
	def_warp_events
	warp_event  4,  7, ROUTE_22, 1
	warp_event  5,  7, ROUTE_22, 1
	warp_event  4,  0, ROUTE_23, 1
	warp_event  5,  0, ROUTE_23, 2
	warp_event  0,  0, VICTORY_ROAD_GATE, 1
	warp_event  1,  0, VICTORY_ROAD_GATE, 2

	def_coord_events
	coord_event  4,  ROUTE22GATE_GUARD_Y, SCENE_DEFAULT, Route22Gate_GuardScript
	coord_event  5,  ROUTE22GATE_GUARD_Y, SCENE_DEFAULT, Route22Gate_GuardScript

	def_bg_events

	def_object_events
	object_event  6,  ROUTE22GATE_GUARD_Y, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22Gate_GuardScript, -1
