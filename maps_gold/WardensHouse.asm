	object_const_def
	const WARDENSHOUSE_WARDEN
	const WARDENSHOUSE_POKE_BALL
	const WARDENSHOUSE_KANTO_BOULDER

WardensHouse_MapScripts:
	def_scene_scripts

	def_callbacks

WardensHouse_WardenScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM04_STRENGTH_KANTO
	iftrue .GotHM
	checkevent EVENT_GAVE_GOLD_TEETH
	iftrue .GaveGoldTeeth
	checkitem GOLD_TEETH
	iftrue .HaveGoldTeeth
	writetext .MuffleText1
	yesorno
	iffalse .SaidNo
	writetext .MuffleText2
	waitbutton
	closetext
	end

.SaidNo:
	writetext .MuffleText3
	waitbutton
	closetext
	end

.HaveGoldTeeth:
	writetext .GaveTeethText
	playsound SFX_ITEM
	waitsfx
	writetext .PoppedTeethInText
	takeitem GOLD_TEETH
	setevent EVENT_GAVE_GOLD_TEETH
.GaveGoldTeeth:
	writetext .ThankYouText
	verbosegiveitem HM_STRENGTH
	iffalse .BagFull
	setevent EVENT_GOT_HM04_STRENGTH_KANTO
.BagFull:
	closetext
	end

.GotHM:
	writetext .ExplainHMText
	waitbutton
	closetext
	end

.MuffleText1:
	text "WARDEN: Hif fuff"
	line "hefifoo!"

	para "Ha lof ha feef ee"
	line "hafahi ho. Heff"
	cont "hee fwee!"
	done

.MuffleText2:
	text "Ah howhee ho hoo!"
	line "Eef ee hafahi ho!"
	done

.MuffleText3:
	text "Ha? He ohay heh"
	line "ha hoo ee haheh!"
	done

.GaveTeethText:
	text "<PLAYER> gave the"
	line "GOLD TEETH to the"
	cont "WARDEN!"
	done

.PoppedTeethInText:
	text "The WARDEN popped"
	line "in his teeth!"
	prompt

.ThankYouText:
	text "WARDEN: Thanks,"
	line "kid! No one could"
	cont "understand a word"
	cont "that I said."

	para "I couldn't work"
	line "that way."
	cont "Let me give you"
	cont "something for"
	cont "your trouble."
	prompt

.ExplainHMText:
	text "WARDEN: HM04"
	line "teaches STRENGTH!"

	para "It lets #MON"
	line "move boulders"
	cont "when you're out-"
	cont "side of battle."

	para "Oh yes, did you"
	line "find SECRET HOUSE"
	cont "in SAFARI ZONE?"

	para "If you do, you"
	line "win an HM!"

	para "I hear it's the"
	line "rare SURF HM."
	done

WardensHouse_RareCandyScript:
	itemball RARE_CANDY

WardensHouse_BoulderScript:
	jumpstd StrengthBoulderScript

WardensHouse_DisplayLScript:
	jumptext .Text
.Text:
	text "#MON photos"
	line "and fossils."
	done

WardensHouse_DisplayRScript:
	jumptext .Text
.Text:
	text "Old #MON"
	line "merchandise."
	done

WardensHouse_MapEvents:
	def_warp_events
	warp_event  4,  7, FUCHSIA_CITY, 4
	warp_event  5,  7, FUCHSIA_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  4,  3, BGEVENT_READ, WardensHouse_DisplayLScript
	bg_event  5,  3, BGEVENT_READ, WardensHouse_DisplayRScript

	def_object_events
	object_event  2,  3, SPRITE_WARDEN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WardensHouse_WardenScript, -1
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WardensHouse_RareCandyScript, EVENT_WARDENS_HOUSE_RARE_CANDY
	object_event  8,  4, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WardensHouse_BoulderScript, -1
