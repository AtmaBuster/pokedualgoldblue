	object_const_def
	const VERMILIONMART_KANTO_CLERK
	const VERMILIONMART_COOLTRAINER_M
	const VERMILIONMART_COOLTRAINER_F

VermilionMart_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMart_ClerkSCript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VERMILION
	closetext
	end

VermilionMart_GuyScript:
	jumptextfaceplayer .Text
.Text:
	text "There are evil"
	line "people who will"
	cont "use #MON for"
	cont "criminal acts."

	para "TEAM ROCKET"
	line "traffics in rare"
	cont "#MON."

	para "They also abandon"
	line "#MON that they"
	cont "consider not to"
	cont "be popular or"
	cont "useful."
	done

VermilionMart_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "I think #MON"
	line "can be good or"
	cont "evil. It depends"
	cont "on the trainer."
	done

VermilionMart_MapEvents:
	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 3
	warp_event  4,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMart_ClerkSCript, -1
	object_event  5,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMart_GuyScript, -1
	object_event  3,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMart_GirlScript, -1
