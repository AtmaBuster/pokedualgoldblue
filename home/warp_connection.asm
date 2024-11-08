HandleNewMap::
	call ClearUnusedMapBuffer
	call ResetMapBufferEventFlags
	call ResetFlashIfOutOfCave
	call GetCurrentMapSceneID
	call ResetBikeFlags
	ld a, MAPCALLBACK_NEWMAP
	call RunMapCallback
HandleContinueMap::
	xor a
	ld [wStoneTableAddress], a
	ld [wStoneTableAddress+1], a
	ld a, MAPCALLBACK_STONETABLE
	call RunMapCallback
	call GetMapTimeOfDay
	ld [wMapTimeOfDay], a
	ret

LoadMapTimeOfDay::
	ld a, $1
	ld [wSpriteUpdatesEnabled], a
	farcall ReplaceTimeOfDayPals
	farcall UpdateTimeOfDayPal
	call OverworldTextModeSwitch
	call .ClearBGMap
	call .PushAttrmap
	ret

.ClearBGMap:
	ld a, HIGH(vBGMap0)
	ld [wBGMapAnchor + 1], a
	xor a ; LOW(vBGMap0)
	ld [wBGMapAnchor], a
	ldh [hSCY], a
	ldh [hSCX], a
	farcall ApplyBGMapAnchorToObjects

	ld a, "■"
	ld bc, vBGMap1 - vBGMap0
	hlbgcoord 0, 0
	call ByteFill
	ret

.PushAttrmap:
	decoord 0, 0
	call .copy
	ldh a, [hCGB]
	and a
	ret z

	decoord 0, 0, wAttrmap
	ld a, $1
	ldh [rVBK], a
.copy
	hlbgcoord 0, 0
	ld c, SCREEN_WIDTH
	ld b, SCREEN_HEIGHT
.row
	push bc
.column
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .column
	ld bc, BG_MAP_WIDTH - SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ld a, $0
	ldh [rVBK], a
	ret

LoadMapGraphics::
	call LoadMapTileset
	call LoadTilesetGFX
	xor a
	ldh [hMapAnims], a
	xor a
	ldh [hTileAnimFrame], a
	farcall RefreshSprites
	call LoadFontsExtra
	ret

LoadMapPalettes::
	ld b, $9
	jp GetSGBLayout

RefreshMapSprites::
	call ClearSprites
	call ResetBGWindow
	call GetMovementPermissions
	farcall RefreshPlayerSprite
	farcall CheckUpdatePlayerSprite
	ld hl, wPlayerSpriteSetupFlags
	bit PLAYERSPRITESETUP_SKIP_RELOAD_GFX_F, [hl]
	jr nz, .skip
	ld hl, wVramState
	set 0, [hl]
	call SafeUpdateSprites
.skip
	xor a
	ld [wPlayerSpriteSetupFlags], a
	ret

CheckMovingOffEdgeOfMap::
	ld a, [wPlayerStepDirection]
	cp STANDING
	ret z
	and a ; DOWN
	jr z, .down
	cp UP
	jr z, .up
	cp LEFT
	jr z, .left
	cp RIGHT
	jr z, .right
	and a
	ret

.down
	ld a, [wPlayerStandingMapY]
	sub 4
	ld b, a
	ld a, [wMapHeight]
	add a
	cp b
	jr z, .ok
	and a
	ret

.up
	ld a, [wPlayerStandingMapY]
	sub 4
	cp -1
	jr z, .ok
	and a
	ret

.left
	ld a, [wPlayerStandingMapX]
	sub 4
	cp -1
	jr z, .ok
	and a
	ret

.right
	ld a, [wPlayerStandingMapX]
	sub 4
	ld b, a
	ld a, [wMapWidth]
	add a
	cp b
	jr z, .ok
	and a
	ret

.ok
	scf
	ret

EnterMapConnection::
; Return carry if a connection has been entered.
	ld a, [wPlayerStepDirection]
	and a ; DOWN
	jp z, .south
	cp UP
	jp z, .north
	cp LEFT
	jp z, .west
	cp RIGHT
	jp z, .east
	ret

.west
	ld a, [wWestConnectedMapGroup]
	ld [wMapGroup], a
	ld a, [wWestConnectedMapNumber]
	ld [wMapNumber], a
	ld a, [wWestConnectionStripXOffset]
	ld [wXCoord], a
	ld a, [wWestConnectionStripYOffset]
	ld hl, wYCoord
	add [hl]
	ld [hl], a
	ld c, a
	ld hl, wWestConnectionWindow
	ld a, [hli]
	ld h, [hl]
	ld l, a
	srl c
	jr z, .skip_to_load
	ld a, [wWestConnectedMapWidth]
	add 6
	ld e, a
	ld d, 0

