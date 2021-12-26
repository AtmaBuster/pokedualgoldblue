	object_const_def
	const ROUTE22GATE_GUARD

Route22Gate_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

Route22Gate_GuardScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
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
	applymovement PLAYER, .MoveDown
	end

.CanPassText:
	text "Oh! That is the"
	line "BOULDERBADGE!"
	cont "Go right ahead!"
	done

.CantPassText:
	text "Only truly skilled"
	line "trainers are"
	cont "allowed through."

	para "You don't have the"
	line "BOULDERBADGE yet!"
	done

.RulesText:
	text "The rules are"
	line "rules. I can't"
	cont "let you pass."
	done

.MoveDown:
	step DOWN
	step_end

Route22Gate_MapEvents:
	def_warp_events
	warp_event  4,  7, ROUTE_22, 0
	warp_event  5,  7, ROUTE_22, 0
	warp_event  4,  0, ROUTE_23, 1
	warp_event  5,  0, ROUTE_23, 2

	def_coord_events
	coord_event  4,  2, SCENE_DEFAULT, Route22Gate_GuardScript
	coord_event  5,  2, SCENE_DEFAULT, Route22Gate_GuardScript

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22Gate_GuardScript, -1
