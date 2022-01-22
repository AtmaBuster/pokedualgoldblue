SECTION "Blue Intro", ROMX

	const_def -1
	const MOVE_JIGGLYPUFF_RIGHT
	const MOVE_GENGAR_RIGHT
	const MOVE_GENGAR_LEFT

ANIMATION_END EQU 80

BlueIntro:
	call .Init
.Loop:
	call .PlayFrame
	jr nc, .Loop
	ret

.Init:
	farcall ClearSpriteAnims
	xor a
	ld [wIntroJumptableIndex], a
	ldh [hBGMapMode], a
	ret

.PlayFrame:
	call JoyTextDelay
	ldh a, [hJoyLast]
	and BUTTONS
	jr nz, .Finish

; check done flag
	ld a, [wIntroJumptableIndex]
	bit 7, a
	jr nz, .Finish

	farcall PlaySpriteAnimations
	call BlueIntroSceneJumper
	call DelayFrame
	and a
	ret

.Finish:
	callfar ClearSpriteAnims
	call ClearSprites
	call DelayFrame
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ldh [hLCDCPointer], a
	ldh [hLYOverrideStart], a
	ldh [hLYOverrideEnd], a
	ld a, %11100100
	call DmgToCgbBGPals
	depixel 28, 28, 4, 4
	call DmgToCgbObjPals
	scf
	ret

BlueIntroSceneJumper:
	jumptable .scenes, wIntroJumptableIndex

.scenes
	dw BlueIntroScene1
	dw BlueIntroScene2
	dw BlueIntroScene3

BlueIntroScene1:
	call DisableLCD
	call BlueIntro_BlackBars
	call BlueIntro_LoadMonGraphics
	call EnableLCD

	ld hl, wIntroJumptableIndex
	inc [hl]
	ld de, MUSIC_RBY_INTRO_BATTLE
	call PlayMusic

	call WaitBGMap
	ret

BlueIntroScene2:
	ld de, BlueIntro_Gengar1Tilemap
	call BlueIntro_CopyTiles

	ld a, 0
	ld [wBaseCoordX], a
	ld a, 80
	ld [wBaseCoordY], a

	lb bc, 6, 6
	call BlueIntro_InitJigglypuffOAM

	lb de, 80 / 2, MOVE_JIGGLYPUFF_RIGHT
	call BlueIntro_MoveMon
	jp c, .Finish

	ld de, SFX_BLUE_INTRO_HIP
	call PlaySFX
	xor a
	ld [wIntroJigglypuffBaseTile], a
	ld de, BlueIntro_JigglypuffAnimation1
	call BlueIntro_AnimateJigglypuff
	jp c, .Finish

	ld de, SFX_BLUE_INTRO_HOP
	call PlaySFX
	ld de, BlueIntro_JigglypuffAnimation2
	call BlueIntro_AnimateJigglypuff
	jp c, .Finish
	ld c, 10
	call BlueIntro_CheckUserInterrupt
	jp c, .Finish

	ld de, SFX_BLUE_INTRO_HIP
	call PlaySFX
	xor a
	ld [wIntroJigglypuffBaseTile], a
	ld de, BlueIntro_JigglypuffAnimation1
	call BlueIntro_AnimateJigglypuff
	jp c, .Finish

	ld de, SFX_BLUE_INTRO_HOP
	call PlaySFX
	ld de, BlueIntro_JigglypuffAnimation2
	call BlueIntro_AnimateJigglypuff
	jp c, .Finish
	ld c, 30
	call BlueIntro_CheckUserInterrupt
	jp c, .Finish

	ld de, BlueIntro_Gengar2Tilemap
	call BlueIntro_CopyTiles
	ld de, SFX_BLUE_INTRO_RAISE
	call PlaySFX
	lb de, 8 / 2, MOVE_GENGAR_LEFT
	call BlueIntro_MoveMon
	jp c, .Finish
	ld c, 30
	call BlueIntro_CheckUserInterrupt
	jp c, .Finish

	ld de, BlueIntro_Gengar3Tilemap
	call BlueIntro_CopyTiles
	ld de, SFX_BLUE_INTRO_CRASH
	call PlaySFX
	lb de, 16 / 2, MOVE_GENGAR_RIGHT
	call BlueIntro_MoveMon
	jp c, .Finish

	ld de, SFX_BLUE_INTRO_HIP
	call PlaySFX
	ld a, (BlueIntro_JigglypuffTiles.Frame1End - BlueIntro_JigglypuffTiles) / LEN_2BPP_TILE
	ld [wIntroJigglypuffBaseTile], a
	ld de, BlueIntro_JigglypuffAnimation3
	call BlueIntro_AnimateJigglypuff
	jr c, .Finish
	ld c, 30
	call BlueIntro_CheckUserInterrupt
	jr c, .Finish

	lb de, 8 / 2, MOVE_GENGAR_LEFT
	call BlueIntro_MoveMon
	jr c, .Finish
	ld de, BlueIntro_Gengar1Tilemap
	call BlueIntro_CopyTiles
	ld c, 60
	call BlueIntro_CheckUserInterrupt
	jr c, .Finish

	ld de, SFX_BLUE_INTRO_HIP
	call PlaySFX
	xor a
	ld [wIntroJigglypuffBaseTile], a
	ld de, BlueIntro_JigglypuffAnimation4
	call BlueIntro_AnimateJigglypuff
	jr c, .Finish

	ld de, SFX_BLUE_INTRO_HOP
	call PlaySFX
	xor a
	ld [wIntroJigglypuffBaseTile], a
	ld de, BlueIntro_JigglypuffAnimation5
	call BlueIntro_AnimateJigglypuff
	jr c, .Finish
	ld c, 20
	call BlueIntro_CheckUserInterrupt
	jr c, .Finish

	ld a, (BlueIntro_JigglypuffTiles.Frame1End - BlueIntro_JigglypuffTiles) / LEN_2BPP_TILE
	ld [wIntroJigglypuffBaseTile], a
	ld de, BlueIntro_JigglypuffAnimation6
	call BlueIntro_AnimateJigglypuff
	jr c, .Finish
	ld c, 30
	call BlueIntro_CheckUserInterrupt
	jr c, .Finish

	ld de, SFX_BLUE_INTRO_LUNGE
	call PlaySFX
	ld a, (BlueIntro_JigglypuffTiles.Frame2End - BlueIntro_JigglypuffTiles) / LEN_2BPP_TILE
	ld [wIntroJigglypuffBaseTile], a
	ld de, BlueIntro_JigglypuffAnimation7
	call BlueIntro_AnimateJigglypuff

	ld c, 30
	call DelayFrames

