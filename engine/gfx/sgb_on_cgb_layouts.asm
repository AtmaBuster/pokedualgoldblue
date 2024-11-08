; Replaces the functionality of sgb.asm to work with CGB hardware.
; Taken from Pokémon RedGold/BlueSilver

CheckCGB:
	ldh a, [hCGB]
	and a
	ret

LoadSGBLayoutCGB:
	ld a, b
	cp SCGB_DEFAULT
	jr nz, .not_ram
	ld a, [wDefaultSGBLayout]
.not_ram
	cp SCGB_PARTY_MENU_HP_BARS
	jp z, CGB_ApplyPartyMenuHPPals
	call ResetBGPals
	ld l, a
	ld h, 0
	add hl, hl
	ld de, SCGBLayoutJumptable
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .ReturnFromJumpTable
	push de
	jp hl

.ReturnFromJumpTable:
	ret

SCGBLayoutJumptable:
	table_width 2, SCGBLayoutJumptable
	dw _CGB_BattleGrayscale
	dw _CGB_BattleColors
	dw _CGB_PokegearPals
	dw _CGB_StatsScreenHPPals
	dw _CGB_Pokedex
	dw _CGB_SlotMachine
	dw _CGB_BetaTitleScreen
	dw _CGB_GSIntro
	dw _CGB_Diploma
	dw _CGB_MapPals
	dw _CGB_PartyMenu
	dw _CGB_Evolution
	dw _CGB_GSTitleScreen
	dw _CGB0d
	dw _CGB_MoveList
	dw _CGB_BetaPikachuMinigame
	dw _CGB_PokedexSearchOption
	dw _CGB_BetaPoker
	dw _CGB_Pokepic
	dw _CGB_MagnetTrain
	dw _CGB_PackPals
	dw _CGB_TrainerCard
	dw _CGB_PokedexUnownMode
	dw _CGB_BillsPC
	dw _CGB_UnownPuzzle
	dw _CGB_GamefreakLogo
	dw _CGB_PlayerOrMonFrontpicPals
	dw _CGB_TradeTube
	dw _CGB_TrainerOrMonFrontpicPals
	dw _CGB_MysteryGift
	dw _CGB1e
	dw _CGB_Pokedex_5x5
	dw _CGB_TrainerCard
	dw _CGB_TownMapPals
	dw _CGB_BlueTitleScreen
	assert_table_length NUM_SCGB_LAYOUTS

_CGB_BattleGrayscale:
	ld hl, PalPacket_BattleGrayscale + 1
	ld de, wBGPals1
	ld c, 4
	call CopyPalettes
	ld hl, PalPacket_BattleGrayscale + 1
	ld de, wBGPals1 palette PAL_BATTLE_BG_EXP
	ld c, 4
	call CopyPalettes
	ld hl, PalPacket_BattleGrayscale + 1
	ld de, wOBPals1
	ld c, 2
	call CopyPalettes
	jr _CGB_FinishBattleScreenLayout

_CGB_BattleColors:
	ld de, wBGPals1
	call GetBattlemonBackpicPalettePointer
	push hl
	call LoadHLPaletteIntoDE ; PAL_BATTLE_BG_PLAYER
	call GetEnemyFrontpicPalettePointer
	push hl
	call LoadHLPaletteIntoDE ; PAL_BATTLE_BG_ENEMY
	ld a, [wEnemyHPPal]
	add PREDEFPAL_HP_GREEN
	call GetPredefPal
	call LoadHLPaletteIntoDE ; PAL_BATTLE_BG_ENEMY_HP
	ld a, [wPlayerHPPal]
	add PREDEFPAL_HP_GREEN
	call GetPredefPal
	call LoadHLPaletteIntoDE ; PAL_BATTLE_BG_PLAYER_HP
	; on the SGB, the EXP Bar was the same color as your HP bar
	ld de, wOBPals1
	pop hl
	call LoadHLPaletteIntoDE ; PAL_BATTLE_OB_ENEMY
	pop hl
	call LoadHLPaletteIntoDE ; PAL_BATTLE_OB_PLAYER
	ld a, SCGB_BATTLE_COLORS
	ld [wDefaultSGBLayout], a
	call ApplyPals
