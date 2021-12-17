	object_const_def
	const SSANNEKITCHEN_COOK1
	const SSANNEKITCHEN_COOK2
	const SSANNEKITCHEN_COOK3
	const SSANNEKITCHEN_COOK4
	const SSANNEKITCHEN_COOK5
	const SSANNEKITCHEN_COOK6
	const SSANNEKITCHEN_COOK7

SSAnneKitchen_MapScripts:
	def_scene_scripts

	def_callbacks

SSAnneKitchen_Cook1Script:
	jumptextfaceplayer .Text
.Text:
	text "You, mon petit!"
	line "We're busy here!"
	cont "Out of the way!"
	done

SSAnneKitchen_Cook2Script:
	jumptextfaceplayer .Text
.Text:
	text "I saw an odd ball"
	line "in the trash."
	done

SSAnneKitchen_Cook3Script:
	jumptextfaceplayer .Text
.Text:
	text "I'm so busy I'm"
	line "getting dizzy!"
	done

SSAnneKitchen_Cook4Script:
	jumptextfaceplayer .Text
.Text:
	text "Hum-de-hum-de-"
	line "ho..."

	para "I peel spuds"
	line "every day!"
	cont "Hum-hum..."
	done

SSAnneKitchen_Cook5Script:
	jumptextfaceplayer .Text
.Text:
	text "Did you hear about"
	line "SNORLAX?"

	para "All it does is"
	line "eat and sleep!"
	done

SSAnneKitchen_Cook6Script:
	jumptextfaceplayer .Text
.Text:
	text "Snivel...Sniff..."

	para "I only get to"
	line "peel onions..."
	cont "Snivel..."
	done

SSAnneKitchen_Cook7Script:
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	random 4
	ifequal 0, .Branch1
	ifequal 1, .Branch2
; Branch3
	writetext .Text4
	sjump .End

.Branch1:
	writetext .Text2
	sjump .End

.Branch2:
	writetext .Text3
.End:
	waitbutton
	closetext
	end

.Text1:
	text "Er-hem! Indeed I"
	line "am le CHEF!"

	para "Le main course is"
	done

.Text2:
	text "Eels au Barbecue!"

	para "Les guests will"
	line "mutiny, I fear."
	done

.Text3:
	text "Prime Beef Steak!"

	para "But, have I enough"
	line "fillets du beef?"
	done

.Text4:
	text "Salmon du Salad!"

	para "Les guests may"
	line "gripe it's fish"
	cont "again, however!"
	done

SSAnneKitchen_TrashScript:
	jumptext .Text
.Text:
	text "Nope, there's"
	line "only trash here."
	done

SSAnneKitchen_HiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_SS_ANNE_KITCHEN_HIDDEN_GREAT_BALL

SSAnneKitchen_MapEvents:
	def_warp_events
	warp_event  6,  0, SS_ANNE_1F, 11

	def_coord_events

	def_bg_events
	bg_event 13,  5, BGEVENT_READ, SSAnneKitchen_TrashScript
	bg_event 13,  7, BGEVENT_READ, SSAnneKitchen_TrashScript
	bg_event 13,  9, BGEVENT_ITEM, SSAnneKitchen_HiddenGreatBall

	def_object_events
	object_event  1,  8, SPRITE_COOK, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchen_Cook1Script, -1
	object_event  5,  8, SPRITE_COOK, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchen_Cook2Script, -1
	object_event  9,  7, SPRITE_COOK, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchen_Cook3Script, -1
	object_event 13,  6, SPRITE_COOK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchen_Cook4Script, -1
	object_event 13,  8, SPRITE_COOK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchen_Cook5Script, -1
	object_event 13, 10, SPRITE_COOK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchen_Cook6Script, -1
	object_event 11, 13, SPRITE_COOK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchen_Cook7Script, -1
