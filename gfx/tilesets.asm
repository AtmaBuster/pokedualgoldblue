INCLUDE "constants.asm"

tilecoll: MACRO
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "TilesetKantoMeta", ROMX
TilesetKantoMeta::
INCBIN "data/tilesets/kanto_metatiles.bin"

SECTION "TilesetKantoColl", ROMX
TilesetKantoColl::
INCLUDE "data/tilesets/kanto_collision.asm"

SECTION "TilesetJohtoGFX", ROMX
Tileset0GFX::
TilesetJohtoGFX::
INCBIN "gfx/tilesets/johto.2bpp.lz"

SECTION "TilesetJohtoMeta", ROMX
Tileset0Meta::
TilesetJohtoMeta::
INCBIN "data/tilesets/johto_metatiles.bin"

SECTION "TilesetJohtoColl", ROMX
Tileset0Coll::
TilesetJohtoColl::
INCLUDE "data/tilesets/johto_collision.asm"

SECTION "TilesetJohtoModernGFX", ROMX
TilesetJohtoModernGFX::
INCBIN "gfx/tilesets/johto_modern.2bpp.lz"

SECTION "TilesetJohtoModernMeta", ROMX
TilesetJohtoModernMeta::
INCBIN "data/tilesets/johto_modern_metatiles.bin"

SECTION "TilesetJohtoModernColl", ROMX
TilesetJohtoModernColl::
INCLUDE "data/tilesets/johto_modern_collision.asm"

SECTION "TilesetTraditionalHouseGFX", ROMX
TilesetTraditionalHouseGFX::
INCBIN "gfx/tilesets/traditional_house.2bpp.lz"

SECTION "TilesetTraditionalHouseMeta", ROMX
TilesetTraditionalHouseMeta::
INCBIN "data/tilesets/traditional_house_metatiles.bin"

SECTION "TilesetTraditionalHouseColl", ROMX
TilesetTraditionalHouseColl::
INCLUDE "data/tilesets/traditional_house_collision.asm"

SECTION "TilesetGateGFX", ROMX
TilesetGateGFX::
INCBIN "gfx/tilesets/gate.2bpp.lz"

SECTION "TilesetGateMeta", ROMX
TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin"

SECTION "TilesetGateColl", ROMX
TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

SECTION "TilesetPokecenterGFX", ROMX
TilesetPokecenterGFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"

SECTION "TilesetPokecenterMeta", ROMX
TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin"

SECTION "TilesetPokecenterColl", ROMX
TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"

SECTION "TilesetPortGFX", ROMX
TilesetPortGFX::
INCBIN "gfx/tilesets/port.2bpp.lz"

SECTION "TilesetPortMeta", ROMX
TilesetPortMeta::
INCBIN "data/tilesets/port_metatiles.bin"

SECTION "TilesetPortColl", ROMX
TilesetPortColl::
INCLUDE "data/tilesets/port_collision.asm"

SECTION "TilesetPlayersHouseGFX", ROMX
TilesetPlayersHouseGFX::
INCBIN "gfx/tilesets/players_house.2bpp.lz"

SECTION "TilesetPlayersHouseMeta", ROMX
TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin"

SECTION "TilesetPlayersHouseColl", ROMX
TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"

SECTION "TilesetMansionGFX", ROMX
TilesetMansionGFX::
INCBIN "gfx/tilesets/mansion.2bpp.lz"

SECTION "TilesetMansionMeta", ROMX
TilesetMansionMeta::
INCBIN "data/tilesets/mansion_metatiles.bin"

SECTION "TilesetMansionColl", ROMX
TilesetMansionColl::
INCLUDE "data/tilesets/mansion_collision.asm"

SECTION "TilesetCaveGFX", ROMX
TilesetCaveGFX::
INCBIN "gfx/tilesets/cave.2bpp.lz"

SECTION "TilesetCaveMeta", ROMX
TilesetCaveMeta::
TilesetDarkCaveMeta::
INCBIN "data/tilesets/cave_metatiles.bin"

