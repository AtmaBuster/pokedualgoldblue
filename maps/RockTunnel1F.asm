	object_const_def

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

	def_object_events
