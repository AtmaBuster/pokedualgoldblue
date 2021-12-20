	object_const_def
	const POKEMONTOWER7F_KANTO_ROCKET1
	const POKEMONTOWER7F_KANTO_ROCKET2
	const POKEMONTOWER7F_KANTO_ROCKET3
	const POKEMONTOWER7F_ELDER

PokemonTower7F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower7F_MrFujiScript:
	faceplayer
	opentext
	writetext .Text
	waitbutton
	closetext
	special FadeOutPalettes
	setevent EVENT_POKEMON_TOWER_7F_MR_FUJI
	clearevent EVENT_MR_FUJIS_HOUSE_MR_FUJI
	setevent EVENT_RESCUED_MR_FUJI
	playsound SFX_ENTER_DOOR
	waitsfx
	warpfacing UP, MR_FUJIS_HOUSE, 3, 7
	end

.Text:
	text "MR.FUJI: Heh? You"
	line "came to save me?"

	para "Thank you. But, I"
	line "came here of my"
	cont "own free will."

	para "I came to calm"
	line "the soul of"
	cont "CUBONE's mother."

	para "I think MAROWAK's"
	line "spirit has gone"
	cont "to the afterlife."

	para "I must thank you"
	line "for your kind"
	cont "concern!"

	para "Follow me to my"
	line "home, #MON"
	cont "HOUSE at the foot"
	cont "of this tower."
	done

TrainerGrunt19:
	trainer ROCKET_GEN1, GRUNT19_GEN1, EVENT_BEAT_ROCKET_GRUNT19_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	readvar VAR_XCOORD
	ifequal 9, .Move1
	ifequal 10, .Move2
	ifequal 11, .Move3
; Move4
	applymovement POKEMONTOWER7F_KANTO_ROCKET1, PokemonTower7F_RocketMovement4
	disappear POKEMONTOWER7F_KANTO_ROCKET1
	end

.Move1:
	applymovement POKEMONTOWER7F_KANTO_ROCKET1, PokemonTower7F_RocketMovement1
	disappear POKEMONTOWER7F_KANTO_ROCKET1
	end

.Move2:
	applymovement POKEMONTOWER7F_KANTO_ROCKET1, PokemonTower7F_RocketMovement2
	disappear POKEMONTOWER7F_KANTO_ROCKET1
	end

.Move3:
	applymovement POKEMONTOWER7F_KANTO_ROCKET1, PokemonTower7F_RocketMovement3
	disappear POKEMONTOWER7F_KANTO_ROCKET1
	end

.SeenText:
	text "What do you want?"
	line "Why are you here?"
	done

.BeatenText:
	text "I give up!"
	done

.AfterText:
	text "I'm not going to"
	line "forget this!"
	done

TrainerGrunt20:
	trainer ROCKET_GEN1, GRUNT20_GEN1, EVENT_BEAT_ROCKET_GRUNT20_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	readvar VAR_XCOORD
	ifequal 9, .Move1
	ifequal 10, .Move2
	ifequal 11, .Move3
; Move4
	applymovement POKEMONTOWER7F_KANTO_ROCKET2, PokemonTower7F_RocketMovement8
	disappear POKEMONTOWER7F_KANTO_ROCKET2
	end

.Move1:
	applymovement POKEMONTOWER7F_KANTO_ROCKET2, PokemonTower7F_RocketMovement5
	disappear POKEMONTOWER7F_KANTO_ROCKET2
	end

.Move2:
	applymovement POKEMONTOWER7F_KANTO_ROCKET2, PokemonTower7F_RocketMovement6
	disappear POKEMONTOWER7F_KANTO_ROCKET2
	end

.Move3:
	applymovement POKEMONTOWER7F_KANTO_ROCKET2, PokemonTower7F_RocketMovement7
	disappear POKEMONTOWER7F_KANTO_ROCKET2
	end

.SeenText:
	text "This old guy came"
	line "and complained"
	cont "about us harming"
	cont "useless #MON!"

	para "We're talking it"
	line "over as adults!"
	done

.BeatenText:
	text "Please!"
	line "No more!"
	done

.AfterText:
	text "#MON are only"
	line "good for making"
	cont "money!"

	para "Stay out of our"
	line "business!"
	done

TrainerGrunt21:
	trainer ROCKET_GEN1, GRUNT21_GEN1, EVENT_BEAT_ROCKET_GRUNT21_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	readvar VAR_XCOORD
	ifequal 9, .Move1
	ifequal 10, .Move2
	ifequal 11, .Move3
; Move4
	applymovement POKEMONTOWER7F_KANTO_ROCKET3, PokemonTower7F_RocketMovement12
	disappear POKEMONTOWER7F_KANTO_ROCKET3
	end

.Move1:
	applymovement POKEMONTOWER7F_KANTO_ROCKET3, PokemonTower7F_RocketMovement9
	disappear POKEMONTOWER7F_KANTO_ROCKET3
	end

.Move2:
	applymovement POKEMONTOWER7F_KANTO_ROCKET3, PokemonTower7F_RocketMovement10
	disappear POKEMONTOWER7F_KANTO_ROCKET3
	end

.Move3:
	applymovement POKEMONTOWER7F_KANTO_ROCKET3, PokemonTower7F_RocketMovement11
	disappear POKEMONTOWER7F_KANTO_ROCKET3
	end

.SeenText:
	text "You're not saving"
	line "anyone, kid!"
	done

.BeatenText:
	text "Don't"
	line "fight us ROCKETs!"
	done

.AfterText:
	text "You're not getting"
	line "away with this!"
	done

PokemonTower7F_RocketMovement1:
; 60e13
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step_end

PokemonTower7F_RocketMovement2:
; 60e1b
	step DOWN
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PokemonTower7F_RocketMovement3:
PokemonTower7F_RocketMovement4:
PokemonTower7F_RocketMovement5:
PokemonTower7F_RocketMovement6:
PokemonTower7F_RocketMovement10:
PokemonTower7F_RocketMovement11:
PokemonTower7F_RocketMovement12:
; 60e22
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PokemonTower7F_RocketMovement7:
; 60e28
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step_end

PokemonTower7F_RocketMovement8:
; 60e30
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PokemonTower7F_RocketMovement9:
; 60e37
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PokemonTower7F_MapEvents:
	def_warp_events
	warp_event  9, 16, POKEMON_TOWER_6F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 11, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGrunt19, EVENT_POKEMON_TOWER_7F_ROCKET1
	object_event 12,  9, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGrunt20, EVENT_POKEMON_TOWER_7F_ROCKET2
	object_event  9,  7, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGrunt21, EVENT_POKEMON_TOWER_7F_ROCKET3
	object_event 10,  3, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower7F_MrFujiScript, EVENT_POKEMON_TOWER_7F_MR_FUJI
