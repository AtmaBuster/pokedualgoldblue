	object_const_def
	const ROUTE8GATE_GUARD

Route8Gate_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

Route8Gate_GuardScript:
	faceplayer
	turnobject PLAYER, UP
	opentext
	checkevent EVENT_GAVE_DRINK_TO_SAFFRON_GUARD
	iftrue .GaveDrink
	checkitem TEA
	iftrue .HaveDrink
	writetext .ImThirstyText
	waitbutton
	closetext
	applymovement PLAYER, .ForceOutMovement
	end

.HaveDrink:
	takeitem TEA
	writetext .GiveDrinkText
	promptbutton
	playsound SFX_KEY_ITEM
	writetext .GlugGlugText
	waitsfx
	waitbutton
	closetext
	setevent EVENT_GAVE_DRINK_TO_SAFFRON_GUARD
	setscene SCENE_FINISHED
	end

.GaveDrink:
	writetext .ThanksText
	waitbutton
	closetext
	end

.ImThirstyText:
	text "I'm on guard duty."
	line "Gee, I'm thirsty,"
	cont "though!"

	para "Oh wait there,"
	line "the road's closed."
	done

.GiveDrinkText:
	text "Whoa, boy!"
	line "I'm parched!"
	cont "..."
	cont "Huh? I can have"
	cont "this TEA?"
	cont "Gee, thanks!"
	done

.GlugGlugText:
	text "..."
	line "Glug glug..."
	cont "..."
	cont "Gulp..."
	cont "If you want to go"
	cont "to SAFFRON CITY..."
	cont "..."
	cont "You can go on"
	cont "through. I'll"
	cont "share this with"
	cont "the other guards!"
	done

.ThanksText:
	text "Hi, how's it going?"
	done


.ForceOutMovement:
	step RIGHT
	step_end

Route8Gate_MapEvents:
	def_warp_events
	warp_event  0,  3, ROUTE_8, 1
	warp_event  0,  4, ROUTE_8, 2
	warp_event  5,  3, ROUTE_8, 3
	warp_event  5,  4, ROUTE_8, 4

	def_coord_events
	coord_event  2,  3, SCENE_DEFAULT, Route8Gate_GuardScript
	coord_event  2,  4, SCENE_DEFAULT, Route8Gate_GuardScript

	def_bg_events

	def_object_events
	object_event  2,  1, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8Gate_GuardScript, -1
