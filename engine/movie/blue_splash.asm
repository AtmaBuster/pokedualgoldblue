BlueIntro_CopyVideoData::
	ld a, [hBGMapMode]
	push af
	push bc
	ld a, 1
	ldh [hBGMapMode], a
	ld c, 3
	call DelayFrames
	pop bc
	pop af
	ldh [hBGMapMode], a
	ret

PlayShootingStar:
	call DisableLCD
	call BlueIntro_BlackBars
	call BlueIntro_LoadGraphics
	call EnableLCD
	ld hl, rLCDC
	res 5, [hl]
	ld c, 64
	call DelayFrames
	call AnimateShootingStar
	push af
	pop af
	jr c, .next ; skip the delay if the user interrupted the animation
	ld c, 40
	call DelayFrames
.next
	ret

LoadShootingStarGraphics:
	ld a, $f9
	ldh [rOBP0], a
	ld a, $a4
	ldh [rOBP1], a
	ld hl, AnimationTileset2 tile 3 ; star tile (top left quadrant)
	ld bc, 1 tiles
	ld de, vTiles1 tile $20
	call CopyBytes
	ld hl, AnimationTileset2 tile 19 ; star tile (bottom left quadrant)
	ld bc, 1 tiles
	ld de, vTiles1 tile $21
	call CopyBytes
	ld hl, FallingStar
	ld bc, 1 tiles
	ld de, vTiles1 tile $22
	call CopyBytes
	ld hl, GameFreakLogoOAMData
	ld de, wVirtualOAM + $60
	ld bc, GameFreakLogoOAMData.End - GameFreakLogoOAMData
	call CopyBytes
	ld hl, GameFreakShootingStarOAMData
	ld de, wVirtualOAM
	ld bc, GameFreakShootingStarOAMData.End - GameFreakShootingStarOAMData
	jp CopyBytes

AnimateShootingStar:
	ld de, SFX_SHOOTING_STAR
	call PlaySFX

; Move the big star down and left across the screen.
	ld hl, wVirtualOAM
	lb bc, $a0, $4
.bigStarLoop
	push hl
	push bc
.bigStarInnerLoop
	ld a, [hl] ; Y
	add 4
	ld [hli], a
	ld a, [hl] ; X
	add -4
	ld [hli], a
	inc hl
	inc hl
	dec c
	jr nz, .bigStarInnerLoop
	ld c, 1
	call BlueIntro_CheckUserInterrupt
	pop bc
	pop hl
	ret c
	ld a, [hl]
	cp 80
	jr nz, .next
	jr .bigStarLoop
.next
	cp b
	jr nz, .bigStarLoop

; Clear big star OAM.
	ld hl, wVirtualOAM
	ld c, 4
	ld de, 4
.clearOAMLoop
	ld [hl], 160
	add hl, de
	dec c
	jr nz, .clearOAMLoop

; Make Gamefreak logo flash.
	ld b, 3
.flashLogoLoop
	ld hl, rOBP0
	rrc [hl]
	rrc [hl]
	ld c, 10
	call BlueIntro_CheckUserInterrupt
	ret c
	dec b
	jr nz, .flashLogoLoop

; Copy 24 instances of the small stars OAM data.
; Note that their coordinates put them off-screen.
	ld de, wVirtualOAM
	ld a, 24
.initSmallStarsOAMLoop
	push af
	ld hl, SmallStarsOAM
	ld bc, SmallStarsOAMEnd - SmallStarsOAM
	call CopyBytes
	pop af
	dec a
	jr nz, .initSmallStarsOAMLoop

; Animate the small stars falling from the Gamefreak logo.
	xor a
	ld [wMoveDownSmallStarsOAMCount], a
	ld hl, SmallStarsWaveCoordsPointerTable
	ld c, 6
.smallStarsLoop
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push bc
	push hl
	ld hl, wVirtualOAM + $50
	ld c, 4
.smallStarsInnerLoop ; introduce new wave of 4 small stars OAM entries
	ld a, [de]
	cp -1
	jr z, .next2
	ld [hli], a ; Y
	inc de
	ld a, [de]
	ld [hli], a ; X
	inc de
	inc hl
	inc hl
	dec c
	jr nz, .smallStarsInnerLoop
	ld a, [wMoveDownSmallStarsOAMCount]
	cp 24
	jr z, .next2
	add 6 ; should be 4, but the extra 2 aren't visible on screen
	ld [wMoveDownSmallStarsOAMCount], a
