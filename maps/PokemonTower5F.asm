	object_const_def
	const POKEMONTOWER5F_CHANNELER1
	const POKEMONTOWER5F_CHANNELER2
	const POKEMONTOWER5F_CHANNELER3
	const POKEMONTOWER5F_CHANNELER4
	const POKEMONTOWER5F_CHANNELER5
	const POKEMONTOWER5F_POKE_BALL

PokemonTower5F_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

PokemonTower5F_EnterPurifiedZone:
	special FadeOutPalettes
	pause 3
	special FadeInPalettes
	special HealParty
	opentext
	writetext .Text
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end

.Text:
	text "Entered purified,"
	line "protected zone!"

	para "<PLAYER>'s #MON"
	line "are fully healed!"
	done

PokemonTower5F_ExitPurifiedZone:
	setscene SCENE_DEFAULT
	end

TrainerChannelerTammy:
	trainer CHANNELER_GEN1, TAMMY_GEN1, EVENT_BEAT_CHANNELER_TAMMY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Give...me..."
	line "your...soul..."
	done

.BeatenText:
	text "Gasp!"
	done

.AfterText:
	text "I was under"
	line "possession!"
	done

TrainerChannelerRuth:
	trainer CHANNELER_GEN1, RUTH_GEN1, EVENT_BEAT_CHANNELER_RUTH_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You...shall..."
	line "join...us..."
	done

.BeatenText:
	text "What a nightmare!"
	done

.AfterText:
	text "I was possessed!"
	done

TrainerChannelerKarina:
	trainer CHANNELER_GEN1, KARINA_GEN1, EVENT_BEAT_CHANNELER_KARINA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Zombies!"
	done

.BeatenText:
	text "Ha?"
	done

.AfterText:
	text "I regained my"
	line "senses!"
	done

TrainerChannelerJanae:
	trainer CHANNELER_GEN1, JANAE_GEN1, EVENT_BEAT_CHANNELER_JANAE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Urgah..."
	line "Urff...."
	done

.BeatenText:
	text "Whoo!"
	done

.AfterText:
	text "I fell to evil"
	line "spirits despite"
	cont "my training!"
	done

PokemonTower5F_ChannelerScript:
	jumptextfaceplayer .Text
.Text:
	text "Come, child! I"
	line "sealed this space"
	cont "with white magic!"

	para "You can rest here!"
	done

PokemonTower5F_NuggetScript:
	itemball NUGGET

PokemonTower5F_HiddenElixer:
	hiddenitem ELIXER, EVENT_POKEMON_TOWER_5F_HIDDEN_ELIXER

PokemonTower5F_MapEvents:
	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_4F, 1
	warp_event 18,  9, POKEMON_TOWER_6F, 1

	def_coord_events
	coord_event 10,  8, SCENE_DEFAULT, PokemonTower5F_EnterPurifiedZone
	coord_event 10,  9, SCENE_DEFAULT, PokemonTower5F_EnterPurifiedZone
	coord_event 11,  9, SCENE_DEFAULT, PokemonTower5F_EnterPurifiedZone
	coord_event  9,  8, SCENE_FINISHED, PokemonTower5F_ExitPurifiedZone
	coord_event  9,  9, SCENE_FINISHED, PokemonTower5F_ExitPurifiedZone
	coord_event 12,  9, SCENE_FINISHED, PokemonTower5F_ExitPurifiedZone
	coord_event 10, 10, SCENE_FINISHED, PokemonTower5F_ExitPurifiedZone
	coord_event 11, 10, SCENE_FINISHED, PokemonTower5F_ExitPurifiedZone

	def_bg_events
	bg_event  4, 12, BGEVENT_ITEM, PokemonTower5F_HiddenElixer

	def_object_events
	object_event 12,  8, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower5F_ChannelerScript, -1
	object_event 17,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerTammy, -1
	object_event 14,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerRuth, -1
	object_event  6, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerKarina, -1
	object_event  9, 16, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerJanae, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower5F_NuggetScript, EVENT_POKEMON_TOWER_5F_NUGGET