_CGB_FinishBattleScreenLayout:
	ld de, wBGPals1 palette 7
	ld a, PREDEFPAL_RB_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, PAL_BATTLE_BG_ENEMY_HP
	call ByteFill
	hlcoord 0, 4, wAttrmap
	lb bc, 8, 10
	ld a, PAL_BATTLE_BG_PLAYER
	call FillBoxCGB
	hlcoord 10, 0, wAttrmap
	lb bc, 7, 10
	ld a, PAL_BATTLE_BG_ENEMY
	call FillBoxCGB
	hlcoord 0, 0, wAttrmap
	lb bc, 4, 10
	ld a, PAL_BATTLE_BG_ENEMY_HP
	call FillBoxCGB
	hlcoord 10, 7, wAttrmap
	lb bc, 5, 10
	ld a, PAL_BATTLE_BG_PLAYER_HP
	call FillBoxCGB
	hlcoord 10, 11, wAttrmap
	lb bc, 1, 9
	ld a, PAL_BATTLE_BG_PLAYER_HP ; PAL_BATTLE_BG_EXP originally. Shared HP color on SGB.
	call FillBoxCGB
	hlcoord 0, 12, wAttrmap
	ld bc, 6 * SCREEN_WIDTH
	ld a, PAL_BATTLE_BG_TEXT
	call ByteFill
	call LoadBattleObjectPals
	call ApplyAttrmap
	ret

_CGB_PokegearPals:
	ld a, PREDEFPAL_POKEGEAR
	call GetPredefPal
	ld de, wBGPals1
	push hl
	call LoadHLPaletteIntoDE
	pop hl
	ld de, wOBPals1
	call _CGB_MapPals.LoadHLOBPaletteIntoDE
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_TownMapPals:
	ld a, PREDEFPAL_TOWN_MAP
	call GetPredefPal
	ld de, wBGPals1
	push hl
	call LoadHLPaletteIntoDE
	pop hl
	ld de, wOBPals1
	call _CGB_MapPals.LoadHLOBPaletteIntoDE
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_StatsScreenHPPals:
	ld de, wBGPals1
	ld a, [wCurHPPal]
	add PREDEFPAL_HP_GREEN
	call GetPredefPal
	push hl
	call LoadHLPaletteIntoDE ; hp palette
	ld a, [wCurPartySpecies]
	ld bc, wTempMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadHLPaletteIntoDE ; mon palette
	pop hl ; EXP Bar matches HP Bar in SGB mode
	call LoadHLPaletteIntoDE ; exp palette
	ld de, wBGPals1 palette 3
	; page button palettes
	ld a, PREDEFPAL_HP_GREEN
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap

	hlcoord 0, 0, wAttrmap
	lb bc, 8, SCREEN_WIDTH
	ld a, $1 ; mon palette
	call FillBoxCGB

	hlcoord 10, 16, wAttrmap
	ld bc, 10
	ld a, $2 ; exp palette
	call ByteFill

	hlcoord 13, 5, wAttrmap
	lb bc, 2, 6
	ld a, $3 ; pages palette
	call FillBoxCGB

	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_Pokedex:
	call _CGB_Pokedex_Init
	hlcoord 1, 1, wAttrmap
	lb bc, 7, 7
	ld a, $1
	call FillBoxCGB
	jp _CGB_Pokedex_Resume

_CGB_Pokedex_5x5:
	call _CGB_Pokedex_Init
	hlcoord 1, 1, wAttrmap
	lb bc, 5, 5
	ld a, $1
	call FillBoxCGB
	jp _CGB_Pokedex_Resume

_CGB_Pokedex_Init:
	ld de, wBGPals1
	ld a, PREDEFPAL_RB_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE ; dex interface palette
	ld a, [wCurPartySpecies]
	cp $ff
	jr nz, .is_pokemon
	ld a, PREDEFPAL_RB_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE ; question mark palette
	jr .got_palette

.is_pokemon
	call GetMonPalettePointer
	call LoadHLPaletteIntoDE ; mon palette
.got_palette
	call WipeAttrmap
	ret

_CGB_Pokedex_Resume:
	call InitPartyMenuOBPals
	ld a, PREDEFPAL_RB_REDMON
	call GetPredefPal
	ld de, wOBPals1 palette 7 ; cursor palette
	call LoadHLPaletteIntoDE
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_BillsPC:
	ld de, wBGPals1
	ld a, PREDEFPAL_RB_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [wCurPartySpecies]
	cp $ff
	jr nz, .GetMonPalette
	ld a, PREDEFPAL_RB_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	jr .GotPalette

