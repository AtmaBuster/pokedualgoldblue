	object_const_def
	const MUSEUM1F_KANTO_SCIENTIST1
	const MUSEUM1F_GAMBLER
	const MUSEUM1F_KANTO_SCIENTIST2
	const MUSEUM1F_KANTO_SCIENTIST3
	const MUSEUM1F_OLD_AMBER

Museum1F_MapScripts:
	def_scene_scripts
	scene_script .Dummy ; SCENE_DEFAULT

	def_callbacks

.Dummy:
	end

Museum1F_BuyTicketScript:
	checkevent EVENT_BOUGHT_MUSEUM_TICKET
	iftrue .End
	turnobject MUSEUM1F_KANTO_SCIENTIST1, LEFT
	opentext
	special PlaceMoneyTopRight
	writetext .TicketAsk
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, 50 ; cost 50¥
	ifequal HAVE_LESS, .NotEnoughMoney
	writetext .PayMoney
	waitsfx
	playsound SFX_TRANSACTION
	setevent EVENT_BOUGHT_MUSEUM_TICKET
	takemoney YOUR_MONEY, 50
	special PlaceMoneyTopRight
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext .CantAfford
.Refused:
	writetext .ComeAgain
	waitbutton
	closetext
	applymovement PLAYER, .ForceLeave
.End:
	end

.TicketAsk:
	text "It's ¥50 for a"
	line "child's ticket."

	para "Would you like to"
	line "come in?"
	done

.PayMoney:
	text "Right, ¥50!"
	line "Thank you!"
	done

.CantAfford:
	text "You don't have"
	line "enough money."
	prompt

.ComeAgain:
	text "Come again!"
	done

.ForceLeave:
	step DOWN
	step_end

Museum1F_ClerkScript:
	faceplayer
	opentext
	checkevent EVENT_BOUGHT_MUSEUM_TICKET
	iftrue .LookAround
	readvar VAR_FACING
	ifequal UP, .OtherSide
	writetext .SneakInText
	yesorno
	iftrue .LabHint
	writetext .AmberIsText
	waitbutton
	closetext
	end

.LabHint:
	writetext .LabHintText
	waitbutton
	closetext
	end

.LookAround:
	writetext .LookAroundText
	waitbutton
	closetext
	end

.OtherSide:
	writetext .OtherSideText
	waitbutton
	closetext
	end

.SneakInText:
	text "You can't sneak"
	line "in the back way!"

	para "Oh, whatever!"
	line "Do you know what"
	cont "AMBER is?"
	done

.AmberIsText:
	text "AMBER is fossil-"
	line "ized tree sap."
	done

.LabHintText:
	text "There's a lab"
	line "somewhere trying"
	cont "to resurrect"
	cont "ancient #MON"
	cont "from AMBER."
	done

.LookAroundText:
	text "Take plenty of"
	line "time to look!"
	done

.OtherSideText:
	text "Please go to the"
	line "other side!"
	done

Museum1F_AmberScientistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_AMBER
	iftrue .GotItem
	writetext .GiveAmberText
	verbosegiveitem OLD_AMBER
	iffalse .BagFull
	setevent EVENT_GOT_OLD_AMBER
	disappear MUSEUM1F_OLD_AMBER
	closetext
	end

.GotItem:
	writetext .GetCheckedText
	waitbutton
.BagFull:
	closetext
	end

.GiveAmberText:	text "Ssh! I think that"
	line "this chunk of"
	cont "AMBER contains"
	cont "#MON DNA!"

	para "It would be great"
	line "if #MON could"
	cont "be resurrected"
	cont "from it!"

	para "But, my colleagues"
	line "just ignore me!"

	para "So I have a favor"
	line "to ask!"

	para "Take this to a"
	line "#MON LAB and"
	cont "get it examined!"
	prompt

.GetCheckedText:
	text "Ssh! Get the OLD"
	line "AMBER checked!"
	done

Museum1F_GamblerScript:
	jumptextfaceplayer .Text
.Text:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

Museum1F_ScientistScript:
	jumptextfaceplayer .Text
.Text:
	text "We are proud of 2"
	line "fossils of very"
	cont "rare, prehistoric"
	cont "#MON!"
	done

Museum1F_OldAmberScript:
	jumptext .Text
.Text:
	text "The AMBER is"
	line "clear and gold!"
	done

Museum1F_AerodactylFossilScript:
	refreshscreen
	pokepic AERODACTYL
	waitbutton
	closepokepic
	opentext
	writetext .Text
	waitbutton
	closetext
	end
.Text:
	text "AERODACTYL Fossil"
	line "A primitive and"
	cont "rare #MON."
	done

Museum1F_KabutopsFossilScript:
	refreshscreen
	pokepic KABUTOPS
	waitbutton
	closepokepic
	opentext
	writetext .Text
	waitbutton
	closetext
	end
.Text:
	text "KABUTOPS Fossil"
	line "A primitive and"
	cont "rare #MON."
	done

Museum1F_MapEvents:
	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 1
	warp_event 11,  7, PEWTER_CITY, 1
	warp_event 16,  7, PEWTER_CITY, 2
	warp_event 17,  7, PEWTER_CITY, 2
	warp_event  7,  7, MUSEUM_2F, 1

	def_coord_events
	coord_event  9,  4, SCENE_DEFAULT, Museum1F_BuyTicketScript
	coord_event 10,  4, SCENE_DEFAULT, Museum1F_BuyTicketScript

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, Museum1F_AerodactylFossilScript
	bg_event  2,  6, BGEVENT_READ, Museum1F_KabutopsFossilScript

	def_object_events
	object_event 12,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1F_ClerkScript, -1
	object_event  1,  4, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1F_GamblerScript, -1
	object_event 15,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1F_AmberScientistScript, -1
	object_event 17,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1F_ScientistScript, -1
	object_event 16,  2, SPRITE_OLD_AMBER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1F_OldAmberScript, EVENT_MUSEUM1F_OLD_AMBER