SECTION "TilesetCaveColl", ROMX
TilesetCaveColl::
TilesetDarkCaveColl::
INCLUDE "data/tilesets/cave_collision.asm"

SECTION "TilesetTowerGFX", ROMX
TilesetTowerGFX::
INCBIN "gfx/tilesets/tower.2bpp.lz"

SECTION "TilesetTowerMeta", ROMX
TilesetTowerMeta::
INCBIN "data/tilesets/tower_metatiles.bin"

SECTION "TilesetTowerColl", ROMX
TilesetTowerColl::
INCLUDE "data/tilesets/tower_collision.asm"

SECTION "TilesetLabGFX", ROMX
TilesetLabGFX::
INCBIN "gfx/tilesets/lab.2bpp.lz"

SECTION "TilesetLabMeta", ROMX
TilesetLabMeta::
INCBIN "data/tilesets/lab_metatiles.bin"

SECTION "TilesetLabColl", ROMX
TilesetLabColl::
INCLUDE "data/tilesets/lab_collision.asm"

SECTION "TilesetFacilityGFX", ROMX
TilesetFacilityGFX::
INCBIN "gfx/tilesets/facility.2bpp.lz"

SECTION "TilesetFacilityMeta", ROMX
TilesetFacilityMeta::
INCBIN "data/tilesets/facility_metatiles.bin"

SECTION "TilesetFacilityColl", ROMX
TilesetFacilityColl::
INCLUDE "data/tilesets/facility_collision.asm"

SECTION "TilesetMartGFX", ROMX
TilesetMartGFX::
INCBIN "gfx/tilesets/mart.2bpp.lz"

SECTION "TilesetMartMeta", ROMX
TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin"

SECTION "TilesetMartColl", ROMX
TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

SECTION "TilesetGameCornerGFX", ROMX
TilesetGameCornerGFX::
INCBIN "gfx/tilesets/game_corner.2bpp.lz"

SECTION "TilesetGameCornerMeta", ROMX
TilesetGameCornerMeta::
INCBIN "data/tilesets/game_corner_metatiles.bin"

SECTION "TilesetGameCornerColl", ROMX
TilesetGameCornerColl::
INCLUDE "data/tilesets/game_corner_collision.asm"

SECTION "TilesetTrainStationGFX", ROMX
TilesetTrainStationGFX::
INCBIN "gfx/tilesets/train_station.2bpp.lz"

SECTION "TilesetTrainStationMeta", ROMX
TilesetTrainStationMeta::
INCBIN "data/tilesets/train_station_metatiles.bin"

SECTION "TilesetTrainStationColl", ROMX
TilesetTrainStationColl::
INCLUDE "data/tilesets/train_station_collision.asm"

SECTION "TilesetForestMeta", ROMX
TilesetForestMeta::
INCBIN "data/tilesets/forest_metatiles.bin"

SECTION "TilesetEliteFourRoomGFX", ROMX
TilesetEliteFourRoomGFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

SECTION "TilesetEliteFourRoomMeta", ROMX
TilesetEliteFourRoomMeta::
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

SECTION "TilesetEliteFourRoomColl", ROMX
TilesetEliteFourRoomColl::
INCLUDE "data/tilesets/elite_four_room_collision.asm"

SECTION "TilesetParkGFX", ROMX
TilesetParkGFX::
INCBIN "gfx/tilesets/park.2bpp.lz"

SECTION "TilesetParkMeta", ROMX
TilesetParkMeta::
INCBIN "data/tilesets/park_metatiles.bin"

SECTION "TilesetParkColl", ROMX
TilesetParkColl::
INCLUDE "data/tilesets/park_collision.asm"

SECTION "TilesetRuinsOfAlphGFX", ROMX
TilesetRuinsOfAlphGFX::
INCBIN "gfx/tilesets/ruins_of_alph.2bpp.lz"

SECTION "TilesetRuinsOfAlphMeta", ROMX
TilesetRuinsOfAlphMeta::
INCBIN "data/tilesets/ruins_of_alph_metatiles.bin"

