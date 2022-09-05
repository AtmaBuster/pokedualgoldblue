	object_const_def
	const DIGLETTSCAVEROUTE11_GAMBLER

DiglettsCaveRoute11_MapScripts:
	def_scene_scripts

	def_callbacks

DiglettsCaveRoute11_GamblerScript:
	jumptextfaceplayer .Text
.Text:
	text "What a surprise!"
	line "DIGLETTs dug this"
	cont "long tunnel!"

	para "It goes right to"
	line "VIRIDIAN CITY!"
	done

DiglettsCaveRoute11_MapEvents:
	def_warp_events
	warp_event  2,  7, ROUTE_11, 5
	warp_event  3,  7, ROUTE_11, 5
	warp_event  4,  4, DIGLETTS_CAVE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DiglettsCaveRoute11_GamblerScript, -1
