tilepal: MACRO
; used in gfx/tilesets/*_palette_map.asm
; vram bank, pals
x = \1 << OAM_TILE_BANK
rept (_NARG - 1) / 2
	dn (x | PAL_BG_\3), (x | PAL_BG_\2)
	shift 2
endr
ENDM

TilesetKantoPalMap:
INCLUDE "gfx/tilesets/kanto_palette_map.asm"

Tileset0PalMap:
TilesetJohtoPalMap:
INCLUDE "gfx/tilesets/johto_palette_map.asm"

TilesetJohtoModernPalMap:
INCLUDE "gfx/tilesets/johto_modern_palette_map.asm"

TilesetHousePalMap:
INCLUDE "gfx/tilesets/house_palette_map.asm"

TilesetPlayersHousePalMap:
INCLUDE "gfx/tilesets/players_house_palette_map.asm"

TilesetPokecenterPalMap:
INCLUDE "gfx/tilesets/pokecenter_palette_map.asm"

TilesetGatePalMap:
INCLUDE "gfx/tilesets/gate_palette_map.asm"

TilesetPortPalMap:
INCLUDE "gfx/tilesets/port_palette_map.asm"

TilesetLabPalMap:
INCLUDE "gfx/tilesets/lab_palette_map.asm"

TilesetFacilityPalMap:
INCLUDE "gfx/tilesets/facility_palette_map.asm"

TilesetMartPalMap:
INCLUDE "gfx/tilesets/mart_palette_map.asm"

TilesetMansionPalMap:
INCLUDE "gfx/tilesets/mansion_palette_map.asm"

TilesetGameCornerPalMap:
INCLUDE "gfx/tilesets/game_corner_palette_map.asm"

TilesetEliteFourRoomPalMap:
INCLUDE "gfx/tilesets/elite_four_room_palette_map.asm"

TilesetTraditionalHousePalMap:
INCLUDE "gfx/tilesets/traditional_house_palette_map.asm"

TilesetTowerPalMap:
INCLUDE "gfx/tilesets/tower_palette_map.asm"

TilesetCavePalMap:
TilesetDarkCavePalMap:
INCLUDE "gfx/tilesets/cave_palette_map.asm"

TilesetParkPalMap:
INCLUDE "gfx/tilesets/park_palette_map.asm"

TilesetRuinsOfAlphPalMap:
INCLUDE "gfx/tilesets/ruins_of_alph_palette_map.asm"

TilesetRadioTowerPalMap:
INCLUDE "gfx/tilesets/radio_tower_palette_map.asm"

TilesetTrainStationPalMap:
INCLUDE "gfx/tilesets/train_station_palette_map.asm"

TilesetUndergroundPalMap:
INCLUDE "gfx/tilesets/underground_palette_map.asm"

TilesetChampionsRoomPalMap:
INCLUDE "gfx/tilesets/champions_room_palette_map.asm"

TilesetLighthousePalMap:
INCLUDE "gfx/tilesets/lighthouse_palette_map.asm"

TilesetPlayersRoomPalMap:
INCLUDE "gfx/tilesets/players_room_palette_map.asm"

TilesetMuseumPalMap:
INCLUDE "gfx/tilesets/museum_palette_map.asm"

TilesetIcePathPalMap:
INCLUDE "gfx/tilesets/ice_path_palette_map.asm"

TilesetForestPalMap:
INCLUDE "gfx/tilesets/forest_palette_map.asm"

TilesetCavernPalMap:
INCLUDE "gfx/tilesets/cavern_palette_map.asm"

TilesetCemeteryPalMap:
INCLUDE "gfx/tilesets/cemetery_palette_map.asm"

TilesetClubPalMap:
INCLUDE "gfx/tilesets/club_palette_map.asm"

TilesetFacilityKantoPalMap:
INCLUDE "gfx/tilesets/facility_kanto_palette_map.asm"

TilesetGymPalMap:
INCLUDE "gfx/tilesets/gym_palette_map.asm"

TilesetHouseKantoPalMap:
INCLUDE "gfx/tilesets/house_kanto_palette_map.asm"

TilesetInteriorPalMap:
INCLUDE "gfx/tilesets/interior_palette_map.asm"

TilesetLabKantoPalMap:
INCLUDE "gfx/tilesets/lab_kanto_palette_map.asm"

TilesetLobbyPalMap:
INCLUDE "gfx/tilesets/lobby_palette_map.asm"

TilesetPlateauPalMap:
INCLUDE "gfx/tilesets/plateau_palette_map.asm"

TilesetPokecenterKantoPalMap:
INCLUDE "gfx/tilesets/pokecenter_kanto_palette_map.asm"

TilesetRedsHousePalMap:
INCLUDE "gfx/tilesets/reds_house_palette_map.asm"

TilesetSafariPalMap:
INCLUDE "gfx/tilesets/safari_palette_map.asm"

TilesetShipPalMap:
INCLUDE "gfx/tilesets/ship_palette_map.asm"

TilesetShipPortPalMap:
INCLUDE "gfx/tilesets/ship_port_palette_map.asm"

MapGroupPalettes:
; entries correspond to MAPGROUP_* constants
rept NUM_MAP_GROUPS
	db PAL_BG_ROOF
endr
