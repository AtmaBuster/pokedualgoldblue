	object_const_def
	const POKEMONMANSION1F_KANTO_SCIENTIST
	const POKEMONMANSION1F_POKE_BALL1
	const POKEMONMANSION1F_POKE_BALL2

PokemonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_POKEMON_MANSION_DOORS
	iftrue .DoorsOn
	changeblock 24, 12, $0e ; open
	changeblock 16,  6, $2d ; closed
	changeblock 20, 16, $2d ; closed
	changeblock 26, 26, $2d ; closed
	endcallback

.DoorsOn:
	changeblock 24, 12, $2d ; closed
	changeblock 16,  6, $0e ; open
	changeblock 20, 16, $0e ; open
	changeblock 26, 26, $0e ; open
	endcallback

PokemonMansion1F_StatueScript:
	opentext
	writetext .PressText
	yesorno
	iffalse .SaidNo
	writetext .YesText
	waitbutton
	checkevent EVENT_POKEMON_MANSION_DOORS
	iftrue .SetFalse
	setevent EVENT_POKEMON_MANSION_DOORS
	changeblock 24, 12, $2d ; closed
	changeblock 16,  6, $0e ; open
	changeblock 20, 16, $0e ; open
	changeblock 26, 26, $0e ; open
	reloadmappart
	closetext
	end

.SetFalse:
	clearevent EVENT_POKEMON_MANSION_DOORS
	changeblock 24, 12, $0e ; open
	changeblock 16,  6, $2d ; closed
	changeblock 20, 16, $2d ; closed
	changeblock 26, 26, $2d ; closed
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

TrainerScientistTed:
	trainer SCIENTIST_GEN1, TED_GEN1, EVENT_BEAT_SCIENTIST_TED_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Who are you? There"
	line "shouldn't be"
	cont "anyone here."
	done

.BeatenText:
	text "Ouch!"
	done

.AfterText:
	text "A key? I don't"
	line "know what you're"
	cont "talking about."
	done

PokemonMansion1F_EscapeRopeScript:
	itemball ESCAPE_ROPE

PokemonMansion1F_CarbosScript:
	itemball CARBOS

PokemonMansion1F_HiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_POKEMON_MANSION_1F_HIDDEN_MOON_STONE

PokemonMansion1F_MapEvents:
	def_warp_events
	warp_event  4, 27, CINNABAR_ISLAND, 1
	warp_event  5, 27, CINNABAR_ISLAND, 1
	warp_event  6, 27, CINNABAR_ISLAND, 1
	warp_event  7, 27, CINNABAR_ISLAND, 1
	warp_event  5, 10, POKEMON_MANSION_2F, 1
	warp_event 21, 23, POKEMON_MANSION_B1F, 1
	warp_event 26, 27, CINNABAR_ISLAND, 1
	warp_event 27, 27, CINNABAR_ISLAND, 1
	warp_event 16, 14, POKEMON_MANSION_3F, 4

	def_coord_events

	def_bg_events
	bg_event  2,  5, BGEVENT_UP, PokemonMansion1F_StatueScript
	bg_event  8, 16, BGEVENT_ITEM, PokemonMansion1F_HiddenMoonStone

	def_object_events
	object_event 17, 17, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistTed, -1
	object_event 14,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1F_EscapeRopeScript, EVENT_POKEMON_MANSION_1F_ESCAPE_ROPE
	object_event 18, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1F_CarbosScript, EVENT_POKEMON_MANSION_1F_CARBOS