SECTION "TilesetRuinsOfAlphColl", ROMX
TilesetRuinsOfAlphColl::
INCLUDE "data/tilesets/ruins_of_alph_collision.asm"

SECTION "TilesetRadioTowerGFX", ROMX
TilesetRadioTowerGFX::
INCBIN "gfx/tilesets/radio_tower.2bpp.lz"

SECTION "TilesetRadioTowerMeta", ROMX
TilesetRadioTowerMeta::
INCBIN "data/tilesets/radio_tower_metatiles.bin"

SECTION "TilesetRadioTowerColl", ROMX
TilesetRadioTowerColl::
INCLUDE "data/tilesets/radio_tower_collision.asm"

SECTION "TilesetUndergroundGFX", ROMX
TilesetUndergroundGFX::
INCBIN "gfx/tilesets/underground.2bpp.lz"

SECTION "TilesetUndergroundMeta", ROMX
TilesetUndergroundMeta::
INCBIN "data/tilesets/underground_metatiles.bin"

SECTION "TilesetUndergroundColl", ROMX
TilesetUndergroundColl::
INCLUDE "data/tilesets/underground_collision.asm"

SECTION "TilesetIcePathGFX", ROMX
TilesetIcePathGFX::
INCBIN "gfx/tilesets/ice_path.2bpp.lz"

SECTION "TilesetIcePathMeta", ROMX
TilesetIcePathMeta::
INCBIN "data/tilesets/ice_path_metatiles.bin"

SECTION "TilesetIcePathColl", ROMX
TilesetIcePathColl::
INCLUDE "data/tilesets/ice_path_collision.asm"

SECTION "TilesetDarkCaveGFX", ROMX
TilesetDarkCaveGFX::
INCBIN "gfx/tilesets/dark_cave.2bpp.lz"

SECTION "TilesetForestGFX", ROMX
TilesetForestGFX::
INCBIN "gfx/tilesets/forest.2bpp.lz"

SECTION "TilesetChampionsRoomGFX", ROMX
TilesetChampionsRoomGFX::
INCBIN "gfx/tilesets/champions_room.2bpp.lz"

SECTION "TilesetChampionsRoomMeta", ROMX
TilesetChampionsRoomMeta::
INCBIN "data/tilesets/champions_room_metatiles.bin"

SECTION "TilesetChampionsRoomColl", ROMX
TilesetChampionsRoomColl::
INCLUDE "data/tilesets/champions_room_collision.asm"

SECTION "TilesetHouseGFX", ROMX
TilesetHouseGFX::
INCBIN "gfx/tilesets/house.2bpp.lz"

SECTION "TilesetHouseMeta", ROMX
TilesetHouseMeta::
INCBIN "data/tilesets/house_metatiles.bin"

SECTION "TilesetHouseColl", ROMX
TilesetHouseColl::
INCLUDE "data/tilesets/house_collision.asm"

SECTION "TilesetLighthouseGFX", ROMX
TilesetLighthouseGFX::
INCBIN "gfx/tilesets/lighthouse.2bpp.lz"

SECTION "TilesetLighthouseMeta", ROMX
TilesetLighthouseMeta::
INCBIN "data/tilesets/lighthouse_metatiles.bin"

SECTION "TilesetLighthouseColl", ROMX
TilesetLighthouseColl::
INCLUDE "data/tilesets/lighthouse_collision.asm"

SECTION "TilesetPlayersRoomGFX", ROMX
TilesetPlayersRoomGFX::
INCBIN "gfx/tilesets/players_room.2bpp.lz"

SECTION "TilesetPlayersRoomMeta", ROMX
TilesetPlayersRoomMeta::
INCBIN "data/tilesets/players_room_metatiles.bin"

SECTION "TilesetPlayersRoomColl", ROMX
TilesetPlayersRoomColl::
INCLUDE "data/tilesets/players_room_collision.asm"

SECTION "TilesetForestColl", ROMX
TilesetForestColl::
INCLUDE "data/tilesets/forest_collision.asm"

