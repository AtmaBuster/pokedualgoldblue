map_attributes: MACRO
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; LEGACY: Support for old connection macro
if _NARG == 6
	connection \1, \2, \3, (\4) - (\5)
else

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if !STRCMP("\1", "north")
_blk = \3_WIDTH * (\3_HEIGHT - 3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "south")
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "west")
_blk = (\3_WIDTH * _src) + \3_WIDTH - 3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 - 6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif !STRCMP("\1", "east")
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win
endc
ENDM


	map_attributes NewBarkTown, NEW_BARK_TOWN, $05, WEST | EAST
	connection west, Route29, ROUTE_29, 0
	connection east, Route27, ROUTE_27, 0

	map_attributes CherrygroveCity, CHERRYGROVE_CITY, $35, NORTH | EAST
	connection north, Route30, ROUTE_30, 5
	connection east, Route29, ROUTE_29, 0

	map_attributes VioletCity, VIOLET_CITY, $05, SOUTH | WEST | EAST
	connection south, Route32, ROUTE_32, 0
	connection west, Route36, ROUTE_36, 0
	connection east, Route31, ROUTE_31, 9

	map_attributes AzaleaTown, AZALEA_TOWN, $05, WEST | EAST
	connection west, Route34, ROUTE_34, -18
	connection east, Route33, ROUTE_33, 0

	map_attributes CianwoodCity, CIANWOOD_CITY, $35, EAST
	connection east, Route41, ROUTE_41, 0

	map_attributes GoldenrodCity, GOLDENROD_CITY, $35, NORTH | SOUTH
	connection north, Route35, ROUTE_35, 5
	connection south, Route34, ROUTE_34, 5

	map_attributes OlivineCity, OLIVINE_CITY, $35, NORTH | WEST
	connection north, Route39, ROUTE_39, 5
	connection west, Route40, ROUTE_40, 9

	map_attributes EcruteakCity, ECRUTEAK_CITY, $05, SOUTH | WEST | EAST
	connection south, Route37, ROUTE_37, 5
	connection west, Route38, ROUTE_38, 5
	connection east, Route42, ROUTE_42, 9

	map_attributes MahoganyTown, MAHOGANY_TOWN, $71, NORTH | WEST | EAST
	connection north, Route43, ROUTE_43, 0
	connection west, Route42, ROUTE_42, 0
	connection east, Route44, ROUTE_44, 0

	map_attributes LakeOfRage, LAKE_OF_RAGE, $05, SOUTH
	connection south, Route43, ROUTE_43, 5

	map_attributes BlackthornCity, BLACKTHORN_CITY, $71, SOUTH | WEST
	connection south, Route45, ROUTE_45, 0
	connection west, Route44, ROUTE_44, 9

	map_attributes SilverCaveOutside, SILVER_CAVE_OUTSIDE, $2c, EAST
	connection east, Route28, ROUTE_28, 9

	map_attributes Route26, ROUTE_26, $05, WEST
	connection west, Route27, ROUTE_27, 45

	map_attributes Route27, ROUTE_27, $35, WEST | EAST
	connection west, NewBarkTown, NEW_BARK_TOWN, 0
	connection east, Route26, ROUTE_26, -45

	map_attributes Route28, ROUTE_28, $2c, WEST
	connection west, SilverCaveOutside, SILVER_CAVE_OUTSIDE, -9

	map_attributes Route29, ROUTE_29, $05, NORTH | WEST | EAST
	connection north, Route46, ROUTE_46, 10
	connection west, CherrygroveCity, CHERRYGROVE_CITY, 0
	connection east, NewBarkTown, NEW_BARK_TOWN, 0

	map_attributes Route30, ROUTE_30, $05, NORTH | SOUTH
	connection north, Route31, ROUTE_31, -10
	connection south, CherrygroveCity, CHERRYGROVE_CITY, -5

	map_attributes Route31, ROUTE_31, $05, SOUTH | WEST
	connection south, Route30, ROUTE_30, 10
	connection west, VioletCity, VIOLET_CITY, -9

	map_attributes Route32, ROUTE_32, $05, NORTH | SOUTH
	connection north, VioletCity, VIOLET_CITY, 0
	connection south, Route33, ROUTE_33, 0

	map_attributes Route33, ROUTE_33, $05, NORTH | WEST
	connection north, Route32, ROUTE_32, 0
	connection west, AzaleaTown, AZALEA_TOWN, 0

	map_attributes Route34, ROUTE_34, $05, NORTH | EAST
	connection north, GoldenrodCity, GOLDENROD_CITY, -5
	connection east, AzaleaTown, AZALEA_TOWN, 18

	map_attributes Route35, ROUTE_35, $05, NORTH | SOUTH
	connection north, Route36, ROUTE_36, 0
	connection south, GoldenrodCity, GOLDENROD_CITY, -5

	map_attributes Route36, ROUTE_36, $05, NORTH | SOUTH | EAST
	connection north, Route37, ROUTE_37, 10
	connection south, Route35, ROUTE_35, 0
	connection east, VioletCity, VIOLET_CITY, 0

	map_attributes Route37, ROUTE_37, $05, NORTH | SOUTH
	connection north, EcruteakCity, ECRUTEAK_CITY, -5
	connection south, Route36, ROUTE_36, -10

	map_attributes Route38, ROUTE_38, $05, WEST | EAST
	connection west, Route39, ROUTE_39, 0
	connection east, EcruteakCity, ECRUTEAK_CITY, -5

	map_attributes Route39, ROUTE_39, $05, SOUTH | EAST
	connection south, OlivineCity, OLIVINE_CITY, -5
	connection east, Route38, ROUTE_38, 0

	map_attributes Route40, ROUTE_40, $35, SOUTH | EAST
	connection south, Route41, ROUTE_41, -15
	connection east, OlivineCity, OLIVINE_CITY, -9

	map_attributes Route41, ROUTE_41, $35, NORTH | WEST
	connection north, Route40, ROUTE_40, 15
	connection west, CianwoodCity, CIANWOOD_CITY, 0

	map_attributes Route42, ROUTE_42, $05, WEST | EAST
	connection west, EcruteakCity, ECRUTEAK_CITY, -9
	connection east, MahoganyTown, MAHOGANY_TOWN, 0

	map_attributes Route43, ROUTE_43, $05, NORTH | SOUTH
	connection north, LakeOfRage, LAKE_OF_RAGE, -5
	connection south, MahoganyTown, MAHOGANY_TOWN, 0

	map_attributes Route44, ROUTE_44, $71, WEST | EAST
	connection west, MahoganyTown, MAHOGANY_TOWN, 0
	connection east, BlackthornCity, BLACKTHORN_CITY, -9

	map_attributes Route45, ROUTE_45, $71, NORTH | WEST
	connection north, BlackthornCity, BLACKTHORN_CITY, 0
	connection west, Route46, ROUTE_46, 36

	map_attributes Route46, ROUTE_46, $05, SOUTH | EAST
	connection south, Route29, ROUTE_29, -10
	connection east, Route45, ROUTE_45, -36

	map_attributes PewterCity, PEWTER_CITY, $0f, SOUTH | EAST
	connection south, Route2, ROUTE_2, 5
	connection east, Route3, ROUTE_3, 4

	map_attributes Route2, ROUTE_2, $0f, NORTH | SOUTH
	connection north, PewterCity, PEWTER_CITY, -5
	connection south, ViridianCity, VIRIDIAN_CITY, -5

	map_attributes ViridianCity, VIRIDIAN_CITY, $0f, NORTH | SOUTH | WEST
	connection north, Route2, ROUTE_2, 5
	connection south, Route1, ROUTE_1, 5
	connection west, Route22, ROUTE_22, 4

	map_attributes Route22, ROUTE_22, $2c, EAST
	connection east, ViridianCity, VIRIDIAN_CITY, -4

	map_attributes Route1, ROUTE_1, $0f, NORTH | SOUTH
	connection north, ViridianCity, VIRIDIAN_CITY, -5
	connection south, PalletTown, PALLET_TOWN, 0

	map_attributes PalletTown, PALLET_TOWN, $0f, NORTH | SOUTH
	connection north, Route1, ROUTE_1, 0
	connection south, Route21, ROUTE_21, 0

	map_attributes Route21, ROUTE_21, $43, NORTH | SOUTH
	connection north, PalletTown, PALLET_TOWN, 0
	connection south, CinnabarIsland, CINNABAR_ISLAND, 0

	map_attributes CinnabarIsland, CINNABAR_ISLAND, $43, NORTH | EAST
	connection north, Route21, ROUTE_21, 0
	connection east, Route20, ROUTE_20, 0

	map_attributes Route20, ROUTE_20, $43, WEST | EAST
	connection west, CinnabarIsland, CINNABAR_ISLAND, 0
	connection east, Route19, ROUTE_19, -18

	map_attributes Route19, ROUTE_19, $43, NORTH | WEST
	connection north, FuchsiaCity, FUCHSIA_CITY, -5
	connection west, Route20, ROUTE_20, 18

	map_attributes FuchsiaCity, FUCHSIA_CITY, $0f, SOUTH | WEST | EAST
	connection south, Route19, ROUTE_19, 5
	connection west, Route18, ROUTE_18, 4
	connection east, Route15, ROUTE_15, 4

	map_attributes Route18, ROUTE_18, $43, NORTH | EAST
	connection north, Route17, ROUTE_17, 0
	connection east, FuchsiaCity, FUCHSIA_CITY, -4

	map_attributes Route17, ROUTE_17, $43, NORTH | SOUTH
	connection north, Route16, ROUTE_16, 0
	connection south, Route18, ROUTE_18, 0

	map_attributes Route16, ROUTE_16, $0f, SOUTH | EAST
	connection south, Route17, ROUTE_17, 0
	connection east, CeladonCity, CELADON_CITY, -4

	map_attributes CeladonCity, CELADON_CITY, $0f, WEST | EAST
	connection west, Route16, ROUTE_16, 4
	connection east, Route7, ROUTE_7, 4

	map_attributes Route7, ROUTE_7, $0f, WEST | EAST
	connection west, CeladonCity, CELADON_CITY, -4
	connection east, SaffronCity, SAFFRON_CITY, -4

	map_attributes Route15, ROUTE_15, $0f, WEST | EAST
	connection west, FuchsiaCity, FUCHSIA_CITY, -4
	connection east, Route14, ROUTE_14, -18

	map_attributes Route14, ROUTE_14, $43, WEST | EAST
	connection west, Route15, ROUTE_15, 18
	connection east, Route13, ROUTE_13, 0

	map_attributes Route13, ROUTE_13, $43, NORTH | WEST
	connection north, Route12, ROUTE_12, 20
	connection west, Route14, ROUTE_14, 0

	map_attributes Route12, ROUTE_12, $43, NORTH | SOUTH | WEST
	connection north, LavenderTown, LAVENDER_TOWN, 0
	connection south, Route13, ROUTE_13, -20
	connection west, Route11, ROUTE_11, 27

	map_attributes Route11, ROUTE_11, $0f, WEST | EAST
	connection west, VermilionCity, VERMILION_CITY, -4
	connection east, Route12, ROUTE_12, -27

	map_attributes LavenderTown, LAVENDER_TOWN, $2c, NORTH | SOUTH | WEST
	connection north, Route10South, ROUTE_10_SOUTH, 0
	connection south, Route12, ROUTE_12, 0
	connection west, Route8, ROUTE_8, 0

	map_attributes VermilionCity, VERMILION_CITY, $43, NORTH | EAST
	connection north, Route6, ROUTE_6, 5
	connection east, Route11, ROUTE_11, 4

	map_attributes Route6, ROUTE_6, $0f, NORTH | SOUTH
	connection north, SaffronCity, SAFFRON_CITY, -5
	connection south, VermilionCity, VERMILION_CITY, -5

	map_attributes SaffronCity, SAFFRON_CITY, $0f, NORTH | SOUTH | WEST | EAST
	connection north, Route5, ROUTE_5, 5
	connection south, Route6, ROUTE_6, 5
	connection west, Route7, ROUTE_7, 4
	connection east, Route8, ROUTE_8, 4

	map_attributes Route5, ROUTE_5, $0f, NORTH | SOUTH
	connection north, CeruleanCity, CERULEAN_CITY, -5
	connection south, SaffronCity, SAFFRON_CITY, -5

	map_attributes CeruleanCity, CERULEAN_CITY, $0f, NORTH | SOUTH | WEST | EAST
	connection north, Route24, ROUTE_24, 5
	connection south, Route5, ROUTE_5, 5
	connection west, Route4, ROUTE_4, 4
	connection east, Route9, ROUTE_9, 4

	map_attributes Route9, ROUTE_9, $2c, WEST | EAST
	connection west, CeruleanCity, CERULEAN_CITY, -4
	connection east, Route10North, ROUTE_10_NORTH, 0

	map_attributes Route24, ROUTE_24, $2c, SOUTH | EAST
	connection south, CeruleanCity, CERULEAN_CITY, -5
	connection east, Route25, ROUTE_25, 0

	map_attributes Route25, ROUTE_25, $2c, WEST
	connection west, Route24, ROUTE_24, 0

	map_attributes Route3, ROUTE_3, $2c, NORTH | WEST
	connection north, Route4, ROUTE_4, 25
	connection west, PewterCity, PEWTER_CITY, -4

	map_attributes Route4, ROUTE_4, $2c, SOUTH | EAST
	connection south, Route3, ROUTE_3, -25
	connection east, CeruleanCity, CERULEAN_CITY, -4

	map_attributes Route8, ROUTE_8, $2c, WEST | EAST
	connection west, SaffronCity, SAFFRON_CITY, -4
	connection east, LavenderTown, LAVENDER_TOWN, 0

	map_attributes Route10North, ROUTE_10_NORTH, $2c, SOUTH | WEST
	connection south, Route10South, ROUTE_10_SOUTH, 0
	connection west, Route9, ROUTE_9, 0

	map_attributes Route10South, ROUTE_10_SOUTH, $2c, NORTH | SOUTH
	connection north, Route10North, ROUTE_10_NORTH, 0
	connection south, LavenderTown, LAVENDER_TOWN, 0

	map_attributes Route23, ROUTE_23, $0f, NORTH
	connection north, IndigoPlateau, INDIGO_PLATEAU, 0

	map_attributes IndigoPlateau, INDIGO_PLATEAU, $0f, SOUTH
	connection south, Route23, ROUTE_23, 0

	map_attributes SproutTower1F, SPROUT_TOWER_1F, $00, 0
	map_attributes SproutTower2F, SPROUT_TOWER_2F, $00, 0
	map_attributes SproutTower3F, SPROUT_TOWER_3F, $00, 0
	map_attributes TinTower1F, TIN_TOWER_1F, $00, 0
	map_attributes TinTower2F, TIN_TOWER_2F, $00, 0
	map_attributes TinTower3F, TIN_TOWER_3F, $00, 0
	map_attributes TinTower4F, TIN_TOWER_4F, $00, 0
	map_attributes TinTower5F, TIN_TOWER_5F, $00, 0
	map_attributes TinTower6F, TIN_TOWER_6F, $00, 0
	map_attributes TinTower7F, TIN_TOWER_7F, $00, 0
	map_attributes TinTower8F, TIN_TOWER_8F, $00, 0
	map_attributes TinTower9F, TIN_TOWER_9F, $00, 0
	map_attributes BurnedTower1F, BURNED_TOWER_1F, $00, 0
	map_attributes BurnedTowerB1F, BURNED_TOWER_B1F, $09, 0
	map_attributes NationalPark, NATIONAL_PARK, $00, 0
	map_attributes NationalParkBugContest, NATIONAL_PARK_BUG_CONTEST, $00, 0
	map_attributes RadioTower1F, RADIO_TOWER_1F, $00, 0
	map_attributes RadioTower2F, RADIO_TOWER_2F, $00, 0
	map_attributes RadioTower3F, RADIO_TOWER_3F, $00, 0
	map_attributes RadioTower4F, RADIO_TOWER_4F, $00, 0
	map_attributes RadioTower5F, RADIO_TOWER_5F, $00, 0
	map_attributes RuinsOfAlphOutside, RUINS_OF_ALPH_OUTSIDE, $05, 0
	map_attributes RuinsOfAlphHoOhChamber, RUINS_OF_ALPH_HO_OH_CHAMBER, $00, 0
	map_attributes RuinsOfAlphKabutoChamber, RUINS_OF_ALPH_KABUTO_CHAMBER, $00, 0
	map_attributes RuinsOfAlphOmanyteChamber, RUINS_OF_ALPH_OMANYTE_CHAMBER, $00, 0
	map_attributes RuinsOfAlphAerodactylChamber, RUINS_OF_ALPH_AERODACTYL_CHAMBER, $00, 0
	map_attributes RuinsOfAlphInnerChamber, RUINS_OF_ALPH_INNER_CHAMBER, $00, 0
	map_attributes RuinsOfAlphResearchCenter, RUINS_OF_ALPH_RESEARCH_CENTER, $00, 0
	map_attributes UnionCave1F, UNION_CAVE_1F, $09, 0
	map_attributes UnionCaveB1F, UNION_CAVE_B1F, $09, 0
	map_attributes UnionCaveB2F, UNION_CAVE_B2F, $09, 0
	map_attributes SlowpokeWellB1F, SLOWPOKE_WELL_B1F, $09, 0
	map_attributes SlowpokeWellB2F, SLOWPOKE_WELL_B2F, $09, 0
	map_attributes OlivineLighthouse1F, OLIVINE_LIGHTHOUSE_1F, $00, 0
	map_attributes OlivineLighthouse2F, OLIVINE_LIGHTHOUSE_2F, $00, 0
	map_attributes OlivineLighthouse3F, OLIVINE_LIGHTHOUSE_3F, $00, 0
	map_attributes OlivineLighthouse4F, OLIVINE_LIGHTHOUSE_4F, $00, 0
	map_attributes OlivineLighthouse5F, OLIVINE_LIGHTHOUSE_5F, $00, 0
	map_attributes OlivineLighthouse6F, OLIVINE_LIGHTHOUSE_6F, $00, 0
	map_attributes MahoganyMart1F, MAHOGANY_MART_1F, $00, 0
	map_attributes TeamRocketBaseB1F, TEAM_ROCKET_BASE_B1F, $00, 0
	map_attributes TeamRocketBaseB2F, TEAM_ROCKET_BASE_B2F, $00, 0
	map_attributes TeamRocketBaseB3F, TEAM_ROCKET_BASE_B3F, $00, 0
	map_attributes IlexForest, ILEX_FOREST, $05, 0
	map_attributes GoldenrodUnderground, GOLDENROD_UNDERGROUND, $00, 0
	map_attributes GoldenrodUndergroundSwitchRoomEntrances, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, $00, 0
	map_attributes GoldenrodDeptStoreB1F, GOLDENROD_DEPT_STORE_B1F, $00, 0
	map_attributes GoldenrodUndergroundWarehouse, GOLDENROD_UNDERGROUND_WAREHOUSE, $00, 0
	map_attributes MountMortar1FOutside, MOUNT_MORTAR_1F_OUTSIDE, $09, 0
	map_attributes MountMortar1FInside, MOUNT_MORTAR_1F_INSIDE, $09, 0
	map_attributes MountMortar2FInside, MOUNT_MORTAR_2F_INSIDE, $09, 0
	map_attributes MountMortarB1F, MOUNT_MORTAR_B1F, $09, 0
	map_attributes IcePath1F, ICE_PATH_1F, $09, 0
	map_attributes IcePathB1F, ICE_PATH_B1F, $19, 0
	map_attributes IcePathB2FMahoganySide, ICE_PATH_B2F_MAHOGANY_SIDE, $19, 0
	map_attributes IcePathB2FBlackthornSide, ICE_PATH_B2F_BLACKTHORN_SIDE, $19, 0
	map_attributes IcePathB3F, ICE_PATH_B3F, $19, 0
	map_attributes WhirlIslandNW, WHIRL_ISLAND_NW, $09, 0
	map_attributes WhirlIslandNE, WHIRL_ISLAND_NE, $09, 0
	map_attributes WhirlIslandSW, WHIRL_ISLAND_SW, $09, 0
	map_attributes WhirlIslandCave, WHIRL_ISLAND_CAVE, $09, 0
	map_attributes WhirlIslandSE, WHIRL_ISLAND_SE, $0f, 0
	map_attributes WhirlIslandB1F, WHIRL_ISLAND_B1F, $09, 0
	map_attributes WhirlIslandB2F, WHIRL_ISLAND_B2F, $2e, 0
	map_attributes WhirlIslandLugiaChamber, WHIRL_ISLAND_LUGIA_CHAMBER, $0f, 0
	map_attributes SilverCaveRoom1, SILVER_CAVE_ROOM_1, $09, 0
	map_attributes SilverCaveRoom2, SILVER_CAVE_ROOM_2, $09, 0
	map_attributes SilverCaveRoom3, SILVER_CAVE_ROOM_3, $09, 0
	map_attributes SilverCaveItemRooms, SILVER_CAVE_ITEM_ROOMS, $09, 0
	map_attributes DarkCaveVioletEntrance, DARK_CAVE_VIOLET_ENTRANCE, $09, 0
	map_attributes DarkCaveBlackthornEntrance, DARK_CAVE_BLACKTHORN_ENTRANCE, $09, 0
	map_attributes DragonsDen1F, DRAGONS_DEN_1F, $09, 0
	map_attributes DragonsDenB1F, DRAGONS_DEN_B1F, $71, 0
	map_attributes TohjoFalls, TOHJO_FALLS, $09, 0
	map_attributes OlivinePokecenter1F, OLIVINE_POKECENTER_1F, $00, 0
	map_attributes OlivineGym, OLIVINE_GYM, $00, 0
	map_attributes OlivineTimsHouse, OLIVINE_TIMS_HOUSE, $00, 0
	map_attributes OlivinePunishmentSpeechHouse, OLIVINE_PUNISHMENT_SPEECH_HOUSE, $00, 0
	map_attributes OlivineGoodRodHouse, OLIVINE_GOOD_ROD_HOUSE, $00, 0
	map_attributes OlivineCafe, OLIVINE_CAFE, $00, 0
	map_attributes OlivineMart, OLIVINE_MART, $00, 0
	map_attributes Route38EcruteakGate, ROUTE_38_ECRUTEAK_GATE, $00, 0
	map_attributes Route39Barn, ROUTE_39_BARN, $00, 0
	map_attributes Route39Farmhouse, ROUTE_39_FARMHOUSE, $00, 0
	map_attributes MahoganyRedGyaradosSpeechHouse, MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, $00, 0
	map_attributes MahoganyGym, MAHOGANY_GYM, $00, 0
	map_attributes MahoganyPokecenter1F, MAHOGANY_POKECENTER_1F, $00, 0
	map_attributes Route42EcruteakGate, ROUTE_42_ECRUTEAK_GATE, $00, 0
	map_attributes VictoryRoad, VICTORY_ROAD, $1d, 0
	map_attributes EcruteakTinTowerEntrance, ECRUTEAK_TIN_TOWER_ENTRANCE, $00, 0
	map_attributes EcruteakTinTowerBackEntrance, ECRUTEAK_TIN_TOWER_BACK_ENTRANCE, $00, 0
	map_attributes EcruteakPokecenter1F, ECRUTEAK_POKECENTER_1F, $00, 0
	map_attributes EcruteakLugiaSpeechHouse, ECRUTEAK_LUGIA_SPEECH_HOUSE, $00, 0
	map_attributes DanceTheatre, DANCE_THEATRE, $00, 0
	map_attributes EcruteakMart, ECRUTEAK_MART, $00, 0
	map_attributes EcruteakGym, ECRUTEAK_GYM, $00, 0
	map_attributes EcruteakItemfinderHouse, ECRUTEAK_ITEMFINDER_HOUSE, $00, 0
	map_attributes BlackthornGym1F, BLACKTHORN_GYM_1F, $00, 0
	map_attributes BlackthornGym2F, BLACKTHORN_GYM_2F, $00, 0
	map_attributes BlackthornDragonSpeechHouse, BLACKTHORN_DRAGON_SPEECH_HOUSE, $00, 0
	map_attributes BlackthornEmysHouse, BLACKTHORN_EMYS_HOUSE, $00, 0
	map_attributes BlackthornMart, BLACKTHORN_MART, $00, 0
	map_attributes BlackthornPokecenter1F, BLACKTHORN_POKECENTER_1F, $00, 0
	map_attributes MoveDeletersHouse, MOVE_DELETERS_HOUSE, $00, 0
	map_attributes AzaleaPokecenter1F, AZALEA_POKECENTER_1F, $00, 0
	map_attributes CharcoalKiln, CHARCOAL_KILN, $00, 0
	map_attributes AzaleaMart, AZALEA_MART, $00, 0
	map_attributes KurtsHouse, KURTS_HOUSE, $00, 0
	map_attributes AzaleaGym, AZALEA_GYM, $00, 0
	map_attributes LakeOfRageHiddenPowerHouse, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, $00, 0
	map_attributes LakeOfRageMagikarpHouse, LAKE_OF_RAGE_MAGIKARP_HOUSE, $00, 0
	map_attributes Route43MahoganyGate, ROUTE_43_MAHOGANY_GATE, $00, 0
	map_attributes Route43Gate, ROUTE_43_GATE, $00, 0
	map_attributes VioletMart, VIOLET_MART, $00, 0
	map_attributes VioletGym, VIOLET_GYM, $00, 0
	map_attributes EarlsPokemonAcademy, EARLS_POKEMON_ACADEMY, $00, 0
	map_attributes VioletNicknameSpeechHouse, VIOLET_NICKNAME_SPEECH_HOUSE, $00, 0
	map_attributes VioletPokecenter1F, VIOLET_POKECENTER_1F, $00, 0
	map_attributes VioletKylesHouse, VIOLET_KYLES_HOUSE, $00, 0
	map_attributes Route32RuinsOfAlphGate, ROUTE_32_RUINS_OF_ALPH_GATE, $00, 0
	map_attributes Route32Pokecenter1F, ROUTE_32_POKECENTER_1F, $00, 0
	map_attributes Route35GoldenrodGate, ROUTE_35_GOLDENROD_GATE, $00, 0
	map_attributes Route35NationalParkGate, ROUTE_35_NATIONAL_PARK_GATE, $00, 0
	map_attributes Route36RuinsOfAlphGate, ROUTE_36_RUINS_OF_ALPH_GATE, $00, 0
	map_attributes Route36NationalParkGate, ROUTE_36_NATIONAL_PARK_GATE, $00, 0
	map_attributes GoldenrodGym, GOLDENROD_GYM, $00, 0
	map_attributes GoldenrodBikeShop, GOLDENROD_BIKE_SHOP, $00, 0
	map_attributes GoldenrodHappinessRater, GOLDENROD_HAPPINESS_RATER, $00, 0
	map_attributes BillsFamilysHouse, BILLS_FAMILYS_HOUSE, $00, 0
	map_attributes GoldenrodMagnetTrainStation, GOLDENROD_MAGNET_TRAIN_STATION, $00, 0
	map_attributes GoldenrodFlowerShop, GOLDENROD_FLOWER_SHOP, $00, 0
	map_attributes GoldenrodPokecenter1F, GOLDENROD_POKECENTER_1F, $00, 0
	map_attributes GoldenrodPPSpeechHouse, GOLDENROD_PP_SPEECH_HOUSE, $00, 0
	map_attributes GoldenrodNameRater, GOLDENROD_NAME_RATER, $00, 0
	map_attributes GoldenrodDeptStore1F, GOLDENROD_DEPT_STORE_1F, $00, 0
	map_attributes GoldenrodDeptStore2F, GOLDENROD_DEPT_STORE_2F, $00, 0
	map_attributes GoldenrodDeptStore3F, GOLDENROD_DEPT_STORE_3F, $00, 0
	map_attributes GoldenrodDeptStore4F, GOLDENROD_DEPT_STORE_4F, $00, 0
	map_attributes GoldenrodDeptStore5F, GOLDENROD_DEPT_STORE_5F, $00, 0
	map_attributes GoldenrodDeptStore6F, GOLDENROD_DEPT_STORE_6F, $00, 0
	map_attributes GoldenrodDeptStoreElevator, GOLDENROD_DEPT_STORE_ELEVATOR, $00, 0
	map_attributes GoldenrodGameCorner, GOLDENROD_GAME_CORNER, $00, 0
	map_attributes IlexForestAzaleaGate, ILEX_FOREST_AZALEA_GATE, $00, 0
	map_attributes Route34IlexForestGate, ROUTE_34_ILEX_FOREST_GATE, $00, 0
	map_attributes DayCare, DAY_CARE, $00, 0
	map_attributes OlivinePort, OLIVINE_PORT, $0a, 0
	map_attributes VermilionPort, VERMILION_PORT, $0a, 0
	map_attributes FastShip1F, FAST_SHIP_1F, $00, 0
	map_attributes FastShipCabins_NNW_NNE_NE, FAST_SHIP_CABINS_NNW_NNE_NE, $00, 0
	map_attributes FastShipCabins_SW_SSW_NW, FAST_SHIP_CABINS_SW_SSW_NW, $00, 0
	map_attributes FastShipCabins_SE_SSE_CaptainsCabin, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, $00, 0
	map_attributes FastShipB1F, FAST_SHIP_B1F, $00, 0
	map_attributes OlivinePortPassage, OLIVINE_PORT_PASSAGE, $00, 0
	map_attributes VermilionPortPassage, VERMILION_PORT_PASSAGE, $00, 0
	map_attributes TinTowerRoof, TIN_TOWER_ROOF, $00, 0
	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $00, 0
	map_attributes WillsRoom, WILLS_ROOM, $00, 0
	map_attributes KogasRoom, KOGAS_ROOM, $00, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $00, 0
	map_attributes KarensRoom, KARENS_ROOM, $00, 0
	map_attributes LancesRoom, LANCES_ROOM, $00, 0
	map_attributes HallOfFame, HALL_OF_FAME, $00, 0
	map_attributes SilverCavePokecenter1F, SILVER_CAVE_POKECENTER_1F, $00, 0
	map_attributes Route28SteelWingHouse, ROUTE_28_STEEL_WING_HOUSE, $00, 0
	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0
	map_attributes ManiasHouse, MANIAS_HOUSE, $00, 0
	map_attributes CianwoodGym, CIANWOOD_GYM, $00, 0
	map_attributes CianwoodPokecenter1F, CIANWOOD_POKECENTER_1F, $00, 0
	map_attributes CianwoodPharmacy, CIANWOOD_PHARMACY, $00, 0
	map_attributes CianwoodPhotoStudio, CIANWOOD_PHOTO_STUDIO, $00, 0
	map_attributes CianwoodLugiaSpeechHouse, CIANWOOD_LUGIA_SPEECH_HOUSE, $00, 0
	map_attributes VictoryRoadGate, VICTORY_ROAD_GATE, $00, 0
	map_attributes ElmsLab, ELMS_LAB, $00, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0
	map_attributes PlayersNeighborsHouse, PLAYERS_NEIGHBORS_HOUSE, $00, 0
	map_attributes ElmsHouse, ELMS_HOUSE, $00, 0
	map_attributes Route26HealHouse, ROUTE_26_HEAL_HOUSE, $00, 0
	map_attributes DayOfWeekSiblingsHouse, DAY_OF_WEEK_SIBLINGS_HOUSE, $00, 0
	map_attributes Route27SandstormHouse, ROUTE_27_SANDSTORM_HOUSE, $00, 0
	map_attributes Route29Route46Gate, ROUTE_29_ROUTE_46_GATE, $00, 0
	map_attributes CherrygroveMart, CHERRYGROVE_MART, $00, 0
	map_attributes CherrygrovePokecenter1F, CHERRYGROVE_POKECENTER_1F, $00, 0
	map_attributes CherrygroveGymSpeechHouse, CHERRYGROVE_GYM_SPEECH_HOUSE, $00, 0
	map_attributes GuideGentsHouse, GUIDE_GENTS_HOUSE, $00, 0
	map_attributes CherrygroveEvolutionSpeechHouse, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, $00, 0
	map_attributes Route30BerryHouse, ROUTE_30_BERRY_HOUSE, $00, 0
	map_attributes MrPokemonsHouse, MR_POKEMONS_HOUSE, $00, 0
	map_attributes Route31VioletGate, ROUTE_31_VIOLET_GATE, $00, 0