.Finish:
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret

BlueIntroScene3:
	ld hl, wBlueIntroFrameCounter
	ld a, [hl]
	inc [hl]
	rrca
	and $f
	ld e, a
	ld d, 0
	ld hl, .palettes
	add hl, de
	ld a, [hl]
	cp -1
	jr z, .next
	call DmgToCgbBGPals
	ret

.next
	ld hl, wIntroJumptableIndex
	set 7, [hl]
	ret

.palettes
	db %11100100
	db %10010000
	db %01000000
	db %00000000
	db -1

BlueIntro_CheckUserInterrupt:
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

BlueIntro_MoveMon:
	ld a, e
	cp MOVE_JIGGLYPUFF_RIGHT
	jr z, .move_jigglypuff_right
	cp MOVE_GENGAR_LEFT
	jr z, .move_gengar_left
; move Gengar right
	ldh a, [hSCX]
	dec a
	dec a
	jr .next

.move_jigglypuff_right
	push de
	ld a, 2
	ld [wBaseCoordX], a
	xor a
	ld [wBaseCoordY], a
	ld c, 6 * 6
	call BlueIntro_UpdateJigglypuffOAM
	pop de
.move_gengar_left
	ldh a, [hSCX]
	inc a
	inc a
.next
	ldh [hSCX], a
	ld c, 2
	call BlueIntro_CheckUserInterrupt
	ret c
	dec d
	jr nz, BlueIntro_MoveMon
	ret

BlueIntro_BlackBars:
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * 4
	ld a, 1
	call ByteFill

	hlcoord 0, 14
	ld bc, SCREEN_WIDTH * 4
	ld a, 1
	call ByteFill

	hlbgcoord 0, 0, vBGMap0
	ld bc, BG_MAP_WIDTH * 4
	ld a, 1
	call ByteFill

	hlbgcoord 0, 14, vBGMap0
	ld bc, BG_MAP_WIDTH * 4
	ld a, 1
	jp ByteFill

