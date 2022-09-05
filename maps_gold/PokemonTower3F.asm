	object_const_def
	const POKEMONTOWER3F_CHANNELER1
	const POKEMONTOWER3F_CHANNELER2
	const POKEMONTOWER3F_CHANNELER3
	const POKEMONTOWER3F_POKE_BALL

PokemonTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerHope:
	trainer CHANNELER_GEN1, HOPE_GEN1, EVENT_BEAT_CHANNELER_HOPE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Urrg...Awaa..."
	line "Huhu...graa.."
	done

.BeatenText:
	text "Hwa! I'm saved!"
	done

.AfterText:
	text "The GHOSTs can be"
	line "identified by the"
	cont "SILPH SCOPE."
	done

TrainerChannelerCarly:
	trainer CHANNELER_GEN1, CARLY_GEN1, EVENT_BEAT_CHANNELER_CARLY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Kekeke...."
	line "Kwaaah!"
	done

.BeatenText:
	text "Hmm? What am I"
	line "doing?"
	done

.AfterText:
	text "Sorry! I was"
	line "possessed!"
	done

TrainerChannelerPatricia:
	trainer CHANNELER_GEN1, PATRICIA_GEN1, EVENT_BEAT_CHANNELER_PATRICIA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Be gone!"
	line "Evil spirit!"
	done

.BeatenText:
	text "Whew! The spirit"
	line "left!"
	done

.AfterText:
	text "My friends were"
	line "possessed too!"
	done

PokemonTower3F_EscapeRopeScript:
	itemball ESCAPE_ROPE

PokemonTower3F_MapEvents:
	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_2F, 1
	warp_event 18,  9, POKEMON_TOWER_4F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerHope, -1
	object_event  9,  8, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerCarly, -1
	object_event 10, 13, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerPatricia, -1
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower3F_EscapeRopeScript, EVENT_POKEMON_TOWER_3F_ESCAPE_ROPE
