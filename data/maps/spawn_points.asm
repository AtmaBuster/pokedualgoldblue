spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

IF DEF(_GOLD)
	spawn PLAYERS_HOUSE_2F,            3,  3
ELIF DEF(_BLUE)
	spawn REDS_HOUSE_2F,               3,  6
ENDC

	spawn REDS_HOUSE_2F,               3,  6 ; debug

	spawn PALLET_TOWN,                 5,  6
	spawn VIRIDIAN_CITY,              23, 26
	spawn PEWTER_CITY,                13, 26
	spawn CERULEAN_CITY,              19, 18
	spawn ROUTE_10_NORTH,             11, 20
	spawn VERMILION_CITY,             11,  4
	spawn LAVENDER_TOWN,               3,  6
	spawn SAFFRON_CITY,                9, 30
	spawn CELADON_CITY,               41, 10
	spawn FUCHSIA_CITY,               19, 28
	spawn CINNABAR_ISLAND,            11, 12
	spawn INDIGO_PLATEAU,              9,  6

	spawn NEW_BARK_TOWN,              13,  6
	spawn CHERRYGROVE_CITY,           29,  4
	spawn VIOLET_CITY,                31, 26
	spawn ROUTE_32,                   11, 74
	spawn AZALEA_TOWN,                15, 10
	spawn CIANWOOD_CITY,              23, 44
	spawn GOLDENROD_CITY,             15, 28
	spawn OLIVINE_CITY,               13, 22
	spawn ECRUTEAK_CITY,              23, 28
	spawn MAHOGANY_TOWN,              15, 14
	spawn LAKE_OF_RAGE,               21, 29
	spawn BLACKTHORN_CITY,            21, 30
	spawn SILVER_CAVE_OUTSIDE,        23, 20
	spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
