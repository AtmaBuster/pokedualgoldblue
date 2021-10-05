	object_const_def

RockTunnelB1F_MapScripts:
	def_scene_scripts

	def_callbacks

RockTunnelB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 25, ROCK_TUNNEL_1F, 5
	warp_event 27,  3, ROCK_TUNNEL_1F, 6
	warp_event 23, 11, ROCK_TUNNEL_1F, 7
	warp_event  3,  3, ROCK_TUNNEL_1F, 8

	def_coord_events

	def_bg_events

	def_object_events
