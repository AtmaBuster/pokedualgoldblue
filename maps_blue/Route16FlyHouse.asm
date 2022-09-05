	object_const_def
	const ROUTE16FLYHOUSE_BRUNETTE_GIRL
	const ROUTE16FLYHOUSE_KANTO_BIRD

Route16FlyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route16FlyHouse_GirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM02_FLY_KANTO
	iftrue .GotItem
	writetext .FoundText
	promptbutton
	verbosegiveitem HM_FLY
	iffalse .BagFull
	setevent EVENT_GOT_HM02_FLY_KANTO
.BagFull:
	closetext
	end

.GotItem:
	writetext .ExplainText
	waitbutton
	closetext
	end

.FoundText:
	text "Oh, you found my"
	line "secret retreat!"

	para "Please don't tell"
	line "anyone I'm here."
	cont "I'll make it up"
	cont "to you with this!"
	done

.ExplainText:
	text "HM02 is FLY."
	line "It will take you"
	cont "back to any town."

	para "Put it to good"
	line "use!"
	done

Route16FlyHouse_FearowScript:
	faceplayer
	opentext
	writetext .Text
	cry FEAROW
	waitbutton
	closetext
	end

.Text:
	text "FEAROW: Kyueen!"
	done

Route16FlyHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, ROUTE_16, 9
	warp_event  3,  7, ROUTE_16, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16FlyHouse_GirlScript, -1
	object_event  6,  4, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16FlyHouse_FearowScript, -1
