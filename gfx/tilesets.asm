INCLUDE "constants.asm"

tilecoll: MACRO
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


floating_section
TilesetKantoMeta::
INCBIN "data/tilesets/kanto_metatiles.bin"

floating_section
TilesetKantoColl::
INCLUDE "data/tilesets/kanto_collision.asm"

floating_section
Tileset0GFX::
TilesetJohtoGFX::
INCBIN "gfx/tilesets/johto.2bpp.lz"

floating_section
Tileset0Meta::
TilesetJohtoMeta::
INCBIN "data/tilesets/johto_metatiles.bin"

floating_section
Tileset0Coll::
TilesetJohtoColl::
INCLUDE "data/tilesets/johto_collision.asm"

floating_section
TilesetJohtoModernGFX::
INCBIN "gfx/tilesets/johto_modern.2bpp.lz"

floating_section
TilesetJohtoModernMeta::
INCBIN "data/tilesets/johto_modern_metatiles.bin"

floating_section
TilesetJohtoModernColl::
INCLUDE "data/tilesets/johto_modern_collision.asm"

floating_section
TilesetTraditionalHouseGFX::
INCBIN "gfx/tilesets/traditional_house.2bpp.lz"

floating_section
TilesetTraditionalHouseMeta::
INCBIN "data/tilesets/traditional_house_metatiles.bin"

floating_section
TilesetTraditionalHouseColl::
INCLUDE "data/tilesets/traditional_house_collision.asm"

floating_section
TilesetGateGFX::
INCBIN "gfx/tilesets/gate.2bpp.lz"

floating_section
TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin"

floating_section
TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

floating_section
TilesetPokecenterGFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"

floating_section
TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin"

floating_section
TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"

floating_section
TilesetPortGFX::
INCBIN "gfx/tilesets/port.2bpp.lz"

floating_section
TilesetPortMeta::
INCBIN "data/tilesets/port_metatiles.bin"

floating_section
TilesetPortColl::
INCLUDE "data/tilesets/port_collision.asm"

floating_section
TilesetPlayersHouseGFX::
INCBIN "gfx/tilesets/players_house.2bpp.lz"

floating_section
TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin"

floating_section
TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"

floating_section
TilesetMansionGFX::
INCBIN "gfx/tilesets/mansion.2bpp.lz"

floating_section
TilesetMansionMeta::
INCBIN "data/tilesets/mansion_metatiles.bin"

floating_section
TilesetMansionColl::
INCLUDE "data/tilesets/mansion_collision.asm"

floating_section
TilesetCaveGFX::
INCBIN "gfx/tilesets/cave.2bpp.lz"

floating_section
TilesetCaveMeta::
TilesetDarkCaveMeta::
INCBIN "data/tilesets/cave_metatiles.bin"

floating_section
TilesetCaveColl::
TilesetDarkCaveColl::
INCLUDE "data/tilesets/cave_collision.asm"

floating_section
TilesetTowerGFX::
INCBIN "gfx/tilesets/tower.2bpp.lz"

floating_section
TilesetTowerMeta::
INCBIN "data/tilesets/tower_metatiles.bin"

floating_section
TilesetTowerColl::
INCLUDE "data/tilesets/tower_collision.asm"

floating_section
TilesetLabGFX::
INCBIN "gfx/tilesets/lab.2bpp.lz"

floating_section
TilesetLabMeta::
INCBIN "data/tilesets/lab_metatiles.bin"

floating_section
TilesetLabColl::
INCLUDE "data/tilesets/lab_collision.asm"

floating_section
TilesetFacilityGFX::
INCBIN "gfx/tilesets/facility.2bpp.lz"

floating_section
TilesetFacilityMeta::
INCBIN "data/tilesets/facility_metatiles.bin"

floating_section
TilesetFacilityColl::
INCLUDE "data/tilesets/facility_collision.asm"

floating_section
TilesetMartGFX::
INCBIN "gfx/tilesets/mart.2bpp.lz"

floating_section
TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin"

floating_section
TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

floating_section
TilesetGameCornerGFX::
INCBIN "gfx/tilesets/game_corner.2bpp.lz"

floating_section
TilesetGameCornerMeta::
INCBIN "data/tilesets/game_corner_metatiles.bin"

floating_section
TilesetGameCornerColl::
INCLUDE "data/tilesets/game_corner_collision.asm"

floating_section
TilesetTrainStationGFX::
INCBIN "gfx/tilesets/train_station.2bpp.lz"

floating_section
TilesetTrainStationMeta::
INCBIN "data/tilesets/train_station_metatiles.bin"

floating_section
TilesetTrainStationColl::
INCLUDE "data/tilesets/train_station_collision.asm"

floating_section
TilesetForestMeta::
INCBIN "data/tilesets/forest_metatiles.bin"

