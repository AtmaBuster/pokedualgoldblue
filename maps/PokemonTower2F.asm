	object_const_def
	const POKEMONTOWER2F_KANTO_BLUE
	const POKEMONTOWER2F_CHANNELER

PokemonTower2F_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

PokemonTower2F_ChannelerScript:
	jumptextfaceplayer .Text
.Text:
	text "Even we could not"
	line "identify the"
	cont "wayward GHOSTs!"

	para "A SILPH SCOPE"
	line "might be able to"
	cont "unmask them."
	done

PokemonTower2F_RivalScriptR:
	turnobject POKEMONTOWER2F_KANTO_BLUE, RIGHT
	turnobject PLAYER, LEFT
	scall PokemonTower2F_RivalScript
	applymovement POKEMONTOWER2F_KANTO_BLUE, .LeaveMovement
	disappear POKEMONTOWER2F_KANTO_BLUE
	end

.LeaveMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end

PokemonTower2F_RivalScriptD:
	turnobject POKEMONTOWER2F_KANTO_BLUE, DOWN
	turnobject PLAYER, UP
	scall PokemonTower2F_RivalScript
	applymovement POKEMONTOWER2F_KANTO_BLUE, .LeaveMovement
	disappear POKEMONTOWER2F_KANTO_BLUE
	end

.LeaveMovement:
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step_end

PokemonTower2F_RivalScript:
	playmusic MUSIC_RBY_MEET_RIVAL
	opentext
	writetext .IntroText
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER
	iftrue .VsSquirtle
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .VsBulbasaur
; VsCharmander
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_2_CHARMANDER_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsSquirtle:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_2_SQUIRTLE_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsBulbasaur:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_2_BULBASAUR_GEN1
	startbattle
	reloadmapafterbattle
.After:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	playmusic MUSIC_RBY_MEET_RIVAL
	end

.IntroText:
	text "<RIVAL>: Hey,"
	line "<PLAYER>! What"
	cont "brings you here?"
	cont "Your #MON"
	cont "don't look dead!"

	para "I can at least"
	line "make them faint!"
	cont "Let's go, pal!"
	done

.WinText:
	text "What?"
	line "You stinker!"

	para "I took it easy on"
	line "you too!"
	done

.LossText:
	text "<RIVAL>: Well,"
	line "look at all your"
	cont "wimpy #MON!"

	para "Toughen them up a"
	line "bit more!"
	done

.AfterText:
	text "How's your #DEX"
	line "coming, pal?"
	cont "I just caught a"
	cont "CUBONE!"

	para "I can't find the"
	line "grown-up MAROWAK"
	cont "yet!"

	para "I doubt there are"
	line "any left! Well, I"
	cont "better get going!"
	cont "I've got a lot to"
	cont "accomplish, pal!"

	para "Smell ya later!"
	done

PokemonTower2F_MapEvents:
	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_3F, 1
	warp_event 18,  9, POKEMON_TOWER_1F, 3

	def_coord_events
	coord_event 15,  5, SCENE_DEFAULT, PokemonTower2F_RivalScriptR
	coord_event 14,  6, SCENE_DEFAULT, PokemonTower2F_RivalScriptD

	def_bg_events

	def_object_events
	object_event 14,  5, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_POKEMON_TOWER_2F_RIVAL
	object_event  3,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower2F_ChannelerScript, -1
