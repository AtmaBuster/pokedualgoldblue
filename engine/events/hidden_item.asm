HiddenItemScript::
	opentext
	readmem wHiddenItemID
	getitemname STRING_BUFFER_3, USE_SCRIPT_VAR
	writetext .PlayerFoundItemText
	giveitem ITEM_FROM_MEM
	iffalse .bag_full
	callasm SetMemEvent
	specialsound
	itemnotify
	sjump .finish

.bag_full
	promptbutton
	writetext .ButNoSpaceText
	waitbutton

.finish
	closetext
	end

.PlayerFoundItemText:
	text_far _PlayerFoundItemText
	text_end

.ButNoSpaceText:
	text_far _ButNoSpaceText
	text_end

SetMemEvent:
	ld hl, wHiddenItemEvent
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld b, SET_FLAG
	call EventFlagAction
	ret

HiddenCoinScript::
	checkitem COIN_CASE
	iffalse DummyScript
	opentext
	readmem wHiddenCoinAmount
	writetext .GotCoinsText
	playsound SFX_ITEM
	waitsfx
	callasm .CheckCoins
	ifequal HAVE_LESS, .SkipDropped
	promptbutton
	writetext .DroppedSomeText
	waitbutton
.SkipDropped:
	callasm .GiveCoins
	closetext
	callasm SetMemEvent
	end

.GiveCoins:
	ld a, [wHiddenCoinAmount]
	ldh [hMoneyTemp + 1], a
	ld a, [wHiddenCoinAmount + 1]
	ldh [hMoneyTemp], a
	ld bc, hMoneyTemp
	farcall GiveCoins
	ret

.CheckCoins:
	ld a, [wHiddenCoinAmountMax]
	ldh [hMoneyTemp + 1], a
	ld a, [wHiddenCoinAmountMax + 1]
	ldh [hMoneyTemp], a
	ld bc, hMoneyTemp
	farcall CheckCoins
	jr c, .less
	jr z, .exact
	ld a, HAVE_MORE
	jr .done

.exact
	ld a, HAVE_AMOUNT
	jr .done

.less
	ld a, HAVE_LESS
.done
	ld [wScriptVar], a
	ret

.GotCoinsText:
	text "<PLAYER> found"
	line "@"
	text_decimal wScriptVar, 1, 3
	text " coins!"
	done

.DroppedSomeText:
	text "Oops! Dropped"
	line "some coins!"
	done