floating_section
TilesetEliteFourRoomGFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

floating_section
TilesetEliteFourRoomMeta::
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

floating_section
TilesetEliteFourRoomColl::
INCLUDE "data/tilesets/elite_four_room_collision.asm"

floating_section
TilesetParkGFX::
INCBIN "gfx/tilesets/park.2bpp.lz"

floating_section
TilesetParkMeta::
INCBIN "data/tilesets/park_metatiles.bin"

floating_section
TilesetParkColl::
INCLUDE "data/tilesets/park_collision.asm"

floating_section
TilesetRuinsOfAlphGFX::
INCBIN "gfx/tilesets/ruins_of_alph.2bpp.lz"

floating_section
TilesetRuinsOfAlphMeta::
INCBIN "data/tilesets/ruins_of_alph_metatiles.bin"

floating_section
TilesetRuinsOfAlphColl::
INCLUDE "data/tilesets/ruins_of_alph_collision.asm"

floating_section
TilesetRadioTowerGFX::
INCBIN "gfx/tilesets/radio_tower.2bpp.lz"

floating_section
TilesetRadioTowerMeta::
INCBIN "data/tilesets/radio_tower_metatiles.bin"

floating_section
TilesetRadioTowerColl::
INCLUDE "data/tilesets/radio_tower_collision.asm"

floating_section
TilesetUndergroundGFX::
INCBIN "gfx/tilesets/underground.2bpp.lz"

floating_section
TilesetUndergroundMeta::
INCBIN "data/tilesets/underground_metatiles.bin"

floating_section
TilesetUndergroundColl::
INCLUDE "data/tilesets/underground_collision.asm"

floating_section
TilesetIcePathGFX::
INCBIN "gfx/tilesets/ice_path.2bpp.lz"

floating_section
TilesetIcePathMeta::
INCBIN "data/tilesets/ice_path_metatiles.bin"

floating_section
TilesetIcePathColl::
INCLUDE "data/tilesets/ice_path_collision.asm"

floating_section
TilesetDarkCaveGFX::
INCBIN "gfx/tilesets/dark_cave.2bpp.lz"

floating_section
TilesetForestGFX::
INCBIN "gfx/tilesets/forest.2bpp.lz"

floating_section
TilesetChampionsRoomGFX::
INCBIN "gfx/tilesets/champions_room.2bpp.lz"

floating_section
TilesetChampionsRoomMeta::
INCBIN "data/tilesets/champions_room_metatiles.bin"

floating_section
TilesetChampionsRoomColl::
INCLUDE "data/tilesets/champions_room_collision.asm"

floating_section
TilesetHouseGFX::
INCBIN "gfx/tilesets/house.2bpp.lz"

floating_section
TilesetHouseMeta::
INCBIN "data/tilesets/house_metatiles.bin"

floating_section
TilesetHouseColl::
INCLUDE "data/tilesets/house_collision.asm"

floating_section
TilesetLighthouseGFX::
INCBIN "gfx/tilesets/lighthouse.2bpp.lz"

floating_section
TilesetLighthouseMeta::
INCBIN "data/tilesets/lighthouse_metatiles.bin"

floating_section
TilesetLighthouseColl::
INCLUDE "data/tilesets/lighthouse_collision.asm"

floating_section
TilesetPlayersRoomGFX::
INCBIN "gfx/tilesets/players_room.2bpp.lz"

floating_section
TilesetPlayersRoomMeta::
INCBIN "data/tilesets/players_room_metatiles.bin"

floating_section
TilesetPlayersRoomColl::
INCLUDE "data/tilesets/players_room_collision.asm"

floating_section
TilesetForestColl::
INCLUDE "data/tilesets/forest_collision.asm"

floating_section
TilesetKantoGFX::
INCBIN "gfx/tilesets/kanto.2bpp.lz"

floating_section
TilesetCavernGFX::
INCBIN "gfx/tilesets/cavern.2bpp.lz"

floating_section
TilesetCavernMeta::
INCBIN "data/tilesets/cavern_metatiles.bin"

floating_section
TilesetCavernColl::
INCLUDE "data/tilesets/cavern_collision.asm"

floating_section
TilesetCemeteryGFX::
INCBIN "gfx/tilesets/cemetery.2bpp.lz"

floating_section
TilesetCemeteryMeta::
INCBIN "data/tilesets/cemetery_metatiles.bin"

floating_section
TilesetCemeteryColl::
INCLUDE "data/tilesets/cemetery_collision.asm"

floating_section
TilesetClubGFX::
INCBIN "gfx/tilesets/club.2bpp.lz"

floating_section
TilesetClubMeta::
INCBIN "data/tilesets/club_metatiles.bin"

floating_section
TilesetClubColl::
INCLUDE "data/tilesets/club_collision.asm"

