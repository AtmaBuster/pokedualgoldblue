	object_const_def
	const SSANNEBOW_KANTO_SUPER_NERD
	const SSANNEBOW_KANTO_SAILOR1
	const SSANNEBOW_COOLTRAINER_M
	const SSANNEBOW_KANTO_SAILOR2
	const SSANNEBOW_KANTO_SAILOR3

SSAnneBow_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSailorEdmond:
	trainer SAILOR_GEN1, EDMOND_GEN1, EVENT_BEAT_SAILOR_EDMOND_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey matey!"

	para "Let's do a little"
	line "jig!"
	done

.BeatenText:
	text "You're impressive!"
	done

.AfterText:
	text "How many kinds of"
	line "#MON do you"
	cont "think there are?"
	done

TrainerSailorTrevor:
	trainer SAILOR_GEN1, TREVOR_GEN1, EVENT_BEAT_SAILOR_TREVOR_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Ahoy there!"
	line "Are you seasick?"
	done

.BeatenText:
	text "I was just"
	line "careless!"
	done

.AfterText:
	text "My Pa said there"
	line "are 100 kinds of"
	cont "#MON. I think"
	cont "there are more."
	done

SSAnneBow_SuperNerdScript:
	jumptextfaceplayer .Text
.Text:
	text "The party's over."
	line "The ship will be"
	cont "departing soon."
	done

SSAnneBow_SailorScript:
	jumptextfaceplayer .Text
.Text:
	text "Scrubbing decks"
	line "is hard work!"
	done


SSAnneBow_SeasickScript:
	jumptextfaceplayer .Text
.Text:
	text "Urf. I feel ill."

	para "I stepped out to"
	line "get some air."
	done

SSAnneBow_MapEvents:
	def_warp_events
	warp_event 13,  6, SS_ANNE_3F, 1
	warp_event 13,  7, SS_ANNE_3F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneBow_SuperNerdScript, -1
	object_event  4,  9, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneBow_SailorScript, -1
	object_event  7, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneBow_SeasickScript, -1
	object_event  4,  4, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorEdmond, -1
	object_event 10,  8, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorTrevor, -1
