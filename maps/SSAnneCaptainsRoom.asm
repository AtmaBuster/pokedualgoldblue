	object_const_def
	const SSANNECAPTAINSROOM_CAPTAIN

SSAnneCaptainsRoom_MapScripts:
	def_scene_scripts

	def_callbacks

SSAnneCaptainsRoom_CaptainScript:
	checkevent EVENT_GOT_HM01_CUT_KANTO
	iftrue .GotHM
	opentext
	writetext .FeelSickText
	playmusic MUSIC_HEAL
	pause 80
	special RestartMapMusic
	faceplayer
	writetext .ThanksText
	waitbutton
	verbosegiveitem HM_CUT
	iffalse .BagFull
	setevent EVENT_GOT_HM01_CUT_KANTO
.BagFull:
	closetext
	end

.GotHM:
	faceplayer
	opentext
	writetext .TimeToGoText
	waitbutton
	closetext
	end

.FeelSickText:
	text "CAPTAIN: Ooargh..."
	line "I feel hideous..."
	cont "Urrp! Seasick..."

	para "<PLAYER> rubbed"
	line "the CAPTAIN's"
	cont "back!"

	para "Rub-rub..."
	line "Rub-rub..."
	done

.ThanksText:
	text "CAPTAIN: Whew!"
	line "Thank you! I"
	cont "feel much better!"

	para "You want to see"
	line "my CUT technique?"

	para "I could show you"
	line "if I wasn't ill..."

	para "I know! You can"
	line "have this!"

	para "Teach it to your"
	line "#MON and you"
	cont "can see it CUT"
	cont "any time!"
	done

.TimeToGoText:
	text "CAPTAIN: Whew!"

	para "Now that I'm not"
	line "sick any more, I"
	cont "guess it's time."
	done

SSAnneCaptainsRoom_TrashScript:
	jumptext .Text
.Text:
	text "Yuck! Shouldn't"
	line "have looked!"
	done

SSAnneCaptainsRoom_BookScript:
	jumptext .Text
.Text:
	text "How to Conquer"
	line "Seasickness..."
	cont "The CAPTAIN's"
	cont "reading this!"
	done

SSAnneCaptainsRoom_MapEvents:
	def_warp_events
	warp_event  0,  7, SS_ANNE_2F, 9

	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_READ, SSAnneCaptainsRoom_TrashScript
	bg_event  1,  2, BGEVENT_READ, SSAnneCaptainsRoom_BookScript

	def_object_events
	object_event  4,  2, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneCaptainsRoom_CaptainScript, -1