.loop
	add hl, de
	dec c
	jr nz, .loop

.skip_to_load
	ld a, l
	ld [wOverworldMapAnchor], a
	ld a, h
	ld [wOverworldMapAnchor + 1], a
	jp .done

.east
	ld a, [wEastConnectedMapGroup]
	ld [wMapGroup], a
	ld a, [wEastConnectedMapNumber]
	ld [wMapNumber], a
	ld a, [wEastConnectionStripXOffset]
	ld [wXCoord], a
	ld a, [wEastConnectionStripYOffset]
	ld hl, wYCoord
	add [hl]
	ld [hl], a
	ld c, a
	ld hl, wEastConnectionWindow
	ld a, [hli]
	ld h, [hl]
	ld l, a
	srl c
	jr z, .skip_to_load2
	ld a, [wEastConnectedMapWidth]
	add 6
	ld e, a
	ld d, 0

.loop2
	add hl, de
	dec c
	jr nz, .loop2

.skip_to_load2
	ld a, l
	ld [wOverworldMapAnchor], a
	ld a, h
	ld [wOverworldMapAnchor + 1], a
	jp .done

.north
	ld a, [wNorthConnectedMapGroup]
	ld [wMapGroup], a
	ld a, [wNorthConnectedMapNumber]
	ld [wMapNumber], a
	ld a, [wNorthConnectionStripYOffset]
	ld [wYCoord], a
	ld a, [wNorthConnectionStripXOffset]
	ld hl, wXCoord
	add [hl]
	ld [hl], a
	ld c, a
	ld hl, wNorthConnectionWindow
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld b, 0
	srl c
	add hl, bc
	ld a, l
	ld [wOverworldMapAnchor], a
	ld a, h
	ld [wOverworldMapAnchor + 1], a
	jp .done

.south
	ld a, [wSouthConnectedMapGroup]
	ld [wMapGroup], a
	ld a, [wSouthConnectedMapNumber]
	ld [wMapNumber], a
	ld a, [wSouthConnectionStripYOffset]
	ld [wYCoord], a
	ld a, [wSouthConnectionStripXOffset]
	ld hl, wXCoord
	add [hl]
	ld [hl], a
	ld c, a
	ld hl, wSouthConnectionWindow
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld b, 0
	srl c
	add hl, bc
	ld a, l
	ld [wOverworldMapAnchor], a
	ld a, h
	ld [wOverworldMapAnchor + 1], a
.done
	call GetSplitMapGroup
	scf
	ret

GetSplitMapGroup::
	push hl
	push bc
	push de

	ld hl, wMapGroup
	ld a, [hli]
	ld b, a
	assert wMapGroup + 1 == wMapNumber
	ld a, [hli]
	ld c, a
	assert wMapGroup + 2 == wYCoord
	ld a, [hli]
	ld e, a
	assert wMapGroup + 3 == wXCoord
	ld d, [hl]

	ld hl, SplitMapGroups
.loop
	ld a, [hli]
	and a
	jr z, .done
	cp b
	jr nz, .next5
	ld a, [hli]
	cp c
	jr nz, .next4
	ld a, [hli]
	dec a ; EAST_WEST?
	ld a, [wXCoord]
	jr z, .got_coord
	ld a, [wYCoord]
.got_coord
	cp [hl]
	jr c, .north_west
	inc hl
.north_west
	inc hl
	ld b, [hl]
.done
	ld a, b
	ld [wSplitMapGroup], a
	pop de
	pop bc
	pop hl
	ret

.next5
	inc hl
.next4
	inc hl
	inc hl
	inc hl
	inc hl
	jr .loop

INCLUDE "data/maps/split_groups.asm"

CheckWarpTile::
	call GetDestinationWarpNumber
	ret nc

	push bc
	farcall CheckDirectionalWarp
	pop bc
	ret nc

	call CopyWarpData
	scf
	ret

WarpCheck::
	call GetDestinationWarpNumber
	ret nc
	call CopyWarpData
	ret

GetDestinationWarpNumber::
	farcall CheckWarpCollision
	ret nc

	ldh a, [hROMBank]
	push af

	call SwitchToMapScriptsBank
	call .GetDestinationWarpNumber

	pop de
	ld a, d
	rst Bankswitch
	ret

.GetDestinationWarpNumber:
	ld a, [wPlayerStandingMapY]
	sub 4
	ld e, a
	ld a, [wPlayerStandingMapX]
	sub 4
	ld d, a
	ld a, [wCurMapWarpCount]
	and a
	ret z

	ld c, a
	ld hl, wCurMapWarpsPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
.loop
	push hl
	ld a, [hli]
	cp e
	jr nz, .next
	ld a, [hli]
	cp d
	jr nz, .next
	jr .found_warp

