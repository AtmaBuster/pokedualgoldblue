	object_const_def
	const SILPHCO1F_OLD_LINK_RECEPTIONIST

SilphCo1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo1F_ReceptionistScript:
	jumptextfaceplayer .Text
.Text:
	text "Welcome!"

	para "The PRESIDENT is"
	line "in the boardroom"
	cont "on 11F!"
	done

SilphCo1F_MapEvents:
	def_warp_events
	warp_event 10, 17, SAFFRON_CITY, 6
	warp_event 11, 17, SAFFRON_CITY, 6
	warp_event 26,  0, SILPH_CO_2F, 1
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 16, 10, SILPH_CO_3F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo1F_ReceptionistScript, EVENT_SAFFRON_CITY_ROCKET_GROUP2
