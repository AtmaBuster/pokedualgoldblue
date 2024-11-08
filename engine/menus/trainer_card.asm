; TrainerCard.Jumptable indexes
	const_def
	const TRAINERCARDSTATE_PAGE1_LOADGFX ; 0
	const TRAINERCARDSTATE_PAGE1_JOYPAD  ; 1
	const TRAINERCARDSTATE_PAGE2_LOADGFX ; 2
	const TRAINERCARDSTATE_PAGE2_JOYPAD  ; 3
	const TRAINERCARDSTATE_PAGE3_LOADGFX ; 4
	const TRAINERCARDSTATE_PAGE3_JOYPAD  ; 5
	const TRAINERCARDSTATE_QUIT          ; 6

TrainerCard:
	ld a, [wVramState]
	push af
	xor a
	ld [wVramState], a
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call .InitRAM
.loop
	call UpdateTime
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .quit
	ldh a, [hJoyLast]
	and B_BUTTON
	jr nz, .quit
	call .RunJumptable
	call DelayFrame
	jr .loop

.quit
	pop af
	ld [wOptions], a
	pop af
	ld [wVramState], a
	ret

.InitRAM:
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	call DisableLCD

	ld hl, TrainerPicAndTrainerCardGFX
	ld de, vTiles2
	ld bc, (35 + 6) tiles
	ld a, BANK(TrainerPicAndTrainerCardGFX)
	call FarCopyBytes

	ld hl, CardStatusGFX
	ld de, vTiles2 tile $29
	ld bc, 86 tiles
	ld a, BANK(CardStatusGFX)
	call FarCopyBytes

	call TrainerCard_PrintTopHalfOfCard

	hlcoord 0, 8
	ld d, 6
	call TrainerCard_InitBorder

	call EnableLCD
	call WaitBGMap
	ld b, SCGB_TRAINER_CARD
	call GetSGBLayout
	call SetPalettes
	call WaitBGMap
	ld hl, wJumptableIndex
	xor a ; TRAINERCARDSTATE_PAGE1_LOADGFX
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wTrainerCardBadgeFrameCounter
	ld [hli], a ; wTrainerCardBadgeTileID
	ld [hl], a  ; wTrainerCardBadgeAttributes
	ret

.RunJumptable:
	jumptable .Jumptable, wJumptableIndex

.Jumptable:
; entries correspond to TRAINERCARDSTATE_* constants
	dw TrainerCard_Page1_LoadGFX
	dw TrainerCard_Page1_Joypad
IF DEF(_GOLD)
	dw TrainerCard_Page2_LoadGFX
ELIF DEF(_BLUE)
	dw TrainerCard_Page3_LoadGFX
ENDC
	dw TrainerCard_Page2_Joypad
IF DEF(_GOLD)
	dw TrainerCard_Page3_LoadGFX
ELIF DEF(_BLUE)
	dw TrainerCard_Page2_LoadGFX
ENDC
	dw TrainerCard_Page3_Joypad
	dw TrainerCard_Quit

TrainerCard_IncrementJumptable:
	ld hl, wJumptableIndex
	inc [hl]
	ret

TrainerCard_Quit:
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

TrainerCard_Page1_LoadGFX:
	call ClearSprites
	hlcoord 0, 8
	ld d, 6
	call TrainerCard_InitBorder
	call WaitBGMap
	ld de, CardStatusGFX
	ld hl, vTiles2 tile $29
	lb bc, BANK(CardStatusGFX), 86
	call Request2bpp
	call TrainerCard_Page1_PrintDexCaught_GameTime
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page1_Joypad:
	call TrainerCard_Page1_PrintGameTime
	ld hl, hJoyLast
	ld a, [hl]
	and D_RIGHT | A_BUTTON
	jr nz, .pressed_right_a
	ret

.pressed_right_a
	ld a, TRAINERCARDSTATE_PAGE2_LOADGFX
	ld [wJumptableIndex], a
	ret

.KantoBadgeCheck: ; unreferenced
	ld a, [wKantoBadges]
	and a
	ret z
	ld a, TRAINERCARDSTATE_PAGE3_LOADGFX
	ld [wJumptableIndex], a
	ret

