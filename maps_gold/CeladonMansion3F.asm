	object_const_def
	const CELADONMANSION3F_BIKE_SHOP_CLERK
	const CELADONMANSION3F_KANTO_CLERK
	const CELADONMANSION3F_KANTO_SUPER_NERD
	const CELADONMANSION3F_SILPH_WORKER

CeladonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansion3F_ProgrammerScript:
	jumptextfaceplayer .Text
.Text:
	text "Me? I'm the"
	line "programmer!"
	done

CeladonMansion3F_GraphicArtistScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm the graphic"
	line "artist!"
	cont "I drew you!"
	done

CeladonMansion3F_WriterScript:
	jumptextfaceplayer .Text
.Text:
	text "I wrote the story!"
	line "Isn't ERIKA cute?"

	para "I like MISTY a"
	line "lot too!"

	para "Oh, and SABRINA,"
	line "I like her!"
	done

CeladonMansion3F_DesignerScript:
	faceplayer
	opentext
	writetext .Text1
	readvar VAR_DEXCAUGHT
	ifgreater NUM_POKEMON - 2 - 1, .Completed
	waitbutton
	closetext
	end

.Completed:
	promptbutton
	writetext .Text2
	promptbutton
	special Diploma
	closetext
	end

.Text1:
	text "Is that right?"

	para "I'm the game"
	line "designer!"

	para "Filling up your"
	line "#DEX is tough,"
	cont "but don't quit!"

	para "When you finish,"
	line "come tell me!"
	done

.Text2:
	text "Wow! Excellent!"
	line "You completed"
	cont "your #DEX!"
	cont "Congratulations!"
	cont "..."
	done

CeladonMansion3F_ProgramScript:
	jumptext .Text
.Text:
	text "It's the game"
	line "program! Messing"
	cont "with it could bug"
	cont "out the game!"
	done

CeladonMansion3F_PlayingScript:
	jumptext .Text
.Text:
	text "Someone's playing"
	line "a game instead of"
	cont "working!"
	done

CeladonMansion3F_ScriptScript:
	jumptext .Text
.Text:
	text "It's the script!"
	line "Better not look"
	cont "at the ending!"
	done

CeladonMansion3F_SignScript:
	jumptext .Text
.Text:
	text "GAME FREAK"
	line "Development Room"
	done

CeladonMansion3F_MapEvents:
	def_warp_events
	warp_event  6,  1, CELADON_MANSION_2F, 1
	warp_event  7,  1, CELADON_MANSION_ROOF, 1
	warp_event  2,  1, CELADON_MANSION_ROOF, 2
	warp_event  4,  1, CELADON_MANSION_2F, 4

	def_coord_events

	def_bg_events
	bg_event  1,  3, BGEVENT_READ, CeladonMansion3F_ProgramScript
	bg_event  4,  3, BGEVENT_READ, CeladonMansion3F_PlayingScript
	bg_event  1,  6, BGEVENT_READ, CeladonMansion3F_ScriptScript
	bg_event  4,  9, BGEVENT_READ, CeladonMansion3F_SignScript

	def_object_events
	object_event  0,  4, SPRITE_BIKE_SHOP_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion3F_ProgrammerScript, -1
	object_event  3,  4, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion3F_GraphicArtistScript, -1
	object_event  0,  7, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion3F_WriterScript, -1
	object_event  2,  3, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion3F_DesignerScript, -1