BlueIntro_CopyTiles:
	hlcoord 13, 7
	lb bc, 7, 7
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
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec c
	jr nz, .loop_y
	ret

BlueIntro_LoadMonGraphics:
	ld hl, BlueIntro_GengarTiles
	ld de, vTiles2
	ld bc, BlueIntro_GengarTiles.End - BlueIntro_GengarTiles
	call CopyBytes

	ld hl, BlueIntro_JigglypuffTiles
	ld de, vTiles0
	ld bc, BlueIntro_JigglypuffTiles.End - BlueIntro_JigglypuffTiles
	call CopyBytes
	ret

BlueIntro_InitJigglypuffOAM:
	ld hl, wVirtualOAM
	ld d, 0
.loop
	push bc
	ld a, [wBaseCoordY]
	ld e, a
.loop2
	ld a, e
	add 8
	ld e, a
	ld [hli], a ; Y
	ld a, [wBaseCoordX]
	ld [hli], a ; X
	ld a, d
	ld [hli], a ; tile
	ld a, (1 << OAM_PRIORITY)
	ld [hli], a ; attr
	inc d
	dec c
	jr nz, .loop2
	ld a, [wBaseCoordX]
	add 8
	ld [wBaseCoordX], a
	pop bc
	dec b
	jr nz, .loop
	ret

BlueIntro_UpdateJigglypuffOAM:
	ld hl, wVirtualOAM
	ld a, [wIntroJigglypuffBaseTile]
	ld d, a
.loop
	ld a, [wBaseCoordY]
	add [hl]
	ld [hli], a ; Y
	ld a, [wBaseCoordX]
	add [hl]
	ld [hli], a ; X
	ld a, d
	ld [hli], a ; tile
	inc hl
	inc d
	dec c
	jr nz, .loop
	ret

BlueIntro_AnimateJigglypuff:
	ld a, [de]
	cp ANIMATION_END
	ret z
	ld [wBaseCoordY], a
	inc de
	ld a, [de]
	ld [wBaseCoordX], a
	push de
	ld c, 6 * 6
	call BlueIntro_UpdateJigglypuffOAM
	ld c, 5
	call BlueIntro_CheckUserInterrupt
	pop de
	ret c
	inc de
	jr BlueIntro_AnimateJigglypuff

BlueIntro_GengarTiles:
	INCBIN "gfx/intro/blue/gengar.2bpp"
.End:

BlueIntro_JigglypuffTiles:
	INCBIN "gfx/intro/blue/jigglypuff_1.2bpp"
.Frame1End:
	INCBIN "gfx/intro/blue/jigglypuff_2.2bpp"
.Frame2End:
	INCBIN "gfx/intro/blue/jigglypuff_3.2bpp"
.Frame3End:
.End:

BlueIntro_Gengar1Tilemap:
	INCBIN "gfx/intro/blue/gengar_1.tilemap"
BlueIntro_Gengar2Tilemap:
	INCBIN "gfx/intro/blue/gengar_2.tilemap"
BlueIntro_Gengar3Tilemap:
	INCBIN "gfx/intro/blue/gengar_3.tilemap"

BlueIntro_JigglypuffAnimation1:
	db  0, 0
	db -2, 2
	db -1, 2
	db  1, 2
	db  2, 2
	db ANIMATION_END

BlueIntro_JigglypuffAnimation2:
	db  0,  0
	db -2, -2
	db -1, -2
	db  1, -2
	db  2, -2
	db ANIMATION_END

BlueIntro_JigglypuffAnimation3:
	db   0, 0
	db -12, 6
	db  -8, 6
	db   8, 6
	db  12, 6
	db ANIMATION_END

BlueIntro_JigglypuffAnimation4:
	db  0,  0
	db -8, -4
	db -4, -4
	db  4, -4
	db  8, -4
	db ANIMATION_END

BlueIntro_JigglypuffAnimation5:
	db  0, 0
	db -8, 4
	db -4, 4
	db  4, 4
	db  8, 4
	db ANIMATION_END

BlueIntro_JigglypuffAnimation6:
	db 0, 0
	db 2, 0
	db 2, 0
	db 0, 0
	db ANIMATION_END

BlueIntro_JigglypuffAnimation7:
	db -8, -16
	db -7, -14
	db -6, -12
	db -4, -10
	db ANIMATION_END
