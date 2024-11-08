SSAnneAnimation:
	lb de, 0, 8
.loop_1
	call SSAnneAnim_DrawColumn
	call SSAnneAnim_SpawnSmokePuff
	ld b, 16
.loop_2
	call SSAnneAnim_DriftSmokePuff
	ld c, 8
.loop_3
	call SSAnneAnim_WaitFrame
	dec c
	jr nz, .loop_3
	inc d
	dec b
	jr nz, .loop_2
	dec e
	jr nz, .loop_1
	call SSAnneAnim_ClearShip
	ret

SSAnneAnim_DrawColumn:
; draw column to the east
; wait for vblank
	di
.vblank_wait
	ldh a, [rLY]
	cp $90
	jr c, .vblank_wait
; get first tile location in vram
	ld a, 8
	sub e
	add a
	add $14
	and $1f
	add $40
	ld l, a
	ld h, $99
	push de
	push bc
	ld bc, $0020
	ld d, 6
.loop
	ld a, $14
	ld [hli], a
	ld [hld], a
	ld a, 1
	ldh [rVBK], a
	ld a, 3
	ld [hli], a
	ld [hld], a
	xor a
	ldh [rVBK], a
	add hl, bc
	dec d
	jr nz, .loop
	pop bc
	pop de
	reti

SSAnneAnim_WaitFrame:
; update screen scroll registers and wait frame
	ld h, d
	ld l, $50
	call .wait_line
	lb hl, 0, $80
.wait_line
	ldh a, [rLY]
	cp l
	jr nz, .wait_line
	ld a, h
	ldh [rSCX], a
	ret

SSAnneAnim_ClearShip:
; clear ship tiles and smoke puff after it has left
	ld hl, wVirtualOAMSprite04
	ld bc, 16
	xor a
	call ByteFill
; wait for vblank
	di
.vblank_wait
	ldh a, [rLY]
	cp $90
	jr c, .vblank_wait
	ld a, 1
	ldh [rVBK], a
	ld a, 3
	ld hl, $9944
	lb bc, 12, 6
	ld de, $20
	call .fill_box
	xor a
	ldh [rVBK], a
	ld a, $14
	ld hl, $9944
	lb bc, 12, 6
	ld de, $20
	call .fill_box
	reti

.fill_box
.loop_y
	push bc
	push hl
.loop_x
	ld [hli], a
	dec b
	jr nz, .loop_x
	pop hl
	pop bc
	add hl, de
	dec c
	jr nz, .loop_y
	ret

SSAnneAnim_SpawnSmokePuff:
	ld a, 8
	sub e
	swap a
	push de
	ld e, a
	ld a, $4a ; init x
	sub e
	ld hl, wVirtualOAMSprite04
	push af
	ld d, a
	ld e, $64 ; init y
	call .put_oam
	ld a, d
	add 8
	ld d, a
	call .put_oam
	pop af
	ld d, a
	ld e, $6c
	call .put_oam
	ld a, d
	add 8
	ld d, a
	call .put_oam
	pop de
	ret

.put_oam
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	ld a, $fe ; tile
	ld [hli], a
	ld a, $10
	ld [hli], a
	ret

SSAnneAnim_DriftSmokePuff:
	ld hl, wVirtualOAMSprite04XCoord
	push bc
	push de
	ld bc, 4
	ld e, 4
.loop
	ld a, [hl]
	add 2
	ld [hl], a
	add hl, bc
	dec e
	jr nz, .loop
	pop de
	pop bc
	ret