; TODO: correct border blocks for Kanto maps

/*
	map_attributes AgathasRoom, AGATHAS_ROOM, $00, 0
	map_attributes BikeShop, BIKE_SHOP, $00, 0
	map_attributes BillsHouse, BILLS_HOUSE, $00, 0
	map_attributes BluesHouse, BLUES_HOUSE, $00, 0
	map_attributes BrunosRoomKanto, BRUNOS_ROOM_KANTO, $00, 0
	map_attributes CeladonChiefHouse, CELADON_CHIEF_HOUSE, $00, 0
	map_attributes CeladonDiner, CELADON_DINER, $00, 0
	map_attributes CeladonGym, CELADON_GYM, $00, 0
	map_attributes CeladonHotel, CELADON_HOTEL, $00, 0
	map_attributes CeladonMansion1F, CELADON_MANSION_1F, $00, 0
	map_attributes CeladonMansion2F, CELADON_MANSION_2F, $00, 0
	map_attributes CeladonMansion3F, CELADON_MANSION_3F, $00, 0
	map_attributes CeladonMansionRoof, CELADON_MANSION_ROOF, $00, 0
	map_attributes CeladonMansionRoofHouse, CELADON_MANSION_ROOF_HOUSE, $00, 0
	map_attributes CeladonMart1F, CELADON_MART_1F, $00, 0
	map_attributes CeladonMart2F, CELADON_MART_2F, $00, 0
	map_attributes CeladonMart3F, CELADON_MART_3F, $00, 0
	map_attributes CeladonMart4F, CELADON_MART_4F, $00, 0
	map_attributes CeladonMart5F, CELADON_MART_5F, $00, 0
	map_attributes CeladonMartElevator, CELADON_MART_ELEVATOR, $00, 0
	map_attributes CeladonMartRoof, CELADON_MART_ROOF, $00, 0
	map_attributes CeladonPokecenter, CELADON_POKECENTER, $00, 0
	map_attributes CeruleanBadgeHouse, CERULEAN_BADGE_HOUSE, $00, 0
	map_attributes CeruleanCave1F, CERULEAN_CAVE_1F, $00, 0
	map_attributes CeruleanCave2F, CERULEAN_CAVE_2F, $00, 0
	map_attributes CeruleanCaveB1F, CERULEAN_CAVE_B1F, $00, 0
	map_attributes CeruleanGym, CERULEAN_GYM, $00, 0
	map_attributes CeruleanMart, CERULEAN_MART, $00, 0
	map_attributes CeruleanPokecenter, CERULEAN_POKECENTER, $00, 0
	map_attributes CeruleanTradeHouse, CERULEAN_TRADE_HOUSE, $00, 0
	map_attributes CeruleanTrashedHouse, CERULEAN_TRASHED_HOUSE, $00, 0
	map_attributes ChampionsRoom, CHAMPIONS_ROOM, $00, 0
	map_attributes CinnabarGym, CINNABAR_GYM, $00, 0
	map_attributes CinnabarLab, CINNABAR_LAB, $00, 0
	map_attributes CinnabarLabFossilRoom, CINNABAR_LAB_FOSSIL_ROOM, $00, 0
	map_attributes CinnabarLabMetronomeRoom, CINNABAR_LAB_METRONOME_ROOM, $00, 0
	map_attributes CinnabarLabTradeRoom, CINNABAR_LAB_TRADE_ROOM, $00, 0
	map_attributes CinnabarMart, CINNABAR_MART, $00, 0
	map_attributes CinnabarPokecenter, CINNABAR_POKECENTER, $00, 0
	map_attributes ColosseumKanto, COLOSSEUM_KANTO, $00, 0
	map_attributes CopycatsHouse1F, COPYCATS_HOUSE_1F, $00, 0
	map_attributes CopycatsHouse2F, COPYCATS_HOUSE_2F, $00, 0
	map_attributes DayCareKanto, DAY_CARE_KANTO, $00, 0
	map_attributes DiglettsCave, DIGLETTS_CAVE, $00, 0
	map_attributes DiglettsCaveRoute2, DIGLETTS_CAVE_ROUTE_2, $00, 0
	map_attributes DiglettsCaveRoute11, DIGLETTS_CAVE_ROUTE_11, $00, 0
	map_attributes FightingDojo, FIGHTING_DOJO, $00, 0
	map_attributes FuchsiaBillsGrandpasHouse, FUCHSIA_BILLS_GRANDPAS_HOUSE, $00, 0
	map_attributes FuchsiaGoodRodHouse, FUCHSIA_GOOD_ROD_HOUSE, $00, 0
	map_attributes FuchsiaGym, FUCHSIA_GYM, $00, 0
	map_attributes FuchsiaMart, FUCHSIA_MART, $00, 0
	map_attributes FuchsiaMeetingRoom, FUCHSIA_MEETING_ROOM, $00, 0
	map_attributes FuchsiaPokecenter, FUCHSIA_POKECENTER, $00, 0
	map_attributes GameCorner, GAME_CORNER, $00, 0
	map_attributes GameCornerPrizeRoom, GAME_CORNER_PRIZE_ROOM, $00, 0
	map_attributes HallOfFameKanto, HALL_OF_FAME_KANTO, $00, 0
	map_attributes IndigoPlateauLobby, INDIGO_PLATEAU_LOBBY, $00, 0
	map_attributes LancesRoomKanto, LANCES_ROOM_KANTO, $00, 0
	map_attributes LavenderCuboneHouse, LAVENDER_CUBONE_HOUSE, $00, 0
	map_attributes LavenderMart, LAVENDER_MART, $00, 0
	map_attributes LavenderPokecenter, LAVENDER_POKECENTER, $00, 0
	map_attributes LoreleisRoom, LORELEIS_ROOM, $00, 0
	map_attributes MrFujisHouse, MR_FUJIS_HOUSE, $00, 0
	map_attributes MrPsychicsHouse, MR_PSYCHICS_HOUSE, $00, 0
	map_attributes MtMoon1F, MT_MOON_1F, $00, 0
	map_attributes MtMoonB1F, MT_MOON_B1F, $00, 0
	map_attributes MtMoonB2F, MT_MOON_B2F, $00, 0
	map_attributes MtMoonPokecenter, MT_MOON_POKECENTER, $00, 0
	map_attributes Museum1F, MUSEUM_1F, $00, 0
	map_attributes Museum2F, MUSEUM_2F, $00, 0
	map_attributes NameRatersHouse, NAME_RATERS_HOUSE, $00, 0
	map_attributes OaksLab, OAKS_LAB, $00, 0
	map_attributes PewterGym, PEWTER_GYM, $00, 0
	map_attributes PewterMart, PEWTER_MART, $00, 0
	map_attributes PewterNidoranHouse, PEWTER_NIDORAN_HOUSE, $00, 0
	map_attributes PewterPokecenter, PEWTER_POKECENTER, $00, 0
	map_attributes PewterSpeechHouse, PEWTER_SPEECH_HOUSE, $00, 0
	map_attributes PokemonFanClub, POKEMON_FAN_CLUB, $00, 0
	map_attributes PokemonMansion1F, POKEMON_MANSION_1F, $00, 0
	map_attributes PokemonMansion2F, POKEMON_MANSION_2F, $00, 0
	map_attributes PokemonMansion3F, POKEMON_MANSION_3F, $00, 0
	map_attributes PokemonMansionB1F, POKEMON_MANSION_B1F, $00, 0
	map_attributes PokemonTower1F, POKEMON_TOWER_1F, $00, 0
	map_attributes PokemonTower2F, POKEMON_TOWER_2F, $00, 0
	map_attributes PokemonTower3F, POKEMON_TOWER_3F, $00, 0
	map_attributes PokemonTower4F, POKEMON_TOWER_4F, $00, 0
	map_attributes PokemonTower5F, POKEMON_TOWER_5F, $00, 0
	map_attributes PokemonTower6F, POKEMON_TOWER_6F, $00, 0
	map_attributes PokemonTower7F, POKEMON_TOWER_7F, $00, 0
	map_attributes PowerPlant, POWER_PLANT, $00, 0
	map_attributes RedsHouse1F, REDS_HOUSE_1F, $00, 0
	map_attributes RedsHouse2F, REDS_HOUSE_2F, $00, 0
	map_attributes RocketHideoutB1F, ROCK_TUNNEL_1F, $00, 0
	map_attributes RocketHideoutB2F, ROCK_TUNNEL_B1F, $00, 0
	map_attributes RocketHideoutB3F, ROCK_TUNNEL_POKECENTER, $00, 0
	map_attributes RocketHideoutB4F, ROCKET_HIDEOUT_B1F, $00, 0
	map_attributes RocketHideoutElevator, ROCKET_HIDEOUT_B2F, $00, 0
	map_attributes RockTunnel1F, ROCKET_HIDEOUT_B3F, $00, 0
	map_attributes RockTunnelB1F, ROCKET_HIDEOUT_B4F, $00, 0
	map_attributes RockTunnelPokecenter, ROCKET_HIDEOUT_ELEVATOR, $00, 0
	map_attributes Route2Gate, ROUTE_2_GATE, $00, 0
	map_attributes Route2TradeHouse, ROUTE_2_TRADE_HOUSE, $00, 0
	map_attributes Route5Gate, ROUTE_5_GATE, $00, 0
	map_attributes Route6Gate, ROUTE_6_GATE, $00, 0
	map_attributes Route7Gate, ROUTE_7_GATE, $00, 0
	map_attributes Route8Gate, ROUTE_8_GATE, $00, 0
	map_attributes Route11Gate1F, ROUTE_11_GATE_1F, $00, 0
	map_attributes Route11Gate2F, ROUTE_11_GATE_2F, $00, 0
	map_attributes Route12Gate1F, ROUTE_12_GATE_1F, $00, 0
	map_attributes Route12Gate2F, ROUTE_12_GATE_2F, $00, 0
	map_attributes Route12SuperRodHouse, ROUTE_12_SUPER_ROD_HOUSE, $00, 0
	map_attributes Route15Gate1F, ROUTE_15_GATE_1F, $00, 0
	map_attributes Route15Gate2F, ROUTE_15_GATE_2F, $00, 0
	map_attributes Route16FlyHouse, ROUTE_16_FLY_HOUSE, $00, 0
	map_attributes Route16Gate1F, ROUTE_16_GATE_1F, $00, 0
	map_attributes Route16Gate2F, ROUTE_16_GATE_2F, $00, 0
	map_attributes Route18Gate1F, ROUTE_18_GATE_1F, $00, 0
	map_attributes Route18Gate2F, ROUTE_18_GATE_2F, $00, 0
	map_attributes Route22Gate, ROUTE_22_GATE, $00, 0
	map_attributes SafariZoneCenter, SAFARI_ZONE_CENTER, $00, 0
	map_attributes SafariZoneCenterRestHouse, SAFARI_ZONE_CENTER_REST_HOUSE, $00, 0
	map_attributes SafariZoneEast, SAFARI_ZONE_EAST, $00, 0
	map_attributes SafariZoneEastRestHouse, SAFARI_ZONE_EAST_REST_HOUSE, $00, 0
	map_attributes SafariZoneGate, SAFARI_ZONE_GATE, $00, 0
	map_attributes SafariZoneNorth, SAFARI_ZONE_NORTH, $00, 0
	map_attributes SafariZoneNorthRestHouse, SAFARI_ZONE_NORTH_REST_HOUSE, $00, 0
	map_attributes SafariZoneSecretHouse, SAFARI_ZONE_SECRET_HOUSE, $00, 0
	map_attributes SafariZoneWest, SAFARI_ZONE_WEST, $00, 0
	map_attributes SafariZoneWestRestHouse, SAFARI_ZONE_WEST_REST_HOUSE, $00, 0
	map_attributes SaffronGym, SAFFRON_GYM, $00, 0
	map_attributes SaffronMart, SAFFRON_MART, $00, 0
	map_attributes SaffronPidgeyHouse, SAFFRON_PIDGEY_HOUSE, $00, 0
	map_attributes SaffronPokecenter, SAFFRON_POKECENTER, $00, 0
	map_attributes SeafoamIslands1F, SEAFOAM_ISLANDS_1F, $00, 0
	map_attributes SeafoamIslandsB1F, SEAFOAM_ISLANDS_B1F, $00, 0
	map_attributes SeafoamIslandsB2F, SEAFOAM_ISLANDS_B2F, $00, 0
	map_attributes SeafoamIslandsB3F, SEAFOAM_ISLANDS_B3F, $00, 0
	map_attributes SeafoamIslandsB4F, SEAFOAM_ISLANDS_B4F, $00, 0
	map_attributes SilphCo1F, SILPH_CO_1F, $00, 0
	map_attributes SilphCo2F, SILPH_CO_2F, $00, 0
	map_attributes SilphCo3F, SILPH_CO_3F, $00, 0
	map_attributes SilphCo4F, SILPH_CO_4F, $00, 0
	map_attributes SilphCo5F, SILPH_CO_5F, $00, 0
	map_attributes SilphCo6F, SILPH_CO_6F, $00, 0
	map_attributes SilphCo7F, SILPH_CO_7F, $00, 0
	map_attributes SilphCo8F, SILPH_CO_8F, $00, 0
	map_attributes SilphCo9F, SILPH_CO_9F, $00, 0
	map_attributes SilphCo10F, SILPH_CO_10F, $00, 0
	map_attributes SilphCo11F, SILPH_CO_11F, $00, 0
	map_attributes SilphCoElevator, SILPH_CO_ELEVATOR, $00, 0
	map_attributes SSAnne1F, SS_ANNE_1F, $00, 0
	map_attributes SSAnne1FRooms, SS_ANNE_1F_ROOMS, $00, 0
	map_attributes SSAnne2F, SS_ANNE_2F, $00, 0
	map_attributes SSAnne2FRooms, SS_ANNE_2F_ROOMS, $00, 0
	map_attributes SSAnne3F, SS_ANNE_3F, $00, 0
	map_attributes SSAnneB1F, SS_ANNE_B1F, $00, 0
	map_attributes SSAnneB1FRooms, SS_ANNE_B1F_ROOMS, $00, 0
	map_attributes SSAnneBow, SS_ANNE_BOW, $00, 0
	map_attributes SSAnneCaptainsRoom, SS_ANNE_CAPTAINS_ROOM, $00, 0
	map_attributes SSAnneKitchen, SS_ANNE_KITCHEN, $00, 0
	map_attributes TradeCenterKanto, TRADE_CENTER_KANTO, $00, 0
	map_attributes UndergroundPathNorthSouth, UNDERGROUND_PATH_NORTH_SOUTH, $00, 0
	map_attributes UndergroundPathRoute5, UNDERGROUND_PATH_ROUTE_5, $00, 0
	map_attributes UndergroundPathRoute6, UNDERGROUND_PATH_ROUTE_6, $00, 0
	map_attributes UndergroundPathRoute7, UNDERGROUND_PATH_ROUTE_7, $00, 0
	map_attributes UndergroundPathRoute8, UNDERGROUND_PATH_ROUTE_8, $00, 0
	map_attributes UndergroundPathWestEast, UNDERGROUND_PATH_WEST_EAST, $00, 0
	map_attributes VermilionDock, VERMILION_DOCK, $00, 0
	map_attributes VermilionGym, VERMILION_GYM, $00, 0
	map_attributes VermilionMart, VERMILION_MART, $00, 0
	map_attributes VermilionOldRodHouse, VERMILION_OLD_ROD_HOUSE, $00, 0
	map_attributes VermilionPidgeyHouse, VERMILION_PIDGEY_HOUSE, $00, 0
	map_attributes VermilionPokecenter, VERMILION_POKECENTER, $00, 0
	map_attributes VermilionTradeHouse, VERMILION_TRADE_HOUSE, $00, 0
	map_attributes VictoryRoad1F, VICTORY_ROAD_1F, $00, 0
	map_attributes VictoryRoad2F, VICTORY_ROAD_2F, $00, 0
	map_attributes VictoryRoad3F, VICTORY_ROAD_3F, $00, 0
	map_attributes ViridianForest, VIRIDIAN_FOREST, $00, 0
	map_attributes ViridianForestNorthGate, VIRIDIAN_FOREST_NORTH_GATE, $00, 0
	map_attributes ViridianForestSouthGate, VIRIDIAN_FOREST_SOUTH_GATE, $00, 0
	map_attributes ViridianGym, VIRIDIAN_GYM, $00, 0
	map_attributes ViridianMart, VIRIDIAN_MART, $00, 0
	map_attributes ViridianNicknameHouse, VIRIDIAN_NICKNAME_HOUSE, $00, 0
	map_attributes ViridianPokecenter, VIRIDIAN_POKECENTER, $00, 0
	map_attributes ViridianSchoolHouse, VIRIDIAN_SCHOOL_HOUSE, $00, 0
	map_attributes WardensHouse, WARDENS_HOUSE, $00, 0
*/
