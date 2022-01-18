IsInJohto::
; In Johto: z and c are set, a = 0
; In Kanto: z and c are clear, a = 1

	push bc
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation

	cp LANDMARK_FAST_SHIP
	jr z, .Johto

	cp LANDMARK_SPECIAL
	jr nz, .CheckRegion

	ld a, [wBackupMapGroup]
	ld b, a
	ld a, [wBackupMapNumber]
	ld c, a
	call GetWorldMapLocation

.CheckRegion:
	cp KANTO_LANDMARK
	jr nc, .Kanto

.Johto:
	pop bc
	xor a ; JOHTO_REGION
	scf
	ret

.Kanto:
	pop bc
	ld a, KANTO_REGION
	and a
	ret
