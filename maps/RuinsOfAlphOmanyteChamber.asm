RuinsOfAlphOmanyteChamber_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .HiddenDoors

.HiddenDoors:
	checkevent EVENT_SOLVED_OMANYTE_PUZZLE
	iffalse .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $01 ; left floor
	changeblock 4, 2, $02 ; right floor
	endcallback

RuinsOfAlphOmanyteChamberPuzzle:
	refreshscreen
	setval UNOWNPUZZLE_OMANYTE
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_OMANYTE_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_L_TO_R
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	warpcheck
	end

RuinsOfAlphOmanyteChamberAncientReplica:
	jumptext RuinsOfAlphOmanyteChamberAncientReplicaText

RuinsOfAlphOmanyteChamberDescriptionSign:
	jumptext RuinsOfAlphOmanyteChamberDescriptionText

RuinsOfAlphOmanyteChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

RuinsOfAlphOmanyteChamberDescriptionText:
	text "This #MON"
	line "drifted in the"

	para "sea by twisting"
	line "its ten tentacles."
	done

RuinsOfAlphOmanyteChamber_MapEvents:
	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 6
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 7

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphOmanyteChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphOmanyteChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphOmanyteChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphOmanyteChamberDescriptionSign

	def_object_events
