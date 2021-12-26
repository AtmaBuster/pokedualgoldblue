DrinkGirlMenu:
	call CheckDrinks
	ld a, c
	ld [wDrinkGirlCount], a
	ld hl, DrinkGirl_MenuHeader
	push bc
	call LoadMenuHeader
	pop bc
	call .SetUpMenuItems
	call DrawVariableLengthMenuBox
	call .GetInput
	jr c, .exit
	ld a, [wMenuSelection]
	jr .finish

.exit
	xor a
.finish
	ld [wScriptVar], a
	ret

.GetInput:
	xor a
	ldh [hBGMapMode], a
	call SetUpMenu
	ld a, -1
	ld [wMenuSelection], a
.loop
	call GetScrollingMenuJoypad
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .b
	cp A_BUTTON
	jr z, .a
	jr .loop

.a
	call PlayClickSFX
	and a
	ret

.b
	scf
	ret

.SetUpMenuItems:
	ld hl, wDrinkGirlItems
	ld a, FRESH_WATER
	bit 0, b
	call nz, .add_item
	ld a, SODA_POP
	bit 1, b
	call nz, .add_item
	ld a, LEMONADE
	bit 2, b
	call nz, .add_item
	ld a, -1
	ld [hl], a
	ret

.add_item
	ld [hli], a
	ret

DrinkGirl_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 13, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 0, 0 ; rows, columns
	dw wDrinkGirlCount
	dw .MenuString

.MenuString:
	push de
	ld a, [wMenuSelection]
	ld [wNamedObjectIndex], a
	call GetItemName
	pop hl
	jp PlaceString

CheckDrinks:
	call .Check
	ld a, b
	ld [wScriptVar], a
	ret

.Check:
	lb bc, 0, 0
	ld a, FRESH_WATER
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	jr nc, .check_soda_pop
	set 0, b
	inc c
.check_soda_pop
	ld a, SODA_POP
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	jr nc, .check_lemonade
	set 1, b
	inc c
.check_lemonade
	ld a, LEMONADE
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	ret nc
	set 2, b
	inc c
	ret