TrainerCard_Page2_LoadGFX:
	call ClearSprites
	hlcoord 0, 8
	ld d, 6
	call TrainerCard_InitBorder
	call WaitBGMap

	ld b, SCGB_TRAINER_CARD
	call GetSGBLayout
	call SetPalettes
	call WaitBGMap
	
	ld de, LeaderGFXJohto
	ld hl, vTiles2 tile $29
	lb bc, BANK(LeaderGFXJohto), 86
	call Request2bpp
	ld de, BadgeGFXJohto
	ld hl, vTiles0 tile $00
	lb bc, BANK(BadgeGFXJohto), 44
	call Request2bpp
	ld hl, TrainerCard_JohtoBadgesOAM
	call TrainerCard_Page2_3_InitObjectsAndStrings
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page2_Joypad:
IF DEF(_GOLD)
	ld hl, TrainerCard_JohtoBadgesOAM
ELIF DEF(_BLUE)
	ld hl, TrainerCard_KantoBadgesOAM
ENDC
	call TrainerCard_Page2_3_AnimateBadges
	ld hl, hJoyLast
	ld a, [hl]
	and D_RIGHT
	jr nz, .pressed_right
	ld a, [hl]
	and A_BUTTON
	jr nz, .pressed_a
	ld a, [hl]
	and D_LEFT
	ret z

; pressed_left
	ld a, TRAINERCARDSTATE_PAGE1_LOADGFX
	ld [wJumptableIndex], a
	ret

.pressed_right
IF DEF(_GOLD)
	ld a, [wKantoBadges]
ELIF DEF(_BLUE)
	ld a, [wJohtoBadges]
ENDC
	and a
	ret z
	ld a, TRAINERCARDSTATE_PAGE3_LOADGFX
	ld [wJumptableIndex], a
	ret

.pressed_a
IF DEF(_GOLD)
	ld a, [wKantoBadges]
ELIF DEF(_BLUE)
	ld a, [wJohtoBadges]
ENDC
	and a
	jr z, .quit
	ld a, TRAINERCARDSTATE_PAGE3_LOADGFX
	ld [wJumptableIndex], a
	ret

.quit
	ld a, TRAINERCARDSTATE_QUIT
	ld [wJumptableIndex], a
	ret

TrainerCard_Page3_LoadGFX:
	call ClearSprites
	hlcoord 0, 8
	ld d, 6
	call TrainerCard_InitBorder
	call WaitBGMap

	ld b, SCGB_TRAINER_CARD_KANTO
	call GetSGBLayout
	call SetPalettes
	call WaitBGMap

	ld de, LeaderGFXKanto
	ld hl, vTiles2 tile $29
	lb bc, BANK(LeaderGFXKanto), 86
	call Request2bpp
	ld a, [wKantoBadges]
	bit EARTHBADGE, a
	jr z, .hiddenGiovanni
	ld de, RevealedGiovanni
	ld hl, vTiles2 tile $6f
	lb bc, BANK(RevealedGiovanni), 10
	call Request2bpp
.hiddenGiovanni
	ld de, BadgeGFXKanto
	ld hl, vTiles0 tile $00
	lb bc, BANK(BadgeGFXKanto), 44
	call Request2bpp
	ld hl, TrainerCard_KantoBadgesOAM
	call TrainerCard_Page2_3_InitObjectsAndStrings
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page3_Joypad:
IF DEF(_GOLD)
	ld hl, TrainerCard_KantoBadgesOAM
ELIF DEF(_BLUE)
	ld hl, TrainerCard_JohtoBadgesOAM
ENDC
	ld hl, TrainerCard_JohtoBadgesOAM
	call TrainerCard_Page2_3_AnimateBadges
	ld hl, hJoyLast
	ld a, [hl]
	and D_LEFT
	jr nz, .left
	ld a, [hl]
	and D_RIGHT
	jr nz, .right
	ld a, [hl]
	and A_BUTTON
	ret z

;a
	ld a, TRAINERCARDSTATE_QUIT
	ld [wJumptableIndex], a
	ret

