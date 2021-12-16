	object_const_def
	const VERMILIONCITY_KANTO_BEAUTY
	const VERMILIONCITY_GAMBLER1
	const VERMILIONCITY_KANTO_SAILOR1
	const VERMILIONCITY_GAMBLER2
	const VERMILIONCITY_MONSTER
	const VERMILIONCITY_KANTO_SAILOR2

VermilionCity_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionCity_ShipGuardScript:
	faceplayer
	opentext
	checkevent EVENT_SS_ANNE_LEFT
	iftrue .SetSail
	writetext .WelcomeText
	waitbutton
	closetext
	end

.SetSail:
	writetext .LeftText
	waitbutton
	closetext
	end

.WelcomeText:
	text "Welcome to S.S."
	line "ANNE!"
	done

.LeftText:
	text "The ship set sail."
	done

VermilionCity_TicketCheckScript:
	checkevent EVENT_VERMILION_CITY_PASSED_TICKET_CHECK
	iftrue .End
	opentext
	checkevent EVENT_SS_ANNE_LEFT
	iftrue .SSAnneLeft
	writetext .AskTicketText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext .FlashTicketText
	waitbutton
	closetext
	setevent EVENT_VERMILION_CITY_PASSED_TICKET_CHECK
	end

.NoTicket:
	writetext .NoTicketText
	sjump .ForceLeave

.SSAnneLeft:
	writetext .LeftText
.ForceLeave:
	waitbutton
	closetext
	applymovement PLAYER, .MoveUpMovement
.End:
	end

.AskTicketText:
	text "Welcome to S.S."
	line "ANNE!"

	para "Excuse me, do you"
	line "have a ticket?"
	done

.FlashTicketText:
	text "<PLAYER> flashed"
	line "the S.S.TICKET!"

	para "Great! Welcome to"
	line "S.S.ANNE!"
	done

.NoTicketText:
	text "<PLAYER> doesn't"
	line "have the needed"
	cont "S.S.TICKET."

	para "Sorry!"

	para "You need a ticket"
	line "to get aboard."
	done

.LeftText:
	text "The ship set sail."
	done

.MoveUpMovement:
	step UP
	step_end

VermilionCity_ResetTicketCheckScript:
	clearevent EVENT_VERMILION_CITY_PASSED_TICKET_CHECK
	end

VermilionCity_BeautyScript:
	jumptextfaceplayer .Text
.Text:
	text "We're careful"
	line "about pollution!"

	para "We've heard GRIMER"
	line "multiplies in"
	cont "toxic sludge!"
	done

VermilionCity_SSAnneGuyScript:
	faceplayer
	opentext
	checkevent EVENT_SS_ANNE_LEFT
	iftrue .Left
	writetext .Text1
	waitbutton
	closetext
	end

.Left:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Did you see S.S."
	line "ANNE moored in"
	cont "the harbor?"
	done

.Text2:
	text "So, S.S.ANNE has"
	line "departed!"

	para "She'll be back in"
	line "about a year."
	done

VermilionCity_BuilderScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm putting up a"
	line "building on this"
	cont "plot of land."

	para "My #MON is"
	line "tamping the land."
	done

VermilionCity_MachopScript:
	faceplayer
	opentext
	writetext .Text1
	cry MACHOP
	waitsfx
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "MACHOP: Guoh!"
	line "Gogogoh!"
	done

.Text2:
	text "A MACHOP is"
	line "stomping the land"
	cont "flat."
	done

VermilionCity_SailorScript:
	jumptextfaceplayer .Text
.Text:
	text "S.S.ANNE is a"
	line "famous luxury"
	cont "cruise ship."

	para "We visit VERMILION"
	line "once a year."
	done

VermilionCity_NameSignScript:
	jumptext .Text
.Text:
	text "VERMILION CITY"
	line "The Port of"
	cont "Exquisite Sunsets"
	done

VermilionCity_DetourSignScript:
	jumptext .Text
.Text:
	text "NOTICE!"

	para "ROUTE 12 may be"
	line "blocked off by a"
	cont "sleeping #MON."

	para "Detour through"
	line "ROCK TUNNEL to"
	cont "LAVENDER TOWN."

	para "VERMILION POLICE"
	done

VermilionCity_MartSignScript:
	jumptext .Text
.Text:
	text "All your item"
	line "needs fulfilled!"
	cont "#MON MART"
	done

VermilionCity_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

VermilionCity_FanClubSignScript:
	jumptext .Text
.Text:
	text "#MON FAN CLUB"
	line "All #MON fans"
	cont "welcome!"
	done

VermilionCity_GymSignScript:
	jumptext .Text
.Text:
	text "VERMILION CITY"
	line "#MON GYM"
	cont "LEADER: LT.SURGE"

	para "The Lightning "
	line "American!"
	done

VermilionCity_HarborSignScript:
	jumptext .Text
.Text:
	text "VERMILION HARBOR"
	done

VermilionCity_HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_VERMILION_CITY_HIDDEN_MAX_ETHER

VermilionCity_MapEvents:
	def_warp_events
	warp_event 11,  3, VERMILION_POKECENTER, 1
	warp_event  9, 13, POKEMON_FAN_CLUB, 1
	warp_event 23, 13, VERMILION_MART, 1
	warp_event 12, 19, VERMILION_GYM, 1
	warp_event 23, 19, VERMILION_PIDGEY_HOUSE, 1
	warp_event 18, 31, VERMILION_DOCK, 1
	warp_event 19, 31, VERMILION_DOCK, 1
	warp_event 15, 13, VERMILION_TRADE_HOUSE, 1
	warp_event  7,  3, VERMILION_OLD_ROD_HOUSE, 1

	def_coord_events
	coord_event 18, 30, SCENE_DEFAULT, VermilionCity_TicketCheckScript
	coord_event 18, 29, SCENE_DEFAULT, VermilionCity_ResetTicketCheckScript

	def_bg_events
	bg_event 27,  3, BGEVENT_READ, VermilionCity_NameSignScript
	bg_event 37, 13, BGEVENT_READ, VermilionCity_DetourSignScript
	bg_event 24, 13, BGEVENT_READ, VermilionCity_MartSignScript
	bg_event 12,  3, BGEVENT_READ, VermilionCity_PMCSignScript
	bg_event  7, 13, BGEVENT_READ, VermilionCity_FanClubSignScript
	bg_event  7, 19, BGEVENT_READ, VermilionCity_GymSignScript
	bg_event 29, 15, BGEVENT_READ, VermilionCity_HarborSignScript
	bg_event 14, 11, BGEVENT_ITEM, VermilionCity_HiddenMaxEther

	def_object_events
	object_event 19,  7, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCity_BeautyScript, -1
	object_event 14,  6, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCity_SSAnneGuyScript, -1
	object_event 19, 30, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCity_ShipGuardScript, -1
	object_event 30,  7, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCity_BuilderScript, -1
	object_event 29,  9, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCity_MachopScript, -1
	object_event 25, 27, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCity_SailorScript, -1
