InitSpriteAnimStruct::
	ld [wSpriteAnimID], a
	ldh a, [hROMBank]
	push af

	ld a, BANK(_InitSpriteAnimStruct)
	rst Bankswitch
	ld a, [wSpriteAnimID]

	call _InitSpriteAnimStruct

	pop af
	rst Bankswitch

	ret