.next
	pop hl
	ld a, WARP_EVENT_SIZE
	add l
	ld l, a
	jr nc, .okay
	inc h

.okay
	dec c
	jr nz, .loop
	xor a
	ret

.found_warp
	pop hl
	call .IncreaseHLTwice
	ret nc ; never encountered

	ld a, [wCurMapWarpCount]
	inc a
	sub c
	ld c, a
	scf
	ret

.IncreaseHLTwice:
	inc hl
	inc hl
	scf
	ret

CopyWarpData::
	ldh a, [hROMBank]
	push af

	call SwitchToMapScriptsBank
	call .CopyWarpData

	pop af
	rst Bankswitch
	scf
	ret

.CopyWarpData:
	push bc
	ld hl, wCurMapWarpsPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, c
	dec a
	ld bc, WARP_EVENT_SIZE
	call AddNTimes
	ld bc, 2 ; warp number
	add hl, bc
	ld a, [hli]
	cp -1
	jr nz, .skip
	ld hl, wBackupWarpNumber
	ld a, [hli]

.skip
	pop bc
	ld [wNextWarp], a
	ld a, [hli]
	ld [wNextMapGroup], a
	ld a, [hli]
	ld [wNextMapNumber], a

	ld a, c
	ld [wPrevWarp], a
	ld a, [wMapGroup]
	ld [wPrevMapGroup], a
	ld a, [wMapNumber]
	ld [wPrevMapNumber], a
	scf
	ret

EnterMapWarp::
	call .SaveDigWarp
	call .SetSpawn
	ld a, [wNextWarp]
	ld [wWarpNumber], a
	ld a, [wNextMapGroup]
	ld [wMapGroup], a
	ld a, [wNextMapNumber]
	ld [wMapNumber], a
	ret

.SaveDigWarp::
	call GetMapEnvironment
	call CheckOutdoorMap
	ret nz
	ld a, [wNextMapGroup]
	ld b, a
	ld a, [wNextMapNumber]
	ld c, a
	call GetAnyMapEnvironment
	call CheckIndoorMap
	ret nz

; TIN_TOWER_ROOF is an outdoor map within an indoor map.
; Dig and Escape Rope should not take you to it.
	ld a, [wPrevMapGroup]
	cp GROUP_TIN_TOWER_ROOF
	jr nz, .not_tin_tower_roof
	ld a, [wPrevMapNumber]
	cp MAP_TIN_TOWER_ROOF
	ret z
.not_tin_tower_roof

	ld a, [wPrevWarp]
	ld [wDigWarpNumber], a
	ld a, [wPrevMapGroup]
	ld [wDigMapGroup], a
	ld a, [wPrevMapNumber]
	ld [wDigMapNumber], a
	ret

.SetSpawn:
	call GetMapEnvironment
	call CheckOutdoorMap
	ret nz
	ld a, [wNextMapGroup]
	ld b, a
	ld a, [wNextMapNumber]
	ld c, a
	call GetAnyMapEnvironment
	call CheckIndoorMap
	ret nz
	ld a, [wNextMapGroup]
	ld b, a
	ld a, [wNextMapNumber]
	ld c, a

; Respawn in Pokémon Centers.
	call GetAnyMapTileset
	ld a, c
	cp TILESET_POKECENTER
	jr z, .pokecenter
	cp TILESET_POKECENTER_KANTO
	ret nz
	call .check_kanto_pokecenter_map
	ret nc
.pokecenter
	ld a, [wPrevMapGroup]
	ld [wLastSpawnMapGroup], a
	ld a, [wPrevMapNumber]
	ld [wLastSpawnMapNumber], a
	ret

.check_kanto_pokecenter_map
	ld a, [wNextMapGroup]
	ld b, a
	ld a, [wNextMapNumber]
	ld c, a
	ld hl, .kanto_pokecenter_maps
.loop
	ld a, [hli]
	cp -1
	jr z, .not_pokecenter_map
	cp b
	jr nz, .next
	ld a, [hli]
	cp c
	jr nz, .loop
	scf
	ret

.next
	inc hl
	jr .loop

.not_pokecenter_map
	and a
	ret

.kanto_pokecenter_maps
	map_id VIRIDIAN_POKECENTER
	map_id PEWTER_POKECENTER
	map_id MT_MOON_POKECENTER
	map_id CERULEAN_POKECENTER
	map_id VERMILION_POKECENTER
	map_id ROCK_TUNNEL_POKECENTER
	map_id LAVENDER_POKECENTER
	map_id CELADON_POKECENTER
	map_id SAFFRON_POKECENTER
	map_id FUCHSIA_POKECENTER
	map_id CINNABAR_POKECENTER
	map_id INDIGO_PLATEAU_LOBBY
	db -1
