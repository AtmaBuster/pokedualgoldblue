	object_const_def
	const POKEMONMANSIONB1F_KANTO_SUPER_NERD
	const POKEMONMANSIONB1F_KANTO_SCIENTIST
	const POKEMONMANSIONB1F_POKE_BALL1
	const POKEMONMANSIONB1F_POKE_BALL2
	const POKEMONMANSIONB1F_POKE_BALL3
	const POKEMONMANSIONB1F_POKE_BALL4
	const POKEMONMANSIONB1F_POKEDEX
	const POKEMONMANSIONB1F_POKE_BALL5

PokemonMansionB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_POKEMON_MANSION_DOORS
	iftrue .DoorsOn
	changeblock 26, 16, $0e ; open
	changeblock 12, 22, $0e ; open
	changeblock  8,  6, $5f ; closed
	changeblock 16, 16, $54 ; closed
	endcallback

.DoorsOn:
	changeblock 26, 16, $2d ; closed
	changeblock 12, 22, $5f ; closed
	changeblock  8,  6, $0e ; open
	changeblock 16, 16, $0e ; open
	endcallback

PokemonMansionB1F_StatueScript:
	opentext
	writetext .PressText
	yesorno
	iffalse .SaidNo
	writetext .YesText
	waitbutton
	checkevent EVENT_POKEMON_MANSION_DOORS
	iftrue .SetFalse
	setevent EVENT_POKEMON_MANSION_DOORS
	changeblock 26, 16, $2d ; closed
	changeblock 12, 22, $5f ; closed
	changeblock  8,  6, $0e ; open
	changeblock 16, 16, $0e ; open
	reloadmappart
	closetext
	end

.SetFalse:
	clearevent EVENT_POKEMON_MANSION_DOORS
	changeblock 26, 16, $0e ; open
	changeblock 12, 22, $0e ; open
	changeblock  8,  6, $5f ; closed
	changeblock 16, 16, $54 ; closed
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

PokemonMansionB1F_HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_POKEMON_MANSION_B1F_HIDDEN_RARE_CANDY

TrainerBurglarLewis:
	trainer BURGLAR_GEN1, LEWIS_GEN1, EVENT_BEAT_BURGLAR_LEWIS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Uh-oh. Where am"
	line "I now?"
	done

.BeatenText:
	text "Awooh!"
	done

.AfterText:
	text "You can find stuff"
	line "lying around."
	done

TrainerScientistIvan:
	trainer SCIENTIST_GEN1, IVAN_GEN1, EVENT_BEAT_SCIENTIST_IVAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "This place is"
	line "ideal for a lab."
	done

.BeatenText:
	text "What was that for?"
	done

.AfterText:
	text "I like it here!"
	line "It's conducive to"
	cont "my studies!"
	done

PokemonMansionB1F_RareCandyScript:
	itemball RARE_CANDY

PokemonMansionB1F_FullRestoreScript:
	itemball FULL_RESTORE

PokemonMansionB1F_TMBlizzardScript:
	itemball TM_BLIZZARD

PokemonMansionB1F_TMSolarbeamScript:
	itemball TM_SOLARBEAM

PokemonMansionB1F_SecretKeyScript:
	itemball SECRET_KEY

PokemonMansionB1F_BookScript:
	jumptext .Text
.Text:
	text "Diary; Sept. 1"
	line "MEWTWO is far too"
	cont "powerful."

	para "We have failed to"
	line "curb its vicious"
	cont "tendencies..."
	done

PokemonMansionB1F_MapEvents:
	def_warp_events
	warp_event 23, 22, POKEMON_MANSION_1F, 6

	def_coord_events

	def_bg_events
	bg_event 20,  3, BGEVENT_UP, PokemonMansionB1F_StatueScript
	bg_event 18, 25, BGEVENT_UP, PokemonMansionB1F_StatueScript
	bg_event  1,  9, BGEVENT_ITEM, PokemonMansionB1F_HiddenRareCandy

	def_object_events
	object_event 16, 23, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBurglarLewis, -1
	object_event 27, 11, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistIvan, -1
	object_event 10,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1F_RareCandyScript, EVENT_POKEMON_MANSION_B1F_RARE_CANDY
	object_event  1, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1F_FullRestoreScript, EVENT_POKEMON_MANSION_B1F_FULL_RESTORE
	object_event 19, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1F_TMBlizzardScript, EVENT_POKEMON_MANSION_B1F_TM_BLIZZARD
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1F_TMSolarbeamScript, EVENT_POKEMON_MANSION_B1F_TM_SOLARBEAM
	object_event 16, 20, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansionB1F_BookScript, -1
	object_event  5, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1F_SecretKeyScript, EVENT_POKEMON_MANSION_B1F_SECRET_KEY
