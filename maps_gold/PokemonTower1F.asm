	object_const_def
	const POKEMONTOWER1F_OLD_LINK_RECEPTIONIST
	const POKEMONTOWER1F_MIDDLE_AGED_WOMAN
	const POKEMONTOWER1F_BALDING_GUY
	const POKEMONTOWER1F_GIRL
	const POKEMONTOWER1F_CHANNELER

PokemonTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower1F_ReceptionistScript:
	jumptextfaceplayer .Text
.Text:
	text "#MON TOWER was"
	line "erected in the"
	cont "memory of #MON"
	cont "that had died."
	done

PokemonTower1F_WomanScript:
	jumptextfaceplayer .Text
.Text:
	text "Did you come to"
	line "pay respects?"
	cont "Bless you!"
	done

PokemonTower1F_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "I came to pray"
	line "for my CLEFAIRY."

	para "Sniff! I can't"
	line "stop crying..."
	done

PokemonTower1F_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "My GROWLITHE..."
	line "Why did you die?"
	done

PokemonTower1F_ChannelerScript:
	jumptextfaceplayer .Text
.Text:
	text "I am a CHANNELER!"
	line "There are spirits"
	cont "up to mischief!"
	done

PokemonTower1F_MapEvents:
	def_warp_events
	warp_event 10, 17, LAVENDER_TOWN, 2
	warp_event 11, 17, LAVENDER_TOWN, 2
	warp_event 18,  9, POKEMON_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 15, 13, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower1F_ReceptionistScript, -1
	object_event  6,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower1F_WomanScript, -1
	object_event  8, 12, SPRITE_BALDING_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower1F_ManScript, -1
	object_event 13,  7, SPRITE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower1F_GirlScript, -1
	object_event 17,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower1F_ChannelerScript, -1
