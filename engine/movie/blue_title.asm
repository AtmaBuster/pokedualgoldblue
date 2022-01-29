PUSHS
SECTION "Blue Title", ROMX

BlueTitleScreen:
	call ClearBGPalettes
	xor a
	ld [wTimeOfDayPal], a
	call ClearTilemap
	call DisableLCD
	call ClearSprites

	xor a
	ldh [hBGMapMode], a

	ldh [hMapAnims], a
	ldh [hSCX], a
	ld a, $40
	ldh [hSCY], a
	ld a, $90
	ldh [hWY], a

	ld hl, vBGMap0
	ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	ld a, " "
	call ByteFill

	ld hl, NintendoCopyrightLogoGraphics
	ld de, vTiles2 tile $41
	ld bc, 5 tiles
	call CopyBytes

	ld hl, GamefreakLogoGraphics
	ld de, vTiles2 tile $46
	ld bc, 9 tiles
	call CopyBytes

	ld hl, PokemonLogoGraphics
	ld de, vTiles1
	ld bc, $60 tiles
	call CopyBytes

	ld hl, PokemonLogoGraphics tile $60
	ld de, vTiles2 tile $31
	ld bc, $10 tiles
	call CopyBytes

	ld hl, Version_GFX
	ld de, vTiles2 tile $61
	ld bc, 8 tiles
	call CopyBytes

	call BlueTitle_PlacePokemonLogo
	call BlueTitle_DrawPlayer
	call BlueTitle_PlaceCopyright

	call BlueTitle_CopyBGMap0
	call BlueTitle_CopyBGMap1

	ld a, SQUIRTLE
	ld [wTitleMonSpecies], a
	call BlueTitle_LoadMonSprite

	ld a, $40
	ldh [hWY], a

	call EnableLCD

	call BlueTitle_WaitBGMap_2

	ld b, SCGB_BETA_TITLE_SCREEN
	call GetSGBLayout

	ld hl, rLCDC
	set rLCDC_WINDOW_ENABLE, [hl]

	call BlueTitle_DropLogo

	ld a, HIGH(vBGMap0)
	ldh [hBGMapAddress + 1], a

	ld c, 36
	call DelayFrames
	ld de, SFX_BLUE_INTRO_WHOOSH
	call PlaySFX

	call BlueIntro_PutVersion
	call BlueIntro_ScrollVersion

	call WaitSFX
	ld de, MUSIC_RBY_TITLE_SCREEN
	call PlayMusic

	hlcoord 0, 10
	ld bc, SCREEN_WIDTH * 7
	ld a, " "
	call ByteFill
	call BlueTitle_WaitBGMap_1

.loop
	ld c, 200
	call BlueTitle_CheckUserInterrupt
	jr c, .finished

	call BlueTitle_ScrollMonIn
	call BlueTitle_AnimateBall
	call BlueTitle_PickNewMon

	jr .loop

.finished
	ld a, [wTitleMonSpecies]
	call GetCryIndex
	jr c, .skip_cry
	ld e, c
	ld d, b
	call PlayCry
	call WaitSFX
.skip_cry
	ld hl, rLCDC
	res rLCDC_WINDOW_ENABLE, [hl]
	ret

BlueTitle_PlacePokemonLogo:
	hlcoord 2, 1
	ld a, $80
	ld de, SCREEN_WIDTH
	ld c, 6
.loop
	ld b, $10
	push hl
.row_loop
	ld [hli], a
	inc a
	dec b
	jr nz, .row_loop
	pop hl
	add hl, de
	dec c
	jr nz, .loop

; last row
	hlcoord 2, 7
	ld a, $31
	ld b, $10
.last_row_loop
	ld [hli], a
	inc a
	dec b
	jr nz, .last_row_loop
	ret

BlueTitle_DrawPlayer:
	ld hl, PlayerCharacterTitleGraphics
	ld de, vTiles0
	ld bc, PlayerCharacterTitleGraphics.End - PlayerCharacterTitleGraphics
	call CopyBytes

; OAM
	xor a
	ld [wPlayerCharacterOAMTile], a
	ld hl, wVirtualOAM
	lb de, $60, $5a
	ld b, 7
