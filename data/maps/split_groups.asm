; based on pokered's data/maps/sprite_sets.asm:SplitMapSpriteSets

split_set: MACRO
	map_id \1
	db \2 ; determines whether the map is split EAST_WEST or NORTH_SOUTH
	db \3 ; coordinate of dividing line
	db \4 ; sprite set ID if in the West or North side
	db \5 ; sprite set ID if in the East or South side
ENDM

EAST_WEST   EQU 1
NORTH_SOUTH EQU 2

SplitMapGroups:
	split_set ROUTE_2,  NORTH_SOUTH, 37, GROUP_PEWTER_CITY,     GROUP_VIRIDIAN_CITY
	split_set ROUTE_5,  NORTH_SOUTH, 33, GROUP_CERULEAN_CITY,   GROUP_SAFFRON_CITY
	split_set ROUTE_6,  NORTH_SOUTH,  2, GROUP_SAFFRON_CITY,    GROUP_VERMILION_CITY
	split_set ROUTE_7,  EAST_WEST,   17, GROUP_CELADON_CITY,    GROUP_SAFFRON_CITY
	split_set ROUTE_8,  EAST_WEST,    3, GROUP_SAFFRON_CITY,    GROUP_LAVENDER_TOWN
;	split_set ROUTE_10, NORTH_SOUTH, 50, GROUP_CERULEAN_CITY,   GROUP_LAVENDER_TOWN
	split_set ROUTE_11, EAST_WEST,   57, GROUP_VERMILION_CITY,  GROUP_ROUTE_13
	split_set ROUTE_12, NORTH_SOUTH, 21, GROUP_LAVENDER_TOWN,   GROUP_ROUTE_13
	split_set ROUTE_15, EAST_WEST,    8, GROUP_FUCHSIA_CITY,    GROUP_ROUTE_13
	split_set ROUTE_16, EAST_WEST,   24, GROUP_ROUTE_17,        GROUP_CELADON_CITY
	split_set ROUTE_18, EAST_WEST,   34, GROUP_ROUTE_17,        GROUP_FUCHSIA_CITY
	split_set ROUTE_19, NORTH_SOUTH, 12, GROUP_FUCHSIA_CITY,    GROUP_CINNABAR_ISLAND
	db 0 ; end
