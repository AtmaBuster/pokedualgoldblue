	object_const_def
	const SAFARIZONEGATE_SAFARI_ZONE_WORKER1
	const SAFARIZONEGATE_SAFARI_ZONE_WORKER2

SafariZoneGate_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_SAFARI_ZONE_GATE_NOTHING
	scene_script .TryLeave   ; SCENE_SAFARI_ZONE_GATE_TRY_LEAVE
	scene_script .GameOver   ; SCENE_SAFARI_ZONE_GATE_GAME_OVER

	def_callbacks

.TryLeave:
	sdefer .TryLeaveScript
	end

.GameOver:
	sdefer .GameOverScript
	end

.TryLeaveScript:
	opentext
	writetext .LeavingEarlyText
	yesorno
	iffalse .SaidNo
	writetext .ReturnBallsText
	sjump .LeaveAndFinish

.SaidNo:
	writetext .GoodLuckText
	waitbutton
	closetext
	turnobject PLAYER, UP
	pause 5
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	readvar VAR_XCOORD
	ifequal 3, .LeftDoor
	warpfacing UP, SAFARI_ZONE_CENTER, 15, 25
	end

.LeftDoor:
	warpfacing UP, SAFARI_ZONE_CENTER, 14, 25
	end

.GameOverScript:
	opentext
	writetext .GoodHaulText
.LeaveAndFinish:
	waitbutton
	closetext
	applymovement PLAYER, .LeaveMovement
	setscene SCENE_SAFARI_ZONE_GATE_NOTHING
	clearflag ENGINE_IN_SAFARI_GAME
	end

.LeavingEarlyText:
	text "Leaving early?"
	done

.ReturnBallsText:
	text "Please return any"
	line "SAFARI BALLs you"
	cont "have left."
	done

.GoodLuckText:
	text "Good Luck!"
	done

.GoodHaulText:
	text "Did you get a"
	line "good haul?"
	cont "Come again!"
	done

.LeaveMovement:
	step DOWN
	step DOWN
	step DOWN
	step_end

SafariZoneGate_HelpGuyScript:
	faceplayer
	opentext
	writetext .FirstTimeText
	yesorno
	iftrue .SaidYes
	writetext .SaidNoText
	waitbutton
	closetext
	end

.SaidYes:
	writetext .SaidYesText
	waitbutton
	closetext
	end

.FirstTimeText:
	text "Hi! Is it your"
	line "first time here?"
	done
	
.SaidNoText:
	text "Sorry, you're a"
	line "regular here!"
	done
	
.SaidYesText:
	text "SAFARI ZONE has 4"
	line "zones in it."

	para "Each zone has"
	line "different kinds"
	cont "of #MON. Use"
	cont "SAFARI BALLs to"
	cont "catch them!"

	para "When you run out"
	line "of time or SAFARI"
	cont "BALLs, it's game"
	cont "over for you!"

	para "Before you go,"
	line "open an unused"
	cont "#MON BOX so"
	cont "there's room for"
	cont "new #MON!"
	done

SafariZoneGate_EnterScriptL:
	opentext
	writetext SafariZoneGate_WelcomeText
	waitbutton
	closetext
	applymovement PLAYER, .RightMovement
	sjump SafariZoneGate_EnterScript

.RightMovement:
	step RIGHT
	step_end

SafariZoneGate_EnterScriptR:
	opentext
	writetext SafariZoneGate_WelcomeText
	waitbutton
	closetext
SafariZoneGate_EnterScript:
	opentext
	writetext .CatchMonsText
	special PlaceMoneyTopRight
	yesorno
	iffalse .ComeAgain
	checkmoney YOUR_MONEY, 500 ; price
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, 500
	special PlaceMoneyTopRight
	writetext .PayUpText
	playsound SFX_ITEM
	waitsfx
	promptbutton
	writetext .CallYouText
	waitbutton
	closetext
	applymovement PLAYER, .EnterGameMovement
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	callasm .InitSafariGameASM
	setscene SCENE_SAFARI_ZONE_GATE_TRY_LEAVE
	warpfacing UP, SAFARI_ZONE_CENTER, 15, 25
	end

.NotEnoughMoney:
	writetext .NotEnoughMoneyText
	sjump .FinishLeave

.ComeAgain:
	writetext .ComeAgainText
.FinishLeave:
	waitbutton
	closetext
	applymovement PLAYER, .DownMovement
	end

.CatchMonsText:
	text "For just ¥500,"
	line "you can catch all"
	cont "the #MON you"
	cont "want in the park!"

	para "Would you like to"
	line "join the hunt?"
	done

.PayUpText:
	text "That'll be ¥500"
	line "please!"

	para "We only use a"
	line "special # BALL"
	cont "here."

	para "<PLAYER> received"
	line "30 SAFARI BALLs!"
	done

.CallYouText:
	text "We'll call you on"
	line "the PA when you"
	cont "run out of time"
	cont "or SAFARI BALLs!"
	done

.NotEnoughMoneyText:
	text "Oops! Not enough"
	line "money!"
	done

.ComeAgainText:
	text "OK! Please come"
	line "again!"
	done

.EnterGameMovement:
	step UP
	step UP
	step_end

.DownMovement:
	step DOWN
	step_end

.InitSafariGameASM:
	ld a, 30 ; num Safari Balls
	ld [wSafariBallsRemaining], a
	ld a, HIGH(500)
	ld [wSafariSteps], a
	ld a, LOW(500)
	ld [wSafariSteps + 1], a
	ld hl, wStatusFlags2
	set STATUSFLAGS2_IN_SAFARI_GAME_F, [hl]
	ret

SafariZoneGate_WelcomeText:
	text "Welcome to the"
	line "SAFARI ZONE!"
	done

SafariZoneGate_MapEvents:
	def_warp_events
	warp_event  3,  5, FUCHSIA_CITY, 5
	warp_event  4,  5, FUCHSIA_CITY, 5
	warp_event  3,  0, SAFARI_ZONE_CENTER, 1
	warp_event  4,  0, SAFARI_ZONE_CENTER, 2

	def_coord_events
	coord_event  3,  2, SCENE_SAFARI_ZONE_GATE_NOTHING, SafariZoneGate_EnterScriptL
	coord_event  4,  2, SCENE_SAFARI_ZONE_GATE_NOTHING, SafariZoneGate_EnterScriptR

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneGate_HelpGuyScript, -1
