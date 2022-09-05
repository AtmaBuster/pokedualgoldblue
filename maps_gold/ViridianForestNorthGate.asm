	object_const_def
	const VIRIDIANFORESTNORTHGATE_KANTO_SUPER_NERD
	const VIRIDIANFORESTNORTHGATE_KANTO_GRAMPS

ViridianForestNorthGate_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestNorthGate_NerdScript:
	jumptextfaceplayer .Text
.Text:
	text "Many #MON live"
	line "only in forests "
	cont "and caves."

	para "You need to look"
	line "everywhere to get"
	cont "different kinds!"
	done

ViridianForestNorthGate_OldManScript:
	jumptextfaceplayer .Text
.Text:
	text "Have you noticed"
	line "the bushes on the"
	cont "roadside?"

	para "They can be cut"
	line "down by a special"
	cont "#MON move."
	done

ViridianForestNorthGate_MapEvents:
	def_warp_events
	warp_event  4,  0, ROUTE_2, 2
	warp_event  5,  0, ROUTE_2, 2
	warp_event  4,  7, VIRIDIAN_FOREST, 1
	warp_event  5,  7, VIRIDIAN_FOREST, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestNorthGate_NerdScript, -1
	object_event  2,  5, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestNorthGate_OldManScript, -1
