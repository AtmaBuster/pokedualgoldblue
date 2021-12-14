	object_const_def
	const ROUTE16GATE2F_LITTLE_BOY
	const ROUTE16GATE2F_LITTLE_GIRL

Route16Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route16Gate2F_BoyScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm going for a"
	line "ride with my girl"
	cont "friend!"
	done

Route16Gate2F_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "We're going"
	line "riding together!"
	done

Route16Gate2F_BinocularsLeftScript:
	jumptext .Text
.Text:
	text "Looked into the"
	line "binoculars."

	para "It's CELADON DEPT."
	line "STORE!"
	done

Route16Gate2F_BinocularsRightScript:
	jumptext .Text
.Text:
	text "Looked into the"
	line "binoculars."

	para "There's a long"
	line "path over water!"
	done

Route16Gate2F_MapEvents:
	def_warp_events
	warp_event  7,  7, ROUTE_16_GATE_1F, 9

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, Route16Gate2F_BinocularsLeftScript
	bg_event  6,  2, BGEVENT_READ, Route16Gate2F_BinocularsRightScript

	def_object_events
	object_event  4,  2, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16Gate2F_BoyScript, -1
	object_event  2,  5, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16Gate2F_GirlScript, -1
