	object_const_def
	const BLUESHOUSE_DAISY1
	const BLUESHOUSE_DAISY2
	const BLUESHOUSE_POKEDEX

BluesHouse_MapScripts:
	def_scene_scripts
	scene_script .SetVisitFlag ; SCENE_DEFAULT
	scene_script .Dummy        ; SCENE_FINISHED

	def_callbacks

.SetVisitFlag
	setevent EVENT_ENTERED_BLUES_HOUSE
	setscene SCENE_FINISHED
.Dummy
	end

BluesHouseDaisyStandingScript:
	opentext
	faceplayer
	checkevent EVENT_GOT_TOWN_MAP
	iftrue .GotTownMap
	checkevent EVENT_GOT_POKEDEX
	iftrue .GiveTownMap
	writetext .DaisyInitialText
	waitbutton
	closetext
	end

.GiveTownMap
	writetext .DaisyOfferMapText
	verbosegiveitem TOWN_MAP
	iffalse .BagFull
	disappear BLUESHOUSE_POKEDEX
	setevent EVENT_GOT_TOWN_MAP
	closetext
	end

.GotTownMap
	writetext .DaisyUseMapText
	waitbutton
	closetext
	end

.BagFull
	writetext .DaisyBagFullText
	waitbutton
	closetext
	end

.DaisyInitialText:
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

.DaisyOfferMapText:
	text "Grandpa asked you"
	line "to run an errand?"
	cont "Here, this will"
	cont "help you!"
	prompt

.DaisyBagFullText:
	text "You have too much"
	line "stuff with you."
	done

.DaisyUseMapText
	text "Use the TOWN MAP"
	line "to find out where"
	cont "you are."
	done

BluesHouseDaisyWalkingScript:
	jumptextfaceplayer .Text
.Text
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done

BluesHouseTownMapScript:
	jumptext .Text
.Text
	text "It's a big map!"
	line "This is useful!"
	done

BluesHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BluesHouseDaisyStandingScript, EVENT_BLUES_HOUSE_DAISY_STANDING
	object_event  6,  4, SPRITE_DAISY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BluesHouseDaisyWalkingScript, EVENT_BLUES_HOUSE_DAISY_WALKING
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BluesHouseTownMapScript, EVENT_BLUES_HOUSE_TOWN_MAP