.left
	ld a, TRAINERCARDSTATE_PAGE2_LOADGFX
	ld [wJumptableIndex], a
	ret

.right
	ld a, TRAINERCARDSTATE_PAGE1_LOADGFX
	ld [wJumptableIndex], a
	ret

TrainerCard_PrintTopHalfOfCard:
	hlcoord 0, 0
	ld d, 5
	call TrainerCard_InitBorder
	hlcoord 2, 2
	ld de, .Name_Money
	call PlaceString
	hlcoord 2, 4
	ld de, .ID_No
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 7, 2
	ld de, wPlayerName
	call PlaceString
	hlcoord 5, 4
	ld de, wPlayerID
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 7, 6
	ld de, wMoney
	lb bc, PRINTNUM_MONEY | 3, 6
	call PrintNum
	hlcoord 1, 3
	ld de, .HorizontalDivider
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 14, 1
	ld de, SCREEN_WIDTH
	xor a
	ld b, 7

.row
	ld c, 5
	push hl

.col
	ld [hli], a
	inc a
	dec c
	jr nz, .col
	pop hl
	add hl, de
	dec b
	jr nz, .row
	ret

.Name_Money:
	db   "NAME/"
	next ""
	next "MONEY@"

.ID_No:
	db $27, $28, -1 ; ID NO

.HorizontalDivider:
	db $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $26, -1 ; ____________>

TrainerCard_Page1_PrintDexCaught_GameTime:
	hlcoord 2, 10
	ld de, .Dex_PlayTime
	call PlaceString
	hlcoord 12, 15
	ld de, .Badges
	call PlaceString
	ld hl, wPokedexCaught
	ld b, wEndPokedexCaught - wPokedexCaught
	call CountSetBits
	ld de, wNumSetBits
	hlcoord 15, 10
	lb bc, 1, 3
	call PrintNum
	call TrainerCard_Page1_PrintGameTime
	hlcoord 2, 8
	ld de, .StatusTilemap
	call TrainerCardSetup_PlaceTilemapString
	ld a, [wStatusFlags]
	bit STATUSFLAGS_POKEDEX_F, a
	ret nz
	hlcoord 1, 9
	lb bc, 2, 17
	call ClearBox
	ret

.Dex_PlayTime:
	db   "#DEX"
	next "PLAY TIME@"

.Unused: ; unreferenced
	db "@"

.Badges:
	db "BADGES▶@"

.StatusTilemap:
	db $29, $2a, $2b, $2c, $2d, -1

TrainerCard_Page2_3_InitObjectsAndStrings:
	push hl
	hlcoord 2, 8
	ld de, .BadgesTilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 2, 10
	ld a, $29
	ld c, 4
.loop
	call TrainerCard_Page2_3_PlaceLeadersFaces
rept 4
	inc hl
endr
	dec c
	jr nz, .loop
	hlcoord 2, 13
	ld a, $51
	ld c, 4
.loop2
	call TrainerCard_Page2_3_PlaceLeadersFaces
rept 4
	inc hl
endr
	dec c
	jr nz, .loop2
	xor a
	ld [wTrainerCardBadgeFrameCounter], a
	pop hl
	call TrainerCard_Page2_3_OAMUpdate
	ret

.BadgesTilemap:
	db $79, $7a, $7b, $7c, $7d, -1 ; "BADGES"

TrainerCardSetup_PlaceTilemapString:
.loop
	ld a, [de]
	cp -1
	ret z
	ld [hli], a
	inc de
	jr .loop

TrainerCard_InitBorder:
	ld e, SCREEN_WIDTH
.loop1
	ld a, $23
	ld [hli], a
	dec e
	jr nz, .loop1

	ld a, $23
	ld [hli], a

	ld e, SCREEN_WIDTH - 3
	ld a, " "
.loop2
	ld [hli], a
	dec e
	jr nz, .loop2

	ld a, $04
	ld [hli], a
	ld a, $23
	ld [hli], a

.loop3
	ld a, $23
	ld [hli], a

	ld e, SCREEN_WIDTH - 2
	ld a, " "