.GetMonPalette:
	ld bc, wTempMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadHLPaletteIntoDE
.GotPalette:
	call WipeAttrmap
	hlcoord 1, 4, wAttrmap
	lb bc, 7, 7
	ld a, $1
	call FillBoxCGB
	call InitPartyMenuOBPals
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_PokedexUnownMode:
	ld de, wBGPals1
	ld a, PREDEFPAL_RB_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [wCurPartySpecies]
	call GetMonPalettePointer
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	hlcoord 7, 5, wAttrmap
	lb bc, 7, 7
	ld a, $1
	call FillBoxCGB
	call InitPartyMenuOBPals
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_SlotMachine:
	; grab the SGB color packet
	ld hl, PalPacket_SlotMachine + 1
	call CopyFourPalettes
	; in SGB, Slot Reels use Pal 0
	; fill OB Pals with Pal 0
	ld de, wOBPals1
	ld a, PREDEFPAL_SLOT_MACHINE_0
	call GetPredefPal
	ld b, 8
.loop
	push hl
	call LoadHLPaletteIntoDE
	pop hl
	dec b
	jr nz, .loop
	; Apply the palettes to the screen like SGB
	call WipeAttrmap
	hlcoord 0, 2, wAttrmap
	lb bc, 10, 3
	ld a, $1
	call FillBoxCGB
	hlcoord 17, 2, wAttrmap
	lb bc, 10, 3
	ld a, $1
	call FillBoxCGB
	hlcoord 0, 4, wAttrmap
	lb bc, 6, 3
	ld a, $2
	call FillBoxCGB
	hlcoord 17, 4, wAttrmap
	lb bc, 6, 3
	ld a, $2
	call FillBoxCGB
	hlcoord 0, 6, wAttrmap
	lb bc, 2, 3
	ld a, $3
	call FillBoxCGB
	hlcoord 17, 6, wAttrmap
	lb bc, 2, 3
	ld a, $3
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_BetaTitleScreen:
	ld hl, PalPacket_BetaTitleScreen + 1
	call CopyFourPalettes
	call WipeAttrmap
	ld de, wOBPals1
	ld a, PREDEFPAL_PACK
	call GetPredefPal
	call LoadHLPaletteIntoDE
	hlcoord 0, 6, wAttrmap
	lb bc, 12, SCREEN_WIDTH
	ld a, $1
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_GSIntro:
	ld b, 0
	ld hl, .Jumptable
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Jumptable:
	dw .ShellderLaprasScene
	dw .JigglypuffPikachuScene
	dw .StartersCharizardScene

.ShellderLaprasScene:
	ld a, PREDEFPAL_GS_INTRO_SHELLDER_LAPRAS
	call GetPredefPal
	push hl
	push hl
	ld de, wBGPals1
	call LoadHLPaletteIntoDE
	pop hl
	ld de, wOBPals1
	call LoadHLPaletteIntoDE
	pop hl
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	ret

.JigglypuffPikachuScene:
	ld de, wBGPals1
	ld a, PREDEFPAL_GS_INTRO_JIGGLYPUFF_PIKACHU_BG
	call GetPredefPal
	call LoadHLPaletteIntoDE

	ld de, wOBPals1
	ld a, PREDEFPAL_GS_INTRO_JIGGLYPUFF_PIKACHU_OB
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	ret

.StartersCharizardScene:
	ld a, PREDEFPAL_RB_REDMON ; Charizard
	call GetPredefPal
	ld de, wBGPals1
	call LoadHLPaletteIntoDE
	ld de, wOBPals1
	ld a, PREDEFPAL_GS_INTRO_STARTERS_TRANSITION
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	ret

_CGB_BetaPoker:
	ld hl, PalPacket_BetaPoker + 1
	call CopyFourPalettes
	call InitPartyMenuOBPals
	call ApplyPals
	call WipeAttrmap
	call ApplyAttrmap
	ret

