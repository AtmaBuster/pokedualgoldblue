	object_const_def
	const POKEMONMANSION3F_KANTO_SUPER_NERD
	const POKEMONMANSION3F_KANTO_SCIENTIST
	const POKEMONMANSION3F_POKE_BALL1
	const POKEMONMANSION3F_POKE_BALL2
	const POKEMONMANSION3F_POKEDEX

PokemonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_POKEMON_MANSION_DOORS
	iftrue .DoorsOn
	changeblock 14,  4, $0e ; open
	changeblock 14, 10, $5f ; closed
	endcallback

.DoorsOn:
	changeblock 14,  4, $5f ; closed
	changeblock 14, 10, $0e ; open
	endcallback

PokemonMansion3F_StatueScript:
	opentext
	writetext .PressText
	yesorno
	iffalse .SaidNo
	writetext .YesText
	waitbutton
	checkevent EVENT_POKEMON_MANSION_DOORS
	iftrue .SetFalse
	setevent EVENT_POKEMON_MANSION_DOORS
	changeblock 14,  4, $5f ; closed
	changeblock 14, 10, $0e ; open
	reloadmappart
	closetext
	end

.SetFalse:
	clearevent EVENT_POKEMON_MANSION_DOORS
	changeblock 14,  4, $0e ; open
	changeblock 14, 10, $5f ; closed
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

PokemonMansion3F_HiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_POKEMON_MANSION_3F_HIDDEN_MAX_REVIVE

PokemonMansion3F_MaxPotionScript:
	itemball MAX_POTION

PokemonMansion3F_IronScript:
	itemball IRON

PokemonMansion3F_BookScript:
	jumptext .Text
.Text:
	text "Diary: Feb. 6"
	line "MEW gave birth."

	para "We named the"
	line "newborn MEWTWO."
	done

TrainerBurglarSimon:
	trainer BURGLAR_GEN1, SIMON_GEN1, EVENT_BEAT_BURGLAR_SIMON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "This place is"
	line "like, huge!"
	done

.BeatenText:
	text "Ayah!"
	done

.AfterText:
	text "I wonder where"
	line "my partner went."
	done

TrainerScientistBraydon:
	trainer SCIENTIST_GEN1, BRAYDON_GEN1, EVENT_BEAT_SCIENTIST_BRAYDON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My mentor once"
	line "lived here."
	done

.BeatenText:
	text "Whew!"
	line "Overwhelming!"
	done

.AfterText:
	text "So, you're stuck?"
	line "Try jumping off"
	cont "over there!"
	done

PokemonMansion3F_MapEvents:
	def_warp_events
	warp_event  7, 10, POKEMON_MANSION_2F, 2
	warp_event  6,  1, POKEMON_MANSION_2F, 4
	warp_event 25, 14, POKEMON_MANSION_2F, 3
	warp_event 16, 14, POKEMON_MANSION_1F, 9
	warp_event 17, 14, POKEMON_MANSION_1F, 9
	warp_event 19, 14, POKEMON_MANSION_2F, 5

	def_coord_events

	def_bg_events
	bg_event 10,  5, BGEVENT_UP, PokemonMansion3F_StatueScript
	bg_event  1,  9, BGEVENT_ITEM, PokemonMansion3F_HiddenMaxRevive

	def_object_events
	object_event  5, 11, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBurglarSimon, -1
	object_event 20, 11, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistBraydon, -1
	object_event  1, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion3F_MaxPotionScript, EVENT_POKEMON_MANSION_3F_MAX_POTION
	object_event 25,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion3F_IronScript, EVENT_POKEMON_MANSION_3F_IRON
	object_event  6, 12, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion3F_BookScript, -1
