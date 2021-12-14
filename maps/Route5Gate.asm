	object_const_def
	const ROUTE5GATE_GUARD

Route5Gate_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

Route5Gate_GuardScript:
	faceplayer
	turnobject PLAYER, LEFT
	opentext
	checkevent EVENT_GAVE_DRINK_TO_SAFFRON_GUARD
	iftrue .GaveDrink
	checkitem FRESH_WATER
	iftrue .HaveDrink1
	checkitem SODA_POP
	iftrue .HaveDrink2
	checkitem LEMONADE
	iftrue .HaveDrink3
	writetext .ImThirstyText
	waitbutton
	closetext
	applymovement PLAYER, .ForceOutMovement
	end

.HaveDrink1:
	takeitem FRESH_WATER
	sjump .Join

.HaveDrink2:
	takeitem SODA_POP
	sjump .Join

.HaveDrink3:
	takeitem LEMONADE
.Join:
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
	cont "this drink?"
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
	text "Hi, thanks for"
	line "the cool drinks!"
	done

.ForceOutMovement:
	step UP
	step_end

Route5Gate_MapEvents:
	def_warp_events
	warp_event  3,  5, ROUTE_5, 3
	warp_event  4,  5, ROUTE_5, 3
	warp_event  3,  0, ROUTE_5, 2
	warp_event  4,  0, ROUTE_5, 1

	def_coord_events
	coord_event  3,  3, SCENE_DEFAULT, Route5Gate_GuardScript
	coord_event  4,  3, SCENE_DEFAULT, Route5Gate_GuardScript

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5Gate_GuardScript, -1
