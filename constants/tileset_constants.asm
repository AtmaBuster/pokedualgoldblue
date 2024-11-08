; Tilesets indexes (see data/tilesets.asm)
	const_def 1
	const TILESET_JOHTO                ; 01
	const TILESET_JOHTO_MODERN         ; 02
	const TILESET_KANTO                ; 03
	const TILESET_HOUSE                ; 04
	const TILESET_PLAYERS_HOUSE        ; 05
	const TILESET_POKECENTER           ; 06
	const TILESET_GATE                 ; 07
	const TILESET_PORT                 ; 08
	const TILESET_LAB                  ; 09
	const TILESET_FACILITY             ; 0a
	const TILESET_MART                 ; 0b
	const TILESET_MANSION              ; 0c
	const TILESET_GAME_CORNER          ; 0d
	const TILESET_ELITE_FOUR_ROOM      ; 0e
	const TILESET_TRADITIONAL_HOUSE    ; 0f
	const TILESET_TRAIN_STATION        ; 10
	const TILESET_CHAMPIONS_ROOM       ; 11
	const TILESET_LIGHTHOUSE           ; 12
	const TILESET_PLAYERS_ROOM         ; 13
	const TILESET_TOWER                ; 14
	const TILESET_CAVE                 ; 15
	const TILESET_PARK                 ; 16
	const TILESET_RUINS_OF_ALPH        ; 17
	const TILESET_RADIO_TOWER          ; 18
	const TILESET_UNDERGROUND          ; 19
	const TILESET_ICE_PATH             ; 1a
	const TILESET_DARK_CAVE            ; 1b
	const TILESET_FOREST               ; 1c
	const TILESET_CAVERN               ; 1d
	const TILESET_CEMETERY             ; 1e
	const TILESET_CLUB                 ; 1f
	const TILESET_FACILITY_KANTO       ; 20
	const TILESET_GYM                  ; 21
	const TILESET_HOUSE_KANTO          ; 22
	const TILESET_INTERIOR             ; 23
	const TILESET_LAB_KANTO            ; 24
	const TILESET_LOBBY                ; 25
	const TILESET_MUSEUM               ; 26
	const TILESET_PLATEAU              ; 27
	const TILESET_POKECENTER_KANTO     ; 28
	const TILESET_REDS_HOUSE           ; 29
	const TILESET_SAFARI               ; 2a
	const TILESET_SHIP                 ; 2b
	const TILESET_SHIP_PORT            ; 2c
NUM_TILESETS EQU const_value - 1

; wTileset struct size
TILESET_LENGTH EQU 15

; roof length (see gfx/tilesets/roofs)
ROOF_LENGTH EQU 9

; bg palette values (see gfx/tilesets/*_palette_map.asm)
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7
