SafariGameBattleScript::
	loadvar VAR_BATTLETYPE, BATTLETYPE_SAFARI
	randomwildmon
	startbattle
	reloadmapafterbattle
	readmem wSafariBallsRemaining
	iffalse SafariGameOverScript
	end

Script_AbortSafariGame::
	setmapscene SAFARI_ZONE_GATE, SCENE_SAFARI_ZONE_GATE_NOTHING
	clearflag ENGINE_IN_SAFARI_GAME
	end

SafariGameOverScript::
	playmusic MUSIC_NONE
	opentext
	playsound SFX_ELEVATOR_END
	writetext .TimesUpText
	waitbutton
	closetext
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	setmapscene SAFARI_ZONE_GATE, SCENE_SAFARI_ZONE_GATE_GAME_OVER
	warp SAFARI_ZONE_GATE, 4, 0
	end

.TimesUpText:
	text "PA: Ding-dong!"

	para "Time's up!"

	para "PA: Your SAFARI"
	line "GAME is over!"
	done
