newgroup: MACRO
;\1: group id
	const_skip
MAPGROUP_\1 EQU const_value
CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
__map_value__ = 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
MAP_\1 EQU __map_value__
__map_value__ = __map_value__ + 1
\1_WIDTH EQU \2
\1_HEIGHT EQU \3
ENDM

endgroup: MACRO
{CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup OLIVINE                                             
	map_const OLIVINE_POKECENTER_1F,                        5,  4
	map_const OLIVINE_GYM,                                  5,  8
	map_const OLIVINE_TIMS_HOUSE,                           4,  4
	map_const OLIVINE_PUNISHMENT_SPEECH_HOUSE,              4,  4
	map_const OLIVINE_GOOD_ROD_HOUSE,                       4,  4
	map_const OLIVINE_CAFE,                                 4,  4
	map_const OLIVINE_MART,                                 6,  4
	map_const ROUTE_38_ECRUTEAK_GATE,                       5,  4
	map_const ROUTE_39_BARN,                                4,  4
	map_const ROUTE_39_FARMHOUSE,                           4,  4
	map_const ROUTE_38,                                    20,  9
	map_const ROUTE_39,                                    10, 18
	map_const OLIVINE_CITY,                                20, 18
	endgroup

	newgroup MAHOGANY                                            
	map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE,           4,  4
	map_const MAHOGANY_GYM,                                 5,  9
	map_const MAHOGANY_POKECENTER_1F,                       5,  4
	map_const ROUTE_42_ECRUTEAK_GATE,                       5,  4
	map_const ROUTE_42,                                    30,  9
	map_const ROUTE_44,                                    30,  9
	map_const MAHOGANY_TOWN,                               10,  9
	endgroup

	newgroup DUNGEONS                                            
	map_const SPROUT_TOWER_1F,                             10,  8
	map_const SPROUT_TOWER_2F,                             10,  8
	map_const SPROUT_TOWER_3F,                             10,  8
	map_const TIN_TOWER_1F,                                10,  9
	map_const TIN_TOWER_2F,                                10,  9
	map_const TIN_TOWER_3F,                                10,  9
	map_const TIN_TOWER_4F,                                10,  9
	map_const TIN_TOWER_5F,                                10,  9
	map_const TIN_TOWER_6F,                                10,  9
	map_const TIN_TOWER_7F,                                10,  9
	map_const TIN_TOWER_8F,                                10,  9
	map_const TIN_TOWER_9F,                                10,  9
	map_const BURNED_TOWER_1F,                             10,  9
	map_const BURNED_TOWER_B1F,                            10,  9
	map_const NATIONAL_PARK,                               20, 27
	map_const NATIONAL_PARK_BUG_CONTEST,                   20, 27
	map_const RADIO_TOWER_1F,                               9,  4
	map_const RADIO_TOWER_2F,                               9,  4
	map_const RADIO_TOWER_3F,                               9,  4
	map_const RADIO_TOWER_4F,                               9,  4
	map_const RADIO_TOWER_5F,                               9,  4
	map_const RUINS_OF_ALPH_OUTSIDE,                       10, 18
	map_const RUINS_OF_ALPH_HO_OH_CHAMBER,                  4,  5
	map_const RUINS_OF_ALPH_KABUTO_CHAMBER,                 4,  5
	map_const RUINS_OF_ALPH_OMANYTE_CHAMBER,                4,  5
	map_const RUINS_OF_ALPH_AERODACTYL_CHAMBER,             4,  5
	map_const RUINS_OF_ALPH_INNER_CHAMBER,                 10, 14
	map_const RUINS_OF_ALPH_RESEARCH_CENTER,                4,  4
	map_const UNION_CAVE_1F,                               10, 18
	map_const UNION_CAVE_B1F,                              10, 18
	map_const UNION_CAVE_B2F,                              10, 18
	map_const SLOWPOKE_WELL_B1F,                           10,  9
	map_const SLOWPOKE_WELL_B2F,                           10,  9
	map_const OLIVINE_LIGHTHOUSE_1F,                       10,  9
	map_const OLIVINE_LIGHTHOUSE_2F,                       10,  9
	map_const OLIVINE_LIGHTHOUSE_3F,                       10,  9
	map_const OLIVINE_LIGHTHOUSE_4F,                       10,  9
	map_const OLIVINE_LIGHTHOUSE_5F,                       10,  9
	map_const OLIVINE_LIGHTHOUSE_6F,                       10,  9
	map_const MAHOGANY_MART_1F,                             4,  4
	map_const TEAM_ROCKET_BASE_B1F,                        15,  9
	map_const TEAM_ROCKET_BASE_B2F,                        15,  9
	map_const TEAM_ROCKET_BASE_B3F,                        15,  9
	map_const ILEX_FOREST,                                 15, 27
	map_const GOLDENROD_UNDERGROUND,                       15, 18
	map_const GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 15, 18
	map_const GOLDENROD_DEPT_STORE_B1F,                    10,  9
	map_const GOLDENROD_UNDERGROUND_WAREHOUSE,             10,  9
	map_const MOUNT_MORTAR_1F_OUTSIDE,                     20, 18
	map_const MOUNT_MORTAR_1F_INSIDE,                      20, 27
	map_const MOUNT_MORTAR_2F_INSIDE,                      20, 18
	map_const MOUNT_MORTAR_B1F,                            20, 18
	map_const ICE_PATH_1F,                                 20, 18
	map_const ICE_PATH_B1F,                                10, 18
	map_const ICE_PATH_B2F_MAHOGANY_SIDE,                  10,  9
	map_const ICE_PATH_B2F_BLACKTHORN_SIDE,                 5,  9
	map_const ICE_PATH_B3F,                                10,  9
	map_const WHIRL_ISLAND_NW,                              5,  9
	map_const WHIRL_ISLAND_NE,                             10,  9
	map_const WHIRL_ISLAND_SW,                             10,  9
	map_const WHIRL_ISLAND_CAVE,                            5,  9
	map_const WHIRL_ISLAND_SE,                              5,  9
	map_const WHIRL_ISLAND_B1F,                            20, 18
	map_const WHIRL_ISLAND_B2F,                            10, 18
	map_const WHIRL_ISLAND_LUGIA_CHAMBER,                  10,  9
	map_const SILVER_CAVE_ROOM_1,                          10, 18
	map_const SILVER_CAVE_ROOM_2,                          15, 18
	map_const SILVER_CAVE_ROOM_3,                          10, 18
	map_const SILVER_CAVE_ITEM_ROOMS,                      10,  9
	map_const DARK_CAVE_VIOLET_ENTRANCE,                   20, 18
	map_const DARK_CAVE_BLACKTHORN_ENTRANCE,               15, 18
	map_const DRAGONS_DEN_1F,                               5,  9
	map_const DRAGONS_DEN_B1F,                             20, 18
	map_const TOHJO_FALLS,                                 15,  9
	map_const VICTORY_ROAD,                                10, 36
	endgroup

	newgroup ECRUTEAK                                            
	map_const ECRUTEAK_TIN_TOWER_ENTRANCE,                 10,  9
	map_const ECRUTEAK_TIN_TOWER_BACK_ENTRANCE,             4,  4
	map_const ECRUTEAK_POKECENTER_1F,                       5,  4
	map_const ECRUTEAK_LUGIA_SPEECH_HOUSE,                  4,  4
	map_const DANCE_THEATRE,                                6,  7
	map_const ECRUTEAK_MART,                                6,  4
	map_const ECRUTEAK_GYM,                                 5,  9
	map_const ECRUTEAK_ITEMFINDER_HOUSE,                    4,  4
	map_const ECRUTEAK_CITY,                               20, 18
	endgroup

	newgroup BLACKTHORN                                          
	map_const BLACKTHORN_GYM_1F,                            5,  9
	map_const BLACKTHORN_GYM_2F,                            5,  9
	map_const BLACKTHORN_DRAGON_SPEECH_HOUSE,               4,  4
	map_const BLACKTHORN_EMYS_HOUSE,                        4,  4
	map_const BLACKTHORN_MART,                              6,  4
	map_const BLACKTHORN_POKECENTER_1F,                     5,  4
	map_const MOVE_DELETERS_HOUSE,                          4,  4
	map_const ROUTE_45,                                    10, 45
	map_const ROUTE_46,                                    10, 18
	map_const BLACKTHORN_CITY,                             20, 18
	endgroup

	newgroup CINNABAR                                            
	map_const ROUTE_19,                                    10, 27
	map_const ROUTE_20,                                    50,  9
	map_const ROUTE_21,                                    10, 45
	map_const CINNABAR_ISLAND,                             10,  9
	endgroup

	newgroup CERULEAN                                            
	map_const ROUTE_4,                                     45,  9
	map_const ROUTE_9,                                     30,  9
	map_const ROUTE_10_NORTH,                              10, 25
	map_const ROUTE_24,                                    10, 18
	map_const ROUTE_25,                                    30,  9
	map_const CERULEAN_CITY,                               20, 18
	endgroup

	newgroup AZALEA                                              
	map_const AZALEA_POKECENTER_1F,                         5,  4
	map_const CHARCOAL_KILN,                                4,  4
	map_const AZALEA_MART,                                  6,  4
	map_const KURTS_HOUSE,                                  8,  4
	map_const AZALEA_GYM,                                   5,  8
	map_const ROUTE_33,                                    10,  9
	map_const AZALEA_TOWN,                                 20,  9
	endgroup

	newgroup LAKE_OF_RAGE                                        
	map_const LAKE_OF_RAGE_HIDDEN_POWER_HOUSE,              4,  4
	map_const LAKE_OF_RAGE_MAGIKARP_HOUSE,                  4,  4
	map_const ROUTE_43_MAHOGANY_GATE,                       5,  4
	map_const ROUTE_43_GATE,                                5,  4
	map_const ROUTE_43,                                    10, 27
	map_const LAKE_OF_RAGE,                                20, 18
	endgroup

	newgroup VIOLET                                              
	map_const ROUTE_32,                                    10, 45
	map_const ROUTE_35,                                    10, 18
	map_const ROUTE_36,                                    30,  9
	map_const ROUTE_37,                                    10,  9
	map_const VIOLET_CITY,                                 20, 18
	map_const VIOLET_MART,                                  6,  4
	map_const VIOLET_GYM,                                   5,  8
	map_const EARLS_POKEMON_ACADEMY,                        4,  8
	map_const VIOLET_NICKNAME_SPEECH_HOUSE,                 4,  4
	map_const VIOLET_POKECENTER_1F,                         5,  4
	map_const VIOLET_KYLES_HOUSE,                           4,  4
	map_const ROUTE_32_RUINS_OF_ALPH_GATE,                  5,  4
	map_const ROUTE_32_POKECENTER_1F,                       5,  4
	map_const ROUTE_35_GOLDENROD_GATE,                      5,  4
	map_const ROUTE_35_NATIONAL_PARK_GATE,                  4,  4
	map_const ROUTE_36_RUINS_OF_ALPH_GATE,                  5,  4
	map_const ROUTE_36_NATIONAL_PARK_GATE,                  5,  4
	endgroup

	newgroup GOLDENROD                                           
	map_const ROUTE_34,                                    10, 27
	map_const GOLDENROD_CITY,                              20, 18
	map_const GOLDENROD_GYM,                               10,  9
	map_const GOLDENROD_BIKE_SHOP,                          4,  4
	map_const GOLDENROD_HAPPINESS_RATER,                    4,  4
	map_const BILLS_FAMILYS_HOUSE,                          4,  4
	map_const GOLDENROD_MAGNET_TRAIN_STATION,              10,  9
	map_const GOLDENROD_FLOWER_SHOP,                        4,  4
	map_const GOLDENROD_POKECENTER_1F,                      5,  4
	map_const GOLDENROD_PP_SPEECH_HOUSE,                    4,  4
	map_const GOLDENROD_NAME_RATER,                         4,  4
	map_const GOLDENROD_DEPT_STORE_1F,                      8,  4
	map_const GOLDENROD_DEPT_STORE_2F,                      8,  4
	map_const GOLDENROD_DEPT_STORE_3F,                      8,  4
	map_const GOLDENROD_DEPT_STORE_4F,                      8,  4
	map_const GOLDENROD_DEPT_STORE_5F,                      8,  4
	map_const GOLDENROD_DEPT_STORE_6F,                      8,  4
	map_const GOLDENROD_DEPT_STORE_ELEVATOR,                2,  2
	map_const GOLDENROD_GAME_CORNER,                       10,  7
	map_const ILEX_FOREST_AZALEA_GATE,                      5,  4
	map_const ROUTE_34_ILEX_FOREST_GATE,                    5,  4
	map_const DAY_CARE,                                     5,  4
	endgroup

	newgroup VERMILION                                           
	map_const ROUTE_6,                                     10, 18
	map_const ROUTE_11,                                    30,  9
	map_const VERMILION_CITY,                              20, 18
	endgroup

	newgroup PALLET                                              
	map_const ROUTE_1,                                     10, 18
	map_const PALLET_TOWN,                                 10,  9
	endgroup

	newgroup PEWTER                                              
	map_const ROUTE_3,                                     35,  9
	map_const PEWTER_CITY,                                 20, 18
	endgroup

	newgroup FAST_SHIP                                           
	map_const OLIVINE_PORT,                                10, 18
	map_const VERMILION_PORT,                              10, 18
	map_const FAST_SHIP_1F,                                16,  9
	map_const FAST_SHIP_CABINS_NNW_NNE_NE,                  4, 16
	map_const FAST_SHIP_CABINS_SW_SSW_NW,                   4, 16
	map_const FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,       5, 17
	map_const FAST_SHIP_B1F,                               16,  8
	map_const OLIVINE_PORT_PASSAGE,                        10,  9
	map_const VERMILION_PORT_PASSAGE,                      10,  9
	map_const TIN_TOWER_ROOF,                              10,  9
	endgroup

	newgroup INDIGO                                              
	map_const ROUTE_23,                                    10, 72
	map_const INDIGO_PLATEAU,                              10,  9
	map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  7
	map_const WILLS_ROOM,                                   5,  9
	map_const KOGAS_ROOM,                                   5,  9
	map_const BRUNOS_ROOM,                                  5,  9
	map_const KARENS_ROOM,                                  5,  9
	map_const LANCES_ROOM,                                  5, 12
	map_const HALL_OF_FAME,                                 5,  7
	endgroup

	newgroup FUCHSIA                                             
	map_const ROUTE_13,                                    30,  9
	map_const ROUTE_14,                                    10, 27
	map_const ROUTE_15,                                    30,  9
	map_const ROUTE_18,                                    25,  9
	map_const FUCHSIA_CITY,                                20, 18
	endgroup

	newgroup LAVENDER                                            
	map_const ROUTE_8,                                     30,  9
	map_const ROUTE_12,                                    10, 54
	map_const ROUTE_10_SOUTH,                              10, 11
	map_const LAVENDER_TOWN,                               10,  9
	endgroup

	newgroup SILVER                                              
	map_const ROUTE_28,                                    20,  9
	map_const SILVER_CAVE_OUTSIDE,                         20, 18
	map_const SILVER_CAVE_POKECENTER_1F,                    5,  4
	map_const ROUTE_28_STEEL_WING_HOUSE,                    4,  4
	endgroup

	newgroup CABLE_CLUB                                          
	map_const POKECENTER_2F,                                8,  4
	map_const TRADE_CENTER,                                 5,  4
	map_const COLOSSEUM,                                    5,  4
	map_const TIME_CAPSULE,                                 5,  4
	endgroup

	newgroup CELADON                                             
	map_const ROUTE_7,                                     10,  9
	map_const ROUTE_16,                                    20,  9
	map_const ROUTE_17,                                    10, 72
	map_const CELADON_CITY,                                25, 18
	endgroup

	newgroup CIANWOOD                                            
	map_const ROUTE_40,                                    10, 18
	map_const ROUTE_41,                                    25, 27
	map_const CIANWOOD_CITY,                               15, 27
	map_const MANIAS_HOUSE,                                 4,  4
	map_const CIANWOOD_GYM,                                 5,  9
	map_const CIANWOOD_POKECENTER_1F,                       5,  4
	map_const CIANWOOD_PHARMACY,                            4,  4
	map_const CIANWOOD_PHOTO_STUDIO,                        4,  4
	map_const CIANWOOD_LUGIA_SPEECH_HOUSE,                  4,  4
	endgroup

	newgroup VIRIDIAN                                            
	map_const ROUTE_2,                                     10, 36
	map_const ROUTE_22,                                    20,  9
	map_const VIRIDIAN_CITY,                               20, 18
	map_const VICTORY_ROAD_GATE,                           10,  9
	endgroup

	newgroup NEW_BARK                                            
	map_const ROUTE_26,                                    10, 54
	map_const ROUTE_27,                                    40,  9
	map_const ROUTE_29,                                    30,  9
	map_const NEW_BARK_TOWN,                               10,  9
	map_const ELMS_LAB,                                     5,  6
	map_const PLAYERS_HOUSE_1F,                             5,  4
	map_const PLAYERS_HOUSE_2F,                             4,  3
	map_const PLAYERS_NEIGHBORS_HOUSE,                      4,  4
	map_const ELMS_HOUSE,                                   4,  4
	map_const ROUTE_26_HEAL_HOUSE,                          4,  4
	map_const DAY_OF_WEEK_SIBLINGS_HOUSE,                   4,  4
	map_const ROUTE_27_SANDSTORM_HOUSE,                     4,  4
	map_const ROUTE_29_ROUTE_46_GATE,                       5,  4
	endgroup

	newgroup SAFFRON                                             
	map_const ROUTE_5,                                     10, 18
	map_const SAFFRON_CITY,                                20, 18
	endgroup

	newgroup CHERRYGROVE                                         
	map_const ROUTE_30,                                    10, 27
	map_const ROUTE_31,                                    20,  9
	map_const CHERRYGROVE_CITY,                            20,  9
	map_const CHERRYGROVE_MART,                             6,  4
	map_const CHERRYGROVE_POKECENTER_1F,                    5,  4
	map_const CHERRYGROVE_GYM_SPEECH_HOUSE,                 4,  4
	map_const GUIDE_GENTS_HOUSE,                            4,  4
	map_const CHERRYGROVE_EVOLUTION_SPEECH_HOUSE,           4,  4
	map_const ROUTE_30_BERRY_HOUSE,                         4,  4
	map_const MR_POKEMONS_HOUSE,                            4,  4
	map_const ROUTE_31_VIOLET_GATE,                         5,  4
	endgroup

NUM_MAP_GROUPS EQU const_value
