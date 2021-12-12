	object_const_def
	const MUSEUM2F_KANTO_YOUNGSTER
	const MUSEUM2F_KANTO_GRAMPS
	const MUSEUM2F_KANTO_SCIENTIST
	const MUSEUM2F_BRUNETTE_GIRL
	const MUSEUM2F_HIKER

Museum2F_MapScripts:
	def_scene_scripts

	def_callbacks

Museum2F_YoungsterScript:
	jumptextfaceplayer .Text
.Text:
	text "MOON STONE?"

	para "What's so special"
	line "about it?"
	done

Museum2F_OldManScript:
	jumptextfaceplayer .Text
.Text:
	text "July 20, 1969!"

	para "The 1st lunar"
	line "landing!"

	para "I bought a color"
	line "TV to watch it!"
	done

Museum2F_ScientistScript:
	jumptextfaceplayer .Text
.Text:
	text "We have a space"
	line "exhibit now."
	done

Museum2F_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "I want a PIKACHU!"
	line "It's so cute!"

	para "I asked my Daddy"
	line "to catch me one!"
	done

Museum2F_GirlsDadScript:
	jumptextfaceplayer .Text
.Text:
	text "Yeah, a PIKACHU"
	line "soon, I promise!"
	done

Museum2F_ShuttleScript:
	jumptext .Text
.Text:
	text "SPACE SHUTTLE"
	line "COLUMBIA"
	done

Museum2F_MoonStoneScript:
	jumptext .Text
.Text:
	text "Meteorite that"
	line "fell on MT.MOON."
	cont "(MOON STONE?)"
	done

Museum2F_MapEvents:
	def_warp_events
	warp_event  7,  7, MUSEUM_1F, 5

	def_coord_events

	def_bg_events
	bg_event 11,  2, BGEVENT_READ, Museum2F_ShuttleScript
	bg_event  2,  5, BGEVENT_READ, Museum2F_MoonStoneScript

	def_object_events
	object_event  1,  7, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum2F_YoungsterScript, -1
	object_event  0,  5, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum2F_OldManScript, -1
	object_event  7,  5, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum2F_ScientistScript, -1
	object_event 11,  5, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum2F_GirlScript, -1
	object_event 12,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum2F_GirlsDadScript, -1
