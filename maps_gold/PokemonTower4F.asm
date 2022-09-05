	object_const_def
	const POKEMONTOWER4F_CHANNELER1
	const POKEMONTOWER4F_CHANNELER2
	const POKEMONTOWER4F_CHANNELER3
	const POKEMONTOWER4F_POKE_BALL1
	const POKEMONTOWER4F_POKE_BALL2
	const POKEMONTOWER4F_POKE_BALL3

PokemonTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerPaula:
	trainer CHANNELER_GEN1, PAULA_GEN1, EVENT_BEAT_CHANNELER_PAULA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "GHOST! No!"
	line "Kwaaah!"
	done

.BeatenText:
	text "Where is the"
	line "GHOST?"
	done

.AfterText:
	text "I must have been"
	line "dreaming..."
	done

TrainerChannelerLaurel:
	trainer CHANNELER_GEN1, LAUREL_GEN1, EVENT_BEAT_CHANNELER_LAUREL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Be cursed with"
	line "me! Kwaaah!"
	done

.BeatenText:
	text "What!"
	done

.AfterText:
	text "We can't crack"
	line "the identity of"
	cont "the GHOSTs."
	done

TrainerChannelerJody:
	trainer CHANNELER_GEN1, JODY_GEN1, EVENT_BEAT_CHANNELER_JODY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Huhuhu..."
	line "Beat me not!"
	done

.BeatenText:
	text "Huh? Who? What?"
	done

.AfterText:
	text "May the departed"
	line "souls of #MON"
	cont "rest in peace..."
	done

PokemonTower4F_ElixerScript:
	itemball ELIXER

PokemonTower4F_AwakeningScript:
	itemball AWAKENING

PokemonTower4F_HPUpScript:
	itemball HP_UP

PokemonTower4F_MapEvents:
	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_5F, 1
	warp_event 18,  9, POKEMON_TOWER_3F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerPaula, -1
	object_event 15,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerLaurel, -1
	object_event 14, 12, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerJody, -1
	object_event 12, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4F_ElixerScript, EVENT_POKEMON_TOWER_4F_ELIXER
	object_event  9, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4F_AwakeningScript, EVENT_POKEMON_TOWER_4F_AWAKENING
	object_event 12, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4F_HPUpScript, EVENT_POKEMON_TOWER_4F_HP_UP
