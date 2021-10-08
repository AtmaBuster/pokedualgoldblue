	object_const_def
	const ROCKTUNNEL1F_HIKER1
	const ROCKTUNNEL1F_HIKER2
	const ROCKTUNNEL1F_HIKER3
	const ROCKTUNNEL1F_KANTO_SUPER_NERD
	const ROCKTUNNEL1F_COOLTRAINER_F1
	const ROCKTUNNEL1F_COOLTRAINER_F2
	const ROCKTUNNEL1F_COOLTRAINER_F3

RockTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks

RockTunnel1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  3, ROUTE_10_NORTH, 2
	warp_event 15,  0, ROUTE_10_NORTH, 2
	warp_event 15, 33, ROUTE_10_SOUTH, 1
	warp_event 15, 35, ROUTE_10_SOUTH, 1
	warp_event 37,  3, ROCK_TUNNEL_B1F, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 2
	warp_event 17, 11, ROCK_TUNNEL_B1F, 3
	warp_event 37, 17, ROCK_TUNNEL_B1F, 4

	def_coord_events

	def_bg_events
	bg_event 11, 29, BGEVENT_READ, BGEvent

	def_object_events
	object_event  7,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  5, 16, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 17, 15, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 23,  8, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 37, 21, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 22, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 32, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