_CGB_Diploma:
; Start by loading PREDEFPAL_RB_MEWMON for 2 object pals
	ld de, wOBPals1
	ld a, PREDEFPAL_DIPLOMA
	call GetPredefPal
	push hl
	call _CGB_MapPals.LoadHLOBPaletteIntoDE
	pop hl
	call _CGB_MapPals.LoadHLOBPaletteIntoDE
; then load diploma palettes
	ld hl, PalPacket_Diploma + 1
	call CopyFourPalettes
	call WipeAttrmap
	jp ApplyAttrmap

_CGB_MapPals:
; Get SGB palette
	call SGBLayoutJumptable.GetMapPalsIndex
	call GetPredefPal
	ld de, wBGPals1
; Copy 7 BG palettes
	ld b, 7
.bg_loop
	call .LoadHLBGPaletteIntoDE
	dec b
	jr nz, .bg_loop
; Copy PREDEFPAL_BG_TEXT and 6 OB palettes
	ld b, 7
.ob_loop
	call .LoadHLOBPaletteIntoDE
	dec b
	jr nz, .ob_loop
; Copy PREDEFPAL_OW_TREE and PREDEFPAL_OW_ROCK
	call .LoadHLBGPaletteIntoDE
	call .LoadHLBGPaletteIntoDE
	ld a, SCGB_MAPPALS
	ld [wDefaultSGBLayout], a
	ret

.LoadHLBGPaletteIntoDE:
; morn/day: shades 0, 1, 2, 3 -> 0, 1, 2, 3
; nite: shades 0, 1, 2, 3 -> 1, 2, 2, 3
	push hl
IF DEF(_GOLD)
	ld a, [wTimeOfDayPal]
	cp NITE_F
	jr c, .bg_morn_day
	inc hl
	inc hl
	call .LoadHLColorIntoDE
	call .LoadHLColorIntoDE
	dec hl
	dec hl
	call .LoadHLColorIntoDE
	call .LoadHLColorIntoDE
ELIF DEF(_BLUE)
; darkness: shades 0, 1, 2, 3 -> 2, 3, 3, 3
	ld a, [wTimeOfDayPalset]
	cp DARKNESS_PALSET
	jr c, .bg_morn_day
	inc hl
	inc hl
	inc hl
	inc hl
	call .LoadHLColorIntoDE
	call .LoadHLColorIntoDE
	dec hl
	dec hl
	call .LoadHLColorIntoDE
	dec hl
	dec hl
	call .LoadHLColorIntoDE
ENDC
.bg_done
	pop hl
	ret

.bg_morn_day
	call LoadHLPaletteIntoDE
	jr .bg_done

.LoadHLOBPaletteIntoDE:
; shades 0, 1, 2, 3 -> 0, 0, 1, 3
	push hl
IF DEF(_BLUE)
; darkness: shades 0, 1, 2, 3 -> 2, 3, 3, 3
	ld a, [wTimeOfDayPalset]
	cp DARKNESS_PALSET
	jr c, .ob_normal
	inc hl
	inc hl
	inc hl
	inc hl
	call .LoadHLColorIntoDE
	call .LoadHLColorIntoDE
	dec hl
	dec hl
	call .LoadHLColorIntoDE
	dec hl
	dec hl
	call .LoadHLColorIntoDE
	jr .ob_done
ENDC
.ob_normal
	call .LoadHLColorIntoDE
	dec hl
	dec hl
	call .LoadHLColorIntoDE
	call .LoadHLColorIntoDE
	inc hl
	inc hl
	call .LoadHLColorIntoDE
.ob_done
	pop hl
	ret

.LoadHLColorIntoDE:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a
rept PAL_COLOR_SIZE
	ld a, [hli]
	ld [de], a
	inc de
endr
	pop af
	ldh [rSVBK], a
	ret

_CGB_PartyMenu:
	ld hl, PalPacket_PartyMenu + 1
	call CopyFourPalettes
	call InitPartyMenuOBPals
	call ApplyAttrmap
	ret

_CGB_Evolution:
	ld de, wBGPals1
	ld a, c
	and a
	jr z, .pokemon
	ld a, PREDEFPAL_BLACKOUT
	call GetPredefPal
	call LoadHLPaletteIntoDE
	jr .got_palette

.pokemon
	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	ld c, l
	ld b, h
	ld a, [wPlayerHPPal]
	call GetPlayerOrMonPalettePointer
	call LoadHLPaletteIntoDE
	call LoadBattleObjectPals