.next2
	call MoveDownSmallStars
	push af

; shift the existing OAM entries down to make room for the next wave
	ld hl, wVirtualOAM + $10
	ld de, wVirtualOAM
	ld bc, $50
	call CopyBytes

	pop af
	pop hl
	pop bc
	ret c
	dec c
	jr nz, .smallStarsLoop
	and a
	ret

SmallStarsOAM:
	dbsprite  0,  0,  0,  0, $A2, PRIORITY | OBP_NUM
SmallStarsOAMEnd:

SmallStarsWaveCoordsPointerTable:
	dw SmallStarsWave1Coords
	dw SmallStarsWave2Coords
	dw SmallStarsWave3Coords
	dw SmallStarsWave4Coords
	dw SmallStarsEmptyWave
	dw SmallStarsEmptyWave

; The stars that fall from the Gamefreak logo come in 4 waves of 4 OAM entries.
; These arrays contain the Y and X coordinates of each OAM entry.

SmallStarsWave1Coords:
	db $68, $30
	db $68, $40
	db $68, $58
	db $68, $78
SmallStarsWave2Coords:
	db $68, $38
	db $68, $48
	db $68, $60
	db $68, $70
SmallStarsWave3Coords:
	db $68, $34
	db $68, $4C
	db $68, $54
	db $68, $64
SmallStarsWave4Coords:
	db $68, $3C
	db $68, $5C
	db $68, $6C
	db $68, $74
SmallStarsEmptyWave:
	db -1 ; end

MoveDownSmallStars:
	ld b, 8
.loop
	ld hl, wVirtualOAM + $5c
	ld a, [wMoveDownSmallStarsOAMCount]
	ld de, -4
	ld c, a
.innerLoop
	inc [hl] ; Y
	add hl, de
	dec c
	jr nz, .innerLoop
; Toggle the palette so that the lower star in the small stars tile blinks in
; and out.
	ldh a, [rOBP1]
	xor %10100000
	ldh [rOBP1], a

	ld c, 3
	call BlueIntro_CheckUserInterrupt
	ret c
	dec b
	jr nz, .loop
	ret

GameFreakLogoOAMData:
	dbsprite 10,  9,  0,  0, $8d, 0
	dbsprite 11,  9,  0,  0, $8e, 0
	dbsprite 10, 10,  0,  0, $8f, 0
	dbsprite 11, 10,  0,  0, $90, 0
	dbsprite 10, 11,  0,  0, $91, 0
	dbsprite 11, 11,  0,  0, $92, 0
	dbsprite  6, 12,  0,  0, $80, 0
	dbsprite  7, 12,  0,  0, $81, 0
	dbsprite  8, 12,  0,  0, $82, 0
	dbsprite  9, 12,  0,  0, $83, 0
	dbsprite 10, 12,  0,  0, $93, 0
	dbsprite 11, 12,  0,  0, $84, 0
	dbsprite 12, 12,  0,  0, $85, 0
	dbsprite 13, 12,  0,  0, $83, 0
	dbsprite 14, 12,  0,  0, $81, 0
	dbsprite 15, 12,  0,  0, $86, 0
.End:

GameFreakShootingStarOAMData:
	dbsprite 20,  0,  0,  0, $a0, $0
	dbsprite 21,  0,  0,  0, $a0, X_FLIP
	dbsprite 20,  1,  0,  0, $a1, $0
	dbsprite 21,  1,  0,  0, $a1, X_FLIP
.End:

FallingStar:
	INCBIN "gfx/splash/blue/falling_star.2bpp"
.End:

GameFreakIntro:
	INCBIN "gfx/splash/blue/gamefreak_presents.2bpp"
	INCBIN "gfx/splash/blue/gamefreak_logo.2bpp"
	ds 16, $00 ; blank tile
.End:

AnimationTileset2:
	INCBIN "gfx/battle_anims/rby_attack_anim_2.2bpp"
