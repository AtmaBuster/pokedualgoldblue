_CardKey:
; Are we even in the right map to use this?
	ld a, [wMapGroup]
	cp GROUP_RADIO_TOWER_3F
	jr nz, .nope

	ld a, [wMapNumber]
	cp MAP_RADIO_TOWER_3F
	jr nz, .nope
; Are we facing the slot?
	ld a, [wPlayerDirection]
	and %1100
	cp OW_UP
	jr nz, .nope

	call GetFacingTileCoord
	ld a, d
	cp 18
	jr nz, .nope
	ld a, e
	cp 6
	jr nz, .nope
; Let's use the Card Key.
	ld hl, .CardKeyScript
	call QueueScript
	ld a, TRUE
	ld [wItemEffectSucceeded], a
	ret

.nope
	ld a, FALSE
	ld [wItemEffectSucceeded], a
	ret

.CardKeyScript:
	closetext
	farsjump CardKeySlotScript

CardKeyDoorScript::
	opentext
	checkitem CARD_KEY
	iffalse .NoCardKey
	writetext .BingoText
	waitbutton
	callasm .ChangeBlock
	reloadmappart
	closetext
	callasm .SetMemEvent
	end

.NoCardKey:
	writetext .NeedsCardKeyText
	waitbutton
	closetext
	end

.BingoText:
	text "Bingo!"
	line "The CARD KEY"
	cont "opened the door!"
	done

.NeedsCardKeyText:
	text "Darn! It needs a"
	line "CARD KEY!"
	done

.ChangeBlock:
	ld a, [wKeyDoorBlockX]
	ld d, a
	ld a, [wKeyDoorBlockY]
	ld e, a
	call GetBlockLocation
	ld a, [wKeyDoorEmptyBlock]
	ld [hl], a
	call BufferScreen
	ret

.SetMemEvent:
	ld hl, wKeyDoorEvent
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld b, SET_FLAG
	call EventFlagAction
	ret