.loop4
	ld [hli], a
	dec e
	jr nz, .loop4

	ld a, $23
	ld [hli], a

	dec d
	jr nz, .loop3

	ld a, $23
	ld [hli], a
	ld a, $24
	ld [hli], a

	ld e, SCREEN_WIDTH - 3
	ld a, " "
.loop5
	ld [hli], a
	dec e
	jr nz, .loop5

	ld a, $23
	ld [hli], a

	ld e, SCREEN_WIDTH
.loop6
	ld a, $23
	ld [hli], a
	dec e
	jr nz, .loop6
	ret

TrainerCard_Page2_3_PlaceLeadersFaces:
	push de
	push hl
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld de, SCREEN_WIDTH - 3
	add hl, de
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld de, SCREEN_WIDTH - 3
	add hl, de
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	pop hl
	pop de
	ret

TrainerCard_Page1_PrintGameTime:
	hlcoord 11, 12
	ld de, wGameTimeHours
	lb bc, 2, 4
	call PrintNum
	inc hl
	ld de, wGameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ldh a, [hVBlankCounter]
	and $1f
	ret nz
	hlcoord 15, 12
	ld a, [hl]
	xor " " ^ $2e ; alternate between space and small colon ($2e) tiles
	ld [hl], a
	ret

TrainerCard_Page2_3_AnimateBadges:
	ldh a, [hVBlankCounter]
	and %111
	ret nz
	ld a, [wTrainerCardBadgeFrameCounter]
	inc a
	and %111
	ld [wTrainerCardBadgeFrameCounter], a
	;jr TrainerCard_Page2_3_OAMUpdate

TrainerCard_Page2_3_OAMUpdate:
; copy flag array pointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
; get flag array
	ld d, a
	ld a, [de]
	ld c, a
	ld de, wVirtualOAMSprite00
	ld b, NUM_JOHTO_BADGES
.loop
	srl c
	push bc
	jr nc, .skip_badge
	push hl
	ld a, [hli] ; y
	ld b, a
	ld a, [hli] ; x
	ld c, a
	ld a, [hli] ; pal
	ld [wTrainerCardBadgeAttributes], a
	ld a, [wTrainerCardBadgeFrameCounter]
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hl]
	ld [wTrainerCardBadgeTileID], a
	call .PrepOAM
	pop hl
.skip_badge
	ld bc, $b ; 3 + 2 * 4
	add hl, bc
	pop bc
	dec b
	jr nz, .loop
	ret

.PrepOAM:
	ld a, [wTrainerCardBadgeTileID]
	and 1 << 7
	jr nz, .xflip
	ld hl, .facing1
	jr .loop2

.xflip
	ld hl, .facing2
.loop2
	ld a, [hli]
	cp -1
	ret z
	add b
	ld [de], a ; y
	inc de

	ld a, [hli]
	add c
	ld [de], a ; x
	inc de

	ld a, [wTrainerCardBadgeTileID]
	and $ff ^ (1 << 7)
	add [hl]
	ld [de], a ; tile id
	inc hl
	inc de

	ld a, [wTrainerCardBadgeAttributes]
	add [hl]
	ld [de], a ; attributes
	inc hl
	inc de
	jr .loop2

.facing1
	dbsprite  0,  0,  0,  0, $00, 0
	dbsprite  1,  0,  0,  0, $01, 0
	dbsprite  0,  1,  0,  0, $02, 0
	dbsprite  1,  1,  0,  0, $03, 0
	db -1

.facing2
	dbsprite  0,  0,  0,  0, $01, 0 | X_FLIP
	dbsprite  1,  0,  0,  0, $00, 0 | X_FLIP
	dbsprite  0,  1,  0,  0, $03, 0 | X_FLIP
	dbsprite  1,  1,  0,  0, $02, 0 | X_FLIP
	db -1