SECTION "TilesetKantoGFX", ROMX
TilesetKantoGFX::
INCBIN "gfx/tilesets/kanto.2bpp.lz"

SECTION "TilesetCavernGFX", ROMX
TilesetCavernGFX::
INCBIN "gfx/tilesets/cavern.2bpp.lz"

SECTION "TilesetCavernMeta", ROMX
TilesetCavernMeta::
INCBIN "data/tilesets/cavern_metatiles.bin"

SECTION "TilesetCavernColl", ROMX
TilesetCavernColl::
INCLUDE "data/tilesets/cavern_collision.asm"

SECTION "TilesetCemeteryGFX", ROMX
TilesetCemeteryGFX::
INCBIN "gfx/tilesets/cemetery.2bpp.lz"

SECTION "TilesetCemeteryMeta", ROMX
TilesetCemeteryMeta::
INCBIN "data/tilesets/cemetery_metatiles.bin"

SECTION "TilesetCemeteryColl", ROMX
TilesetCemeteryColl::
INCLUDE "data/tilesets/cemetery_collision.asm"

SECTION "TilesetClubGFX", ROMX
TilesetClubGFX::
INCBIN "gfx/tilesets/club.2bpp.lz"

SECTION "TilesetClubMeta", ROMX
TilesetClubMeta::
INCBIN "data/tilesets/club_metatiles.bin"

SECTION "TilesetClubColl", ROMX
TilesetClubColl::
INCLUDE "data/tilesets/club_collision.asm"

SECTION "TilesetFacilityKantoGFX", ROMX
TilesetFacilityKantoGFX::
INCBIN "gfx/tilesets/facility_kanto.2bpp.lz"

SECTION "TilesetFacilityKantoMeta", ROMX
TilesetFacilityKantoMeta::
INCBIN "data/tilesets/facility_kanto_metatiles.bin"

SECTION "TilesetFacilityKantoColl", ROMX
TilesetFacilityKantoColl::
INCLUDE "data/tilesets/facility_kanto_collision.asm"

SECTION "TilesetGymGFX", ROMX
TilesetGymGFX::
INCBIN "gfx/tilesets/gym.2bpp.lz"

SECTION "TilesetGymMeta", ROMX
TilesetGymMeta::
INCBIN "data/tilesets/gym_metatiles.bin"

SECTION "TilesetGymColl", ROMX
TilesetGymColl::
INCLUDE "data/tilesets/gym_collision.asm"

SECTION "TilesetHouseKantoGFX", ROMX
TilesetHouseKantoGFX::
INCBIN "gfx/tilesets/house_kanto.2bpp.lz"

SECTION "TilesetHouseKantoMeta", ROMX
TilesetHouseKantoMeta::
INCBIN "data/tilesets/house_kanto_metatiles.bin"

SECTION "TilesetHouseKantoColl", ROMX
TilesetHouseKantoColl::
INCLUDE "data/tilesets/house_kanto_collision.asm"

SECTION "TilesetInteriorGFX", ROMX
TilesetInteriorGFX::
INCBIN "gfx/tilesets/interior.2bpp.lz"

SECTION "TilesetInteriorMeta", ROMX
TilesetInteriorMeta::
INCBIN "data/tilesets/interior_metatiles.bin"

SECTION "TilesetInteriorColl", ROMX
TilesetInteriorColl::
INCLUDE "data/tilesets/interior_collision.asm"

SECTION "TilesetLabKantoGFX", ROMX
TilesetLabKantoGFX::
INCBIN "gfx/tilesets/lab_kanto.2bpp.lz"

SECTION "TilesetLabKantoMeta", ROMX
TilesetLabKantoMeta::
INCBIN "data/tilesets/lab_kanto_metatiles.bin"

SECTION "TilesetLabKantoColl", ROMX
TilesetLabKantoColl::
INCLUDE "data/tilesets/lab_kanto_collision.asm"

SECTION "TilesetLobbyGFX", ROMX
TilesetLobbyGFX::
INCBIN "gfx/tilesets/lobby.2bpp.lz"

