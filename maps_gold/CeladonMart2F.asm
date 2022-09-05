	object_const_def
	const CELADONMART2F_KANTO_CLERK1
	const CELADONMART2F_KANTO_CLERK2
	const CELADONMART2F_POKEFAN_M
	const CELADONMART2F_GIRL

CeladonMart2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart2F_Clerk1Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_2F_1
	closetext
	end

CeladonMart2F_Clerk2Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_2F_2
	closetext
	end

CeladonMart2F_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "SUPER REPEL keeps"
	line "weak #MON at"
	cont "bay..."

	para "Hmm, it's a more"
	line "powerful REPEL!"
	done

CeladonMart2F_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "For long outings,"
	line "you should buy"
	cont "REVIVE."
	done

CeladonMart2F_SignScript:
	jumptext .Text
.Text:
	text "Top Grade Items"
	line "for Trainers!"

	para "2F: TRAINER'S"
	line "    MARKET"
	done

CeladonMart2F_MapEvents:
	def_warp_events
	warp_event 12,  1, CELADON_MART_1F, 5
	warp_event 16,  1, CELADON_MART_3F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_READ, CeladonMart2F_SignScript

	def_object_events
	object_event  5,  3, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart2F_Clerk1Script, -1
	object_event  6,  3, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart2F_Clerk2Script, -1
	object_event 19,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart2F_ManScript, -1
	object_event 14,  4, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart2F_GirlScript, -1