TrainerCard_JohtoBadgesOAM:
; Template OAM data for each badge on the trainer card.
; Format:
	; y, x, palette
	; cycle 1: face tile, in1 tile, in2 tile, in3 tile
	; cycle 2: face tile, in1 tile, in2 tile, in3 tile

	dw wJohtoBadges

	; Zephyrbadge
	db $68, $18, 0
	db $00, $20, $24, $20 | (1 << 7)
	db $00, $20, $24, $20 | (1 << 7)

	; Hivebadge
	db $68, $38, 0
	db $04, $20, $24, $20 | (1 << 7)
	db $04, $20, $24, $20 | (1 << 7)

	; Plainbadge
	db $68, $58, 0
	db $08, $20, $24, $20 | (1 << 7)
	db $08, $20, $24, $20 | (1 << 7)

	; Fogbadge
	db $68, $78, 0
	db $0c, $20, $24, $20 | (1 << 7)
	db $0c, $20, $24, $20 | (1 << 7)

	; Mineralbadge
	db $80, $38, 0
	db $10, $20, $24, $20 | (1 << 7)
	db $10, $20, $24, $20 | (1 << 7)

	; Stormbadge
	db $80, $18, 0
	db $14, $20, $24, $20 | (1 << 7)
	db $14, $20, $24, $20 | (1 << 7)

	; Glacierbadge
	db $80, $58, 0
	db $18, $20, $24, $20 | (1 << 7)
	db $18, $20, $24, $20 | (1 << 7)

	; Risingbadge
	; X-flips on alternate cycles.
	db $80, $78, 0
	db $1c,            $20, $24, $20 | (1 << 7)
	db $1c | (1 << 7), $20, $24, $20 | (1 << 7)

	TrainerCard_KantoBadgesOAM:
	; Template OAM data for each badge on the trainer card.
	; Format:
		; y, x, palette
		; cycle 1: face tile, in1 tile, in2 tile, in3 tile
		; cycle 2: face tile, in1 tile, in2 tile, in3 tile
	
		dw wKantoBadges
	
		; Boulderbadge
		db $68, $18, 0
		db $00, $20, $24, $20 | (1 << 7)
		db $00, $20, $24, $20 | (1 << 7)
	
		; Cascadebadge
		db $68, $38, 0
		db $04, $20, $24, $20 | (1 << 7)
		db $04, $20, $24, $20 | (1 << 7)
	
		; Thunderbadge
		db $68, $58, 0
		db $08, $20, $24, $20 | (1 << 7)
		db $08, $20, $24, $20 | (1 << 7)
	
		; Rainbowbadge
		db $68, $78, 0
		db $0c, $20, $24, $20 | (1 << 7)
		db $0c, $20, $24, $20 | (1 << 7)
	
		; SoulBadge
		db $80, $18, 0
		db $10, $20, $24, $20 | (1 << 7)
		db $10, $20, $24, $20 | (1 << 7)
	
		; Marshbadge
		db $80, $38, 0
		db $14, $20, $24, $20 | (1 << 7)
		db $14, $20, $24, $20 | (1 << 7)
	
		; Volcanobadge
		db $80, $58, 0
		db $18, $20, $24, $20 | (1 << 7)
		db $18, $20, $24, $20 | (1 << 7)
	
		; Earthbadge
		; X-flips on alternate cycles.
		db $80, $78, 0
		db $1c,            $20, $24, $20 | (1 << 7)
		db $1c | (1 << 7), $20, $24, $20 | (1 << 7)

TrainerPicAndTrainerCardGFX:
IF DEF(_GOLD)
INCBIN "gfx/trainer_card/chris_card.2bpp"
ELIF DEF(_BLUE)
INCBIN "gfx/trainer_card/red_card.2bpp"
ENDC
INCBIN "gfx/trainer_card/trainer_card.2bpp"

CardStatusGFX: INCBIN "gfx/trainer_card/card_status.2bpp"

LeaderGFXJohto:  INCBIN "gfx/trainer_card/johto_leaders.2bpp"
LeaderGFXKanto: INCBIN "gfx/trainer_card/kanto_leaders.2bpp"
BadgeGFXJohto:   INCBIN "gfx/trainer_card/johto_badges.2bpp"
BadgeGFXKanto:  INCBIN "gfx/trainer_card/kanto_badges.2bpp"

RevealedGiovanni: INCBIN "gfx/trainer_card/revealed_giovanni.2bpp"
