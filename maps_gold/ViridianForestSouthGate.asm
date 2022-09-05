	object_const_def
	const VIRIDIANFORESTSOUTHGATE_GIRL
	const VIRIDIANFORESTSOUTHGATE_LITTLE_GIRL

ViridianForestSouthGate_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestSouthGate_LassScript:
	jumptextfaceplayer .Text
.Text:
	text "Are you going to"
	line "VIRIDIAN FOREST?"
	cont "Be careful, it's"
	cont "a natural maze!"
	done

ViridianForestSouthGate_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "RATTATA may be"
	line "small, but its"
	cont "bite is wicked!"
	cont "Did you get one?"
	done

ViridianForestSouthGate_MapEvents:
	def_warp_events
	warp_event  4,  0, VIRIDIAN_FOREST, 4
	warp_event  5,  0, VIRIDIAN_FOREST, 5
	warp_event  4,  7, ROUTE_2, 6
	warp_event  5,  7, ROUTE_2, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  4, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestSouthGate_LassScript, -1
	object_event  2,  4, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestSouthGate_GirlScript, -1