.loop
	push de
	ld c, 5
.innerloop
	ld a, d
	ld [hli], a ; Y
	ld a, e
	ld [hli], a ; X
	add 8
	ld e, a
	ld a, [wPlayerCharacterOAMTile]
	ld [hli], a
	inc a
	ld [wPlayerCharacterOAMTile], a
	inc hl
	dec c
	jr nz, .innerloop
	pop de
	ld a, 8
	add d
	ld d, a
	dec b
	jr nz, .loop
; put the ball in the player's hand
	ld hl, wVirtualOAMSprite10YCoord
	ld a, $74
	ld [hl], a
	ret

BlueTitle_PlaceCopyright:
	hlcoord 2, 17
	ld de, .copyright_tiles
	ld b, $10
.loop
	ld a, [de]
	ld [hli], a
	inc de
	dec b
	jr nz, .loop
	ret

.copyright_tiles
	db $41,$42,$43,$42,$44,$42,$45,$46,$47,$48,$49,$4A,$4B,$4C,$4D,$4E ; ©'95.'96.'98 GAME FREAK inc.

BlueTitle_DropLogo:
	ld bc, hSCY
	ld hl, .YScrolls
.loop
	ld a, [hli]
	and a
	ret z
	ld d, a
	cp -3
	jr nz, .skip_sound
	push de
	ld de, SFX_BLUE_INTRO_CRASH
	call PlaySFX
	pop de
.skip_sound
	ld a, [hli]
	ld e, a
	call .ScrollLogo
	jr .loop

.YScrolls:
	db -4, 16
	db  3,  4
	db -3,  4
	db  2,  2
	db -2,  2
	db  1,  2
	db -1,  2
	db 0 ; end

.ScrollLogo:
	call DelayFrame
	ld a, [bc]
	add d
	ld [bc], a
	dec e
	jr nz, .ScrollLogo
	ret

BlueIntro_PutVersion:
	hlcoord 7, 8
	ld de, .Text
	jp PlaceString

.Text:
	db $61,$62,$63,$64,$65,$66,$67,$68,"@" ; "Blue Version"

BlueIntro_ScrollVersion:
	ld a, SCREEN_HEIGHT_PX
	ldh [hWY], a
	ld d, 144
.loop
	ld h, d
	ld l, 64
	call .Scroll
	ld h, 0
	ld l, 80
	call .Scroll
	ld a, d
	add 4
	ld d, a
	and a
	jr nz, .loop
	ret

.Scroll:
.wait1
	ldh a, [rLY]
	cp l
	jr nz, .wait1

	ld a, h
	ldh [rSCX], a

.wait2
	ldh a, [rLY]
	cp h
	jr z, .wait2
	ret

BlueTitle_ScrollMonIn:
	ld d, 0 ; scroll in
	call BlueTtile_Scroll
	xor a
	ldh [hWY], a
	ret

BlueTitle_AnimateBall:
	ld a, [wTitleMonSpecies]
	cp BULBASAUR
	jr z, .ok
	cp CHARMANDER
	jr z, .ok
	cp SQUIRTLE
	ret nz
.ok
	ld e, 1 ; animte ball
	ld bc, BlueTitle_WaitBall
	ld d, 0
	jp _TitleScroll

BlueTitle_PickNewMon:
.loop
	call Random
	and $f
	ld c, a
	ld b, 0
	ld hl, BlueTitle_TitleMons
	add hl, bc
	ld a, [hl]
	ld hl, wTitleMonSpecies
	cp [hl]
	jr z, .loop

	ld [hl], a
	call BlueTitle_ReloadMonSprite

	ld a, $90
	ldh [hWY], a
	ld d, 1 ; scroll out
; fallthrough

BlueTtile_Scroll:
	ld a, d
	ld bc, BlueTitle_ScrollIn
	ld d, $88
	ld e, 0
	and a
	jr nz, .ok
	ld bc, BlueTitle_ScrollOut
	ld d, $00
	ld e, 0
.ok
_TitleScroll:
	ld a, [bc]
	and a
	ret z

	inc bc
	push bc

	ld b, a
	and $f
	ld c, a
	ld a, b
	and $f0
	swap a
	ld b, a