SECTION "TilesetLobbyMeta", ROMX
TilesetLobbyMeta::
INCBIN "data/tilesets/lobby_metatiles.bin"

SECTION "TilesetLobbyColl", ROMX
TilesetLobbyColl::
INCLUDE "data/tilesets/lobby_collision.asm"

SECTION "TilesetMuseumGFX", ROMX
TilesetMuseumGFX::
INCBIN "gfx/tilesets/museum.2bpp.lz"

SECTION "TilesetMuseumMeta", ROMX
TilesetMuseumMeta::
INCBIN "data/tilesets/museum_metatiles.bin"

SECTION "TilesetMuseumColl", ROMX
TilesetMuseumColl::
INCLUDE "data/tilesets/museum_collision.asm"

SECTION "TilesetPlateauGFX", ROMX
TilesetPlateauGFX::
INCBIN "gfx/tilesets/plateau.2bpp.lz"

SECTION "TilesetPlateauMeta", ROMX
TilesetPlateauMeta::
INCBIN "data/tilesets/plateau_metatiles.bin"

SECTION "TilesetPlateauColl", ROMX
TilesetPlateauColl::
INCLUDE "data/tilesets/plateau_collision.asm"

SECTION "TilesetPokecenterKantoGFX", ROMX
TilesetPokecenterKantoGFX::
INCBIN "gfx/tilesets/pokecenter_kanto.2bpp.lz"

SECTION "TilesetPokecenterKantoMeta", ROMX
TilesetPokecenterKantoMeta::
INCBIN "data/tilesets/pokecenter_kanto_metatiles.bin"

SECTION "TilesetPokecenterKantoColl", ROMX
TilesetPokecenterKantoColl::
INCLUDE "data/tilesets/pokecenter_kanto_collision.asm"

SECTION "TilesetRedsHouseGFX", ROMX
TilesetRedsHouseGFX::
INCBIN "gfx/tilesets/reds_house.2bpp.lz"

SECTION "TilesetRedsHouseMeta", ROMX
TilesetRedsHouseMeta::
INCBIN "data/tilesets/reds_house_metatiles.bin"

SECTION "TilesetRedsHouseColl", ROMX
TilesetRedsHouseColl::
INCLUDE "data/tilesets/reds_house_collision.asm"

SECTION "TilesetSafariGFX", ROMX
TilesetSafariGFX::
INCBIN "gfx/tilesets/safari.2bpp.lz"

SECTION "TilesetSafariMeta", ROMX
TilesetSafariMeta::
INCBIN "data/tilesets/safari_metatiles.bin"

SECTION "TilesetSafariColl", ROMX
TilesetSafariColl::
INCLUDE "data/tilesets/safari_collision.asm"

SECTION "TilesetShipGFX", ROMX
TilesetShipGFX::
INCBIN "gfx/tilesets/ship.2bpp.lz"

SECTION "TilesetShipMeta", ROMX
TilesetShipMeta::
INCBIN "data/tilesets/ship_metatiles.bin"

SECTION "TilesetShipColl", ROMX
TilesetShipColl::
INCLUDE "data/tilesets/ship_collision.asm"

SECTION "TilesetShipPortGFX", ROMX
TilesetShipPortGFX::
INCBIN "gfx/tilesets/ship_port.2bpp.lz"

SECTION "TilesetShipPortMeta", ROMX
TilesetShipPortMeta::
INCBIN "data/tilesets/ship_port_metatiles.bin"

SECTION "TilesetShipPortColl", ROMX
TilesetShipPortColl::
INCLUDE "data/tilesets/ship_port_collision.asm"

SECTION "TilesetTunnelGFX", ROMX
TilesetTunnelGFX::
INCBIN "gfx/tilesets/tunnel.2bpp.lz"

SECTION "TilesetTunnelMeta", ROMX
TilesetTunnelMeta::
INCBIN "data/tilesets/tunnel_metatiles.bin"

SECTION "TilesetTunnelColl", ROMX
TilesetTunnelColl::
INCLUDE "data/tilesets/tunnel_collision.asm"
