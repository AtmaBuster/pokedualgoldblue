	object_const_def
	const SSANNE2FROOMS_GENTLEMAN1
	const SSANNE2FROOMS_FISHER
	const SSANNE2FROOMS_GENTLEMAN2
	const SSANNE2FROOMS_COOLTRAINER_F
	const SSANNE2FROOMS_GENTLEMAN3
	const SSANNE2FROOMS_POKE_BALL1
	const SSANNE2FROOMS_GENTLEMAN4
	const SSANNE2FROOMS_KANTO_GRAMPS
	const SSANNE2FROOMS_POKE_BALL2
	const SSANNE2FROOMS_GENTLEMAN5
	const SSANNE2FROOMS_LITTLE_BOY
	const SSANNE2FROOMS_BRUNETTE_GIRL
	const SSANNE2FROOMS_KANTO_BEAUTY

SSAnne2FRooms_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGentlemanBrooks:
	trainer GENTLEMAN_GEN1, BROOKS_GEN1, EVENT_BEAT_GENTLEMAN_BROOKS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Competing against"
	line "the young keeps"
	cont "me youthful."
	done

.BeatenText:
	text "Good"
	line "fight! Ah, I feel"
	cont "young again!"
	done

.AfterText:
	text "15 years ago, I"
	line "would have won!"
	done

TrainerFisherDale:
	trainer FISHER_GEN1, DALE_GEN1, EVENT_BEAT_FISHER_DALE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Check out what I"
	line "fished up!"
	done

.BeatenText:
	text "I'm"
	line "all out!"
	done

.AfterText:
	text "Party?"

	para "The cruise ship's"
	line "party should be"
	cont "over by now."
	done

TrainerGentlemanLamar:
	trainer GENTLEMAN_GEN1, LAMAR_GEN1, EVENT_BEAT_GENTLEMAN_LAMAR_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Which do you like,"
	line "a strong or a"
	cont "rare #MON?"
	done

.BeatenText:
	text "I must"
	line "salute you!"
	done

.AfterText:
	text "I prefer strong"
	line "and rare #MON."
	done

TrainerLassDawn:
	trainer LASS_GEN1, DAWN_GEN1, EVENT_BEAT_LASS_DAWN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I never saw you"
	line "at the party."
	done

.BeatenText:
	text "Take"
	line "it easy!"
	done

.AfterText:
	text "Oh, I adore your"
	line "strong #MON!"
	done

SSAnne2FRooms_SnorlaxManScript:
	faceplayer
	opentext
	writetext .Text
	waitbutton
	closetext
	pokepic SNORLAX
	cry SNORLAX
	waitbutton
	closepokepic
	closetext
	end

.Text:
	text "In all my travels"
	line "I've never seen"
	cont "any #MON sleep"
	cont "like this one!"

	para "It was something"
	line "like this!"
	done

SSAnne2FRooms_SurfManScript:
	jumptextfaceplayer .Text
.Text:
	text "Ah yes, I have"
	line "seen some #MON"
	cont "ferry people"
	cont "across the water!"
	done

SSAnne2FRooms_CutManScript:
	jumptextfaceplayer .Text
.Text:
	text "#MON can CUT"
	line "down small bushes."
	done

SSAnne2FRooms_SafariZoneManScript:
	jumptextfaceplayer .Text
.Text:
	text "Have you gone to"
	line "the SAFARI ZONE"
	cont "in FUCHSIA CITY?"

	para "It had many rare"
	line "kinds of #MON!!"
	done

SSAnne2FRooms_SafariZoneKidScript:
	jumptextfaceplayer .Text
.Text:
	text "Me and my Daddy"
	line "think the SAFARI"
	cont "ZONE is awesome!"
	done

SSAnne2FRooms_CaptainGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "The CAPTAIN looked"
	line "really sick and"
	cont "pale!"
	done

SSAnne2FRooms_BeautyScript:
	jumptextfaceplayer .Text
.Text:
	text "I hear many people"
	line "get seasick!"
	done

SSAnne2FRooms_MaxEtherScript:
	itemball MAX_ETHER

SSAnne2FRooms_RareCandyScript:
	itemball RARE_CANDY

SSAnne2FRooms_MapEvents:
	def_warp_events
	warp_event  2,  5, SS_ANNE_2F, 1
	warp_event  3,  5, SS_ANNE_2F, 1
	warp_event 12,  5, SS_ANNE_2F, 2
	warp_event 13,  5, SS_ANNE_2F, 2
	warp_event 22,  5, SS_ANNE_2F, 3
	warp_event 23,  5, SS_ANNE_2F, 3
	warp_event  2, 15, SS_ANNE_2F, 4
	warp_event  3, 15, SS_ANNE_2F, 4
	warp_event 12, 15, SS_ANNE_2F, 5
	warp_event 13, 15, SS_ANNE_2F, 5
	warp_event 22, 15, SS_ANNE_2F, 6
	warp_event 23, 15, SS_ANNE_2F, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGentlemanBrooks, -1
	object_event 13,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerFisherDale, -1
	object_event  0, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGentlemanLamar, -1
	object_event  2, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassDawn, -1
	object_event  1,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRooms_SnorlaxManScript, -1
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnne2FRooms_MaxEtherScript, EVENT_SS_ANNE_2F_ROOMS_MAX_ETHER
	object_event 21,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRooms_SurfManScript, -1
	object_event 22,  1, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRooms_CutManScript, -1
	object_event  0, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnne2FRooms_RareCandyScript, EVENT_SS_ANNE_2F_ROOMS_RARE_CANDY
	object_event 12, 12, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRooms_SafariZoneManScript, -1
	object_event 11, 14, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRooms_SafariZoneKidScript, -1
	object_event 22, 12, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRooms_CaptainGirlScript, -1
	object_event 20, 12, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRooms_BeautyScript, -1