.got_palette
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

LoadBattleObjectPals:
	ld de, wOBPals1 palette PAL_BATTLE_OB_GRAY
	ld a, PREDEFPAL_RB_GRAYMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PREDEFPAL_RB_YELLOWMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PREDEFPAL_RB_REDMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PREDEFPAL_RB_GREENMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PREDEFPAL_RB_BLUEMON
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PREDEFPAL_RB_BROWNMON
	call GetPredefPal
	jp LoadHLPaletteIntoDE

_CGB_GSTitleScreen:
; Start by loading object pal
	ld de, wOBPals1
	ld a, PREDEFPAL_GS_TITLE_SCREEN_0
	call GetPredefPal
	push hl
	call LoadHLPaletteIntoDE
; then background palette
	pop hl
	ld de, wBGPals1
	call LoadHLPaletteIntoDE
; and apply it to the whole screen
	call WipeAttrmap
	jp ApplyAttrmap

_CGB0d:
	ld hl, PalPacket_Diploma + 1
	call CopyFourPalettes
	call WipeAttrmap
	call ApplyAttrmap
	ret

_CGB_UnownPuzzle:
	ld hl, PalPacket_UnownPuzzle + 1
	call CopyFourPalettes
	ld de, wOBPals1
	ld a, PREDEFPAL_UNOWN_PUZZLE
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld hl, wOBPals1
	ld a, LOW(palred 31 + palgreen 0 + palblue 0)
	ld [hli], a
	ld a, HIGH(palred 31 + palgreen 0 + palblue 0)
	ld [hl], a
	call WipeAttrmap
	call ApplyAttrmap
	ret

_CGB_TrainerCard:
	; Palettes for border and trainers
	ld de, wBGPals1
	ld a, PREDEFPAL_DIPLOMA
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PREDEFPAL_DIPLOMA
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, PREDEFPAL_DIPLOMA
	call GetPredefPal
	call LoadHLPaletteIntoDE
	; palette for the badges when visible
	ld de, wOBPals1
	ld a, PREDEFPAL_DIPLOMA
	call GetPredefPal
	call LoadHLPaletteIntoDE

	; fill screen with gender-specific palette for the card border
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	; TODO: Player Gender, and Gender-based trainer card pal
	;ld a, [wPlayerGender]
	;and a
	ld a, $1 ; red
	;jr z, .got_gender
	;xor a ; cyan
;.got_gender
	call ByteFill
	; fill trainer sprite area with trainer palette
	hlcoord 14, 1, wAttrmap
	lb bc, 7, 5
	ld a, $2
	call FillBoxCGB
	; top-right corner still uses the border's palette
	hlcoord  0, 0, wAttrmap
	ld a, [hl]
	hlcoord 18, 1, wAttrmap
	ld [hl], a
	hlcoord 2, 10, wAttrmap
	lb bc, 6, 16
	ld a, $2 ; trainer faces
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_MoveList:
	ld de, wBGPals1
	ld a, PREDEFPAL_GOLDENROD
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [wPlayerHPPal]
	add PREDEFPAL_HP_GREEN
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	hlcoord 11, 1, wAttrmap
	lb bc, 2, 9
	ld a, $1
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_BetaPikachuMinigame:
	ld hl, PalPacket_BetaPikachuMinigame + 1
	call CopyFourPalettes
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_PokedexSearchOption:
	ld de, wBGPals1
	ld a, PREDEFPAL_POKEDEX
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_PackPals:
; pack pals
	ld de, wBGPals1
	ld a, PREDEFPAL_PACK
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_Pokepic:
	call _CGB_MapPals
	call SwapTextboxPalettes
	ld de, SCREEN_WIDTH
	hlcoord 0, 0, wAttrmap
	ld a, [wMenuBorderTopCoord]
.loop
	and a
	jr z, .found_top
	dec a
	add hl, de
	jr .loop

.found_top
	ld a, [wMenuBorderLeftCoord]
	ld e, a
	ld d, $0
	add hl, de
	ld a, [wMenuBorderTopCoord]
	ld b, a
	ld a, [wMenuBorderBottomCoord]
	inc a
	sub b
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	ld c, a
	ld a, [wMenuBorderRightCoord]
	sub c
	inc a
	ld c, a
	ld a, $0
	call FillBoxCGB
	call ApplyAttrmap
	ret

