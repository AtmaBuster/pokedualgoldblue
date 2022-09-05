	object_const_def
	const CELADONHOTEL_KANTO_GRANNY
	const CELADONHOTEL_KANTO_BEAUTY
	const CELADONHOTEL_KANTO_SUPER_NERD

CeladonHotel_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonHotel_ReceptionistScript:
	jumptextfaceplayer .Text
.Text:
	text "#MON? No, this"
	line "is a hotel for"
	cont "people."

	para "We're full up."
	done

CeladonHotel_WomanScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm on vacation"
	line "with my brother"
	cont "and boy friend."

	para "CELADON is such a"
	line "pretty city!"
	done

CeladonHotel_PoorGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "Why did she bring"
	line "her brother?"
	done

CeladonHotel_BenchGuyScript:
	jumptext .Text
.Text:
	text "My sis brought me"
	line "on this vacation!"
	done

CeladonHotel_PCScript:
	jumpstd PCScript

CeladonHotel_MapEvents:
	def_warp_events
	warp_event  3,  7, CELADON_CITY, 13
	warp_event  4,  7, CELADON_CITY, 13

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, CeladonHotel_BenchGuyScript
	bg_event 13,  3, BGEVENT_READ, CeladonHotel_PCScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonHotel_ReceptionistScript, -1
	object_event  2,  4, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonHotel_WomanScript, -1
	object_event  8,  4, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonHotel_PoorGuyScript, -1