floating_section
TilesetFacilityKantoGFX::
INCBIN "gfx/tilesets/facility_kanto.2bpp.lz"

floating_section
TilesetFacilityKantoMeta::
INCBIN "data/tilesets/facility_kanto_metatiles.bin"

floating_section
TilesetFacilityKantoColl::
INCLUDE "data/tilesets/facility_kanto_collision.asm"

floating_section
TilesetGymGFX::
INCBIN "gfx/tilesets/gym.2bpp.lz"

floating_section
TilesetGymMeta::
INCBIN "data/tilesets/gym_metatiles.bin"

floating_section
TilesetGymColl::
INCLUDE "data/tilesets/gym_collision.asm"

floating_section
TilesetHouseKantoGFX::
INCBIN "gfx/tilesets/house_kanto.2bpp.lz"

floating_section
TilesetHouseKantoMeta::
INCBIN "data/tilesets/house_kanto_metatiles.bin"

floating_section
TilesetHouseKantoColl::
INCLUDE "data/tilesets/house_kanto_collision.asm"

floating_section
TilesetInteriorGFX::
INCBIN "gfx/tilesets/interior.2bpp.lz"

floating_section
TilesetInteriorMeta::
INCBIN "data/tilesets/interior_metatiles.bin"

floating_section
TilesetInteriorColl::
INCLUDE "data/tilesets/interior_collision.asm"

floating_section
TilesetLabKantoGFX::
INCBIN "gfx/tilesets/lab_kanto.2bpp.lz"

floating_section
TilesetLabKantoMeta::
INCBIN "data/tilesets/lab_kanto_metatiles.bin"

floating_section
TilesetLabKantoColl::
INCLUDE "data/tilesets/lab_kanto_collision.asm"

floating_section
TilesetLobbyGFX::
INCBIN "gfx/tilesets/lobby.2bpp.lz"

floating_section
TilesetLobbyMeta::
INCBIN "data/tilesets/lobby_metatiles.bin"

floating_section
TilesetLobbyColl::
INCLUDE "data/tilesets/lobby_collision.asm"

floating_section
TilesetMuseumGFX::
INCBIN "gfx/tilesets/museum.2bpp.lz"

floating_section
TilesetMuseumMeta::
INCBIN "data/tilesets/museum_metatiles.bin"

floating_section
TilesetMuseumColl::
INCLUDE "data/tilesets/museum_collision.asm"

floating_section
TilesetPlateauGFX::
INCBIN "gfx/tilesets/plateau.2bpp.lz"

floating_section
TilesetPlateauMeta::
INCBIN "data/tilesets/plateau_metatiles.bin"

floating_section
TilesetPlateauColl::
INCLUDE "data/tilesets/plateau_collision.asm"

floating_section
TilesetPokecenterKantoGFX::
INCBIN "gfx/tilesets/pokecenter_kanto.2bpp.lz"

floating_section
TilesetPokecenterKantoMeta::
INCBIN "data/tilesets/pokecenter_kanto_metatiles.bin"

floating_section
TilesetPokecenterKantoColl::
INCLUDE "data/tilesets/pokecenter_kanto_collision.asm"

floating_section
TilesetRedsHouseGFX::
INCBIN "gfx/tilesets/reds_house.2bpp.lz"

floating_section
TilesetRedsHouseMeta::
INCBIN "data/tilesets/reds_house_metatiles.bin"

floating_section
TilesetRedsHouseColl::
INCLUDE "data/tilesets/reds_house_collision.asm"

floating_section
TilesetSafariGFX::
INCBIN "gfx/tilesets/safari.2bpp.lz"

floating_section
TilesetSafariMeta::
INCBIN "data/tilesets/safari_metatiles.bin"

floating_section
TilesetSafariColl::
INCLUDE "data/tilesets/safari_collision.asm"

floating_section
TilesetShipGFX::
INCBIN "gfx/tilesets/ship.2bpp.lz"

floating_section
TilesetShipMeta::
INCBIN "data/tilesets/ship_metatiles.bin"

floating_section
TilesetShipColl::
INCLUDE "data/tilesets/ship_collision.asm"

floating_section
TilesetShipPortGFX::
INCBIN "gfx/tilesets/ship_port.2bpp.lz"

floating_section
TilesetShipPortMeta::
INCBIN "data/tilesets/ship_port_metatiles.bin"

floating_section
TilesetShipPortColl::
INCLUDE "data/tilesets/ship_port_collision.asm"

floating_section
TilesetTunnelGFX::
INCBIN "gfx/tilesets/tunnel.2bpp.lz"

floating_section
TilesetTunnelMeta::
INCBIN "data/tilesets/tunnel_metatiles.bin"

floating_section
TilesetTunnelColl::
INCLUDE "data/tilesets/tunnel_collision.asm"