_CGB_MagnetTrain:
	ld hl, PalPacket_MagnetTrain + 1
	call CopyFourPalettes
	call WipeAttrmap
	hlcoord 0, 4, wAttrmap
	lb bc, 10, SCREEN_WIDTH
	ld a, $2
	call FillBoxCGB
	hlcoord 0, 6, wAttrmap
	lb bc, 6, SCREEN_WIDTH
	ld a, $1
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_GamefreakLogo:
	ld de, wBGPals1
	ld a, PREDEFPAL_GS_INTRO_GAMEFREAK_LOGO
	call GetPredefPal
	push hl
	push hl
	call LoadHLPaletteIntoDE
	ld de, wOBPals1
	pop hl
	call LoadHLPaletteIntoDE
	ld de, wOBPals1 palette 1
	pop hl
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret

_CGB_PlayerOrMonFrontpicPals:
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	ld bc, wTempMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret

_CGB1e:
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	call GetMonPalettePointer
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	ret

_CGB_TradeTube:
	ld hl, PalPacket_TradeTube + 1
	call CopyFourPalettes
	call InitPartyMenuOBPals
	ld de, wOBPals1 palette 7
	ld a, PREDEFPAL_TRADE_TUBE
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	ret

_CGB_TrainerOrMonFrontpicPals:
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	ld bc, wTempMonDVs
	call GetFrontpicPalettePointer
	call LoadHLPaletteIntoDE
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret

_CGB_MysteryGift:
	ld hl, .MysteryGiftPalette
	ld de, wBGPals1
	ld bc, 1 palettes
	call CopyBytes
	call ApplyPals
	call WipeAttrmap
	call ApplyAttrmap
	ret

.MysteryGiftPalette:
	RGB 31, 29, 31
	RGB 09, 29, 31
	RGB 10, 12, 31
	RGB 00, 03, 19

_CGB_BlueTitleScreen:
	ld a, c
	and a
	jr z, .BeforeLogoDrop

	call .SetUpMainAttrmap
	call .ApplyAttrmap_1
	call .ApplyAttrmap_2

	ret

.BeforeLogoDrop:
	call .SetUpMainAttrmap
	call .ApplyAttrmap_1
	call .SetUpSubAttrmap
	call .ApplyAttrmap_2

	ld hl, .BlueTitlePalettes
	ld de, wBGPals1
	ld bc, 3 palettes
	call CopyBytes
	ld hl, .BlueTitlePalettes palette 2
	ld de, wOBPals1
	ld bc, 1 palettes
	call CopyBytes
	call ApplyPals

	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

.SetUpMainAttrmap:
	ld hl, wAttrmap
	xor a
	ld bc, SCREEN_WIDTH * 8
	call ByteFill
	inc a
	ld bc, SCREEN_WIDTH * 2
	call ByteFill
	inc a
	ld bc, SCREEN_WIDTH * 8
	call ByteFill
	ret

.SetUpSubAttrmap:
	ld hl, wAttrmap
	ld a, 1
	ld bc, SCREEN_WIDTH * 2
	call ByteFill
	inc a
	ld bc, SCREEN_WIDTH * 8
	call ByteFill
	ret

.ApplyAttrmap_1:
	ldh a, [hBGMapAddress + 1]
	push af
	ld a, HIGH(vBGMap2)
	ldh [hBGMapAddress + 1], a
	call ApplyAttrmap
	pop af
	ldh [hBGMapAddress + 1], a
	ret

.ApplyAttrmap_2:
	ldh a, [hBGMapAddress + 1]
	push af
	ld a, HIGH(vBGMap3)
	ldh [hBGMapAddress + 1], a
	call ApplyAttrmap
	pop af
	ldh [hBGMapAddress + 1], a
	ret

.BlueTitlePalettes:
	RGB 31, 29, 31
	RGB 30, 30, 17
	RGB 18, 18, 24
	RGB 07, 07, 16

	RGB 31, 29, 31
	RGB 30, 30, 17
	RGB 21, 00, 04
	RGB 14, 19, 29

	RGB 31, 29, 31
	RGB 30, 22, 17
	RGB 16, 14, 19
	RGB 03, 02, 02
