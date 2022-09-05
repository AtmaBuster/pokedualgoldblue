	object_const_def
	const ROUTE6GATE_GUARD

Route6Gate_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

Route6Gate_GuardScript:
	faceplayer
	turnobject PLAYER, RIGHT
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
	step DOWN
	step_end

Route6Gate_MapEvents:
	def_warp_events
	warp_event  3,  5, ROUTE_6, 3
	warp_event  4,  5, ROUTE_6, 3
	warp_event  3,  0, ROUTE_6, 2
	warp_event  4,  0, ROUTE_6, 2

	def_coord_events
	coord_event  3,  2, SCENE_DEFAULT, Route6Gate_GuardScript
	coord_event  4,  2, SCENE_DEFAULT, Route6Gate_GuardScript

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route6Gate_GuardScript, -1
