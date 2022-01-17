	object_const_def
	const POKEMONMANSION2F_KANTO_SUPER_NERD
	const POKEMONMANSION2F_POKE_BALL
	const POKEMONMANSION2F_POKEDEX1
	const POKEMONMANSION2F_POKEDEX2

PokemonMansion2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_POKEMON_MANSION_DOORS
	iftrue .DoorsOn
	changeblock  8,  4, $0e ; open
	changeblock 18,  8, $54 ; closed
	changeblock  6, 22, $5f ; closed
	endcallback

.DoorsOn:
	changeblock  8,  4, $5f ; closed
	changeblock 18,  8, $0e ; open
	changeblock  6, 22, $0e ; open
	endcallback

PokemonMansion2F_StatueScript:
	opentext
	writetext .PressText
	yesorno
	iffalse .SaidNo
	writetext .YesText
	waitbutton
	checkevent EVENT_POKEMON_MANSION_DOORS
	iftrue .SetFalse
	setevent EVENT_POKEMON_MANSION_DOORS
	changeblock  8,  4, $5f ; closed
	changeblock 18,  8, $0e ; open
	changeblock  6, 22, $0e ; open
	reloadmappart
	closetext
	end

.SetFalse:
	clearevent EVENT_POKEMON_MANSION_DOORS
	changeblock  8,  4, $0e ; open
	changeblock 18,  8, $54 ; closed
	changeblock  6, 22, $5f ; closed
	reloadmappart
	closetext
	end

.SaidNo:
	writetext .NoText
	waitbutton
	closetext
	end

.PressText:
	text "A secret switch!"

	para "Press it?"
	done

.YesText:
	text "Who wouldn't?"
	done

.NoText:
	text "Not quite yet!"
	done

TrainerBurglarArnie:
	trainer BURGLAR_GEN1, ARNIE_GEN1, EVENT_BEAT_BURGLAR_ARNIE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I can't get out!"
	line "This old place is"
	cont "one big puzzle!"
	done

.BeatenText:
	text "Oh no! My bag of"
	line "loot!"
	done

.AfterText:
	text "Switches open and"
	line "close alternating"
	cont "sets of doors!"
	done

PokemonMansion2F_CalciumScript:
	itemball CALCIUM

PokemonMansion2F_Book1Script:
	jumptext .Text
.Text:
	text "Diary: July 5"
	line "Guyana,"
	cont "South America"

	para "A new #MON was"
	line "discovered deep"
	cont "in the jungle."
	done

PokemonMansion2F_Book2Script:
	jumptext .Text
.Text:
	text "Diary: July 10"
	line "We christened the"
	cont "newly discovered"
	cont "#MON, MEW."
	done

PokemonMansion2F_MapEvents:
	def_warp_events
	warp_event  5, 10, POKEMON_MANSION_1F, 5
	warp_event  7, 10, POKEMON_MANSION_3F, 1
	warp_event 25, 14, POKEMON_MANSION_3F, 3
	warp_event  6,  1, POKEMON_MANSION_3F, 2
	warp_event 18, 14, POKEMON_MANSION_3F, 5

	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_UP, PokemonMansion2F_StatueScript

	def_object_events
	object_event  3, 17, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBurglarArnie, -1
	object_event 28,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion2F_CalciumScript, EVENT_POKEMON_MANSION_2F_CALCIUM
	object_event 18,  2, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion2F_Book1Script, -1
	object_event  3, 22, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion2F_Book2Script, -1