.loop
	ld h, d
	ld l, $48
	call .ScrollBetween

	ld h, $00
	ld l, $88
	call .ScrollBetween

	ld a, d
	add b
	ld d, a

	call BlueTitle_GetBallY
	dec c
	jr nz, .loop

	pop bc
	jr _TitleScroll

.ScrollBetween:
.wait
	ldh a, [rLY]
	cp l
	jr nz, .wait

	ld a, h
	ldh [rSCX], a

.wait2
	ldh a, [rLY]
	cp h
	jr z, .wait2
	ret

BlueTitle_GetBallY:
	push de
	push hl
	xor a
	ld d, a
	ld hl, BlueTitle_BallYTable
	add hl, de
	ld a, [hl]
	pop hl
	pop de
	and a
	ret z
	ld [wVirtualOAMSprite10YCoord], a
	inc e
	ret

BlueTitle_WaitBall:
	db $05, $05, 0
BlueTitle_ScrollIn:
	db $a2, $94, $84, $63, $52, $31, $11, 0
BlueTitle_ScrollOut:
	db $12, $22, $32, $42, $52, $62, $83, $93, 0

BlueTitle_BallYTable:
	db 0, $71, $6f, $6e, $6d, $6c, $6d, $6e, $71, $74, 0

BlueTitle_ReloadMonSprite:
	ld [wCurPartySpecies], a
	ld de, vTiles2
	predef GetMonFrontpic
	ret

BlueTitle_LoadMonSprite:
	ld [wCurPartySpecies], a
	xor a
	ld [wBoxAlignment], a
	hlcoord 5, 10
	jp _PrepMonFrontpic

BlueTitle_CopyBGMap0:
	ld hl, vBGMap0
	jr BlueTitle_CopyBGMap

BlueTitle_CopyBGMap1:
	ld hl, vBGMap1
BlueTitle_CopyBGMap:
	ld a, h
	ldh [hBGMapAddress + 1], a
	ld a, l
	ldh [hBGMapAddress], a
	ld de, wTilemap
	lb bc, SCREEN_WIDTH, SCREEN_HEIGHT
.loop_y
	push bc
	push hl
.loop_x
	ld a, [de]
	inc de
	ld [hli], a
	dec b
	jr nz, .loop_x
	pop hl
	ld bc, BG_MAP_WIDTH
	add hl, bc
	pop bc
	dec c
	jr nz, .loop_y
	ret

BlueTitle_WaitBGMap_1:
	ld a, HIGH(vBGMap1)
	ldh [hBGMapAddress + 1], a
	xor a
	ldh [hBGMapAddress], a
	jp WaitBGMap

BlueTitle_WaitBGMap_2:
	ld a, HIGH(vBGMap0 + $300)
	ldh [hBGMapAddress + 1], a
	ld a, LOW(vBGMap0 + $300)
	ldh [hBGMapAddress], a
	jp WaitBGMap

BlueTitle_CheckUserInterrupt:
.loop
	call .Delay
	ret c
	dec c
	jr nz, .loop
	ret

.Delay:
	call DelayFrame
	call JoyTextDelay
	ldh a, [hJoyLast]
	and BUTTONS
	ret z
	scf
	ret

NintendoCopyrightLogoGraphics: INCBIN "gfx/title/blue/copyright.2bpp"
GamefreakLogoGraphics:         INCBIN "gfx/title/blue/gamefreak_inc.2bpp"
PokemonLogoGraphics:           INCBIN "gfx/title/blue/pokemon_logo.2bpp"
Version_GFX:                   INCBIN "gfx/title/blue/version.2bpp"
PlayerCharacterTitleGraphics:  INCBIN "gfx/title/blue/player.2bpp"
.End:

BlueTitle_TitleMons:
	db SQUIRTLE
	db CHARMANDER
	db BULBASAUR
	db MANKEY
	db HITMONLEE
	db VULPIX
	db CHANSEY
	db AERODACTYL
	db JOLTEON
	db SNORLAX
	db GLOOM
	db POLIWAG
	db DODUO
	db PORYGON
	db GENGAR
	db RAICHU

POPS
