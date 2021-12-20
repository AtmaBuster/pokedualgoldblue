	object_const_def
	const POKEMONTOWER6F_CHANNELER1
	const POKEMONTOWER6F_CHANNELER2
	const POKEMONTOWER6F_CHANNELER3
	const POKEMONTOWER6F_POKE_BALL1
	const POKEMONTOWER6F_POKE_BALL2

PokemonTower6F_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

PokemonTower6F_MarowakScript:
	opentext
	writetext .BegoneText
	waitbutton
	closetext
	loadwildmon MAROWAK, 30
;	loadvar VAR_BATTLETYPE, BATTLETYPE_FEMALEONLY
	startbattle
	ifequal DRAW, .RanAway
	reloadmapafterbattle
	opentext
	writetext .RestlessSoulText
	cry MAROWAK
	waitsfx
	pause 15
	writetext .SoulWasCalmedText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end

.RanAway:
	reloadmapafterbattle
	applymovement PLAYER, .ForceLeaveMovement
	end

.BegoneText:
	text "Be gone..."
	line "Intruders..."
	done

.RestlessSoulText:
	text "The GHOST was the"
	line "restless soul of"
	cont "CUBONE's mother!"
	done

.SoulWasCalmedText:
	text "The mother's soul"
	line "was calmed."

	para "It departed to"
	line "the afterlife!"
	done

.ForceLeaveMovement:
	step UP
	step_end

TrainerChannelerAngel:
	trainer CHANNELER_GEN1, ANGEL_GEN1, EVENT_BEAT_CHANNELER_ANGEL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Give...me..."
	line "blood..."
	done

.BeatenText:
	text "Groan!"
	done

.AfterText:
	text "I feel anemic and"
	line "weak..."
	done

TrainerChannelerJenny:
	trainer CHANNELER_GEN1, JENNY_GEN1, EVENT_BEAT_CHANNELER_JENNY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Urff... Kwaah!"
	done

.BeatenText:
	text "Some-"
	line "thing fell out!"
	done

.AfterText:
	text "Hair didn't fall"
	line "out! It was an"
	cont "evil spirit!"
	done

TrainerChannelerEmilia:
	trainer CHANNELER_GEN1, EMILIA_GEN1, EVENT_BEAT_CHANNELER_EMILIA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Ke..ke...ke..."
	line "ke..ke...ke!!"
	done

.BeatenText:
	text "Keee!"
	done

.AfterText:
	text "What's going on"
	line "here?"
	done

PokemonTower6F_RareCandyScript:
	itemball RARE_CANDY

PokemonTower6F_XAccuracyScript:
	itemball X_ACCURACY

PokemonTower6F_MapEvents:
	def_warp_events
	warp_event 18,  9, POKEMON_TOWER_5F, 2
	warp_event  9, 16, POKEMON_TOWER_7F, 1

	def_coord_events
	coord_event 10, 16, SCENE_DEFAULT, PokemonTower6F_MarowakScript

	def_bg_events

	def_object_events
	object_event 12, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerAngel, -1
	object_event  9,  5, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerJenny, -1
	object_event 16,  5, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerEmilia, -1
	object_event  6,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6F_RareCandyScript, EVENT_POKEMON_TOWER_6F_RARE_CANDY
	object_event 14, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6F_XAccuracyScript, EVENT_POKEMON_TOWER_6F_X_ACCURACY
