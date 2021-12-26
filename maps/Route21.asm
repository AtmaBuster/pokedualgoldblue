	object_const_def
	const ROUTE21_FISHER1
	const ROUTE21_FISHER2
	const ROUTE21_SWIMMER_GUY1
	const ROUTE21_SWIMMER_GUY2
	const ROUTE21_SWIMMER_GUY3
	const ROUTE21_SWIMMER_GUY4
	const ROUTE21_SWIMMER_GUY5
	const ROUTE21_FISHER3
	const ROUTE21_FISHER4

Route21_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerFisherRonald:
	trainer FISHER_GEN1, RONALD_GEN1, EVENT_BEAT_FISHER_RONALD_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You want to know"
	line "if the fish are"
	cont "biting?"
	done

.BeatenText:
	text "Dang!"
	done

.AfterText:
	text "I can't catch"
	line "anything good!"
	done

TrainerFisherWade:
	trainer FISHER_GEN1, WADE_GEN1, EVENT_BEAT_FISHER_WADE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I got a big haul!"
	line "Wanna go for it?"
	done

.BeatenText:
	text "Darn"
	line "MAGIKARP!"
	done

.AfterText:
	text "I seem to only"
	line "catch MAGIKARP!"
	done

TrainerSwimmerSpencer:
	trainer SWIMMER_GEN1, SPENCER_GEN1, EVENT_BEAT_SWIMMER_SPENCER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "The sea cleanses"
	line "my body and soul!"
	done

.BeatenText:
	text "Ayah!"
	done

.AfterText:
	text "I like the"
	line "mountains too!"
	done

TrainerCueBallIan:
	trainer CUE_BALL_GEN1, IAN_GEN1, EVENT_BEAT_CUE_BALL_IAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What's wrong with"
	line "me swimming?"
	done

.BeatenText:
	text "Cheap"
	line "shot!"
	done

.AfterText:
	text "I look like what?"
	line "A studded inner"
	cont "tube? Get lost!"
	done

TrainerSwimmerJack:
	trainer SWIMMER_GEN1, JACK_GEN1, EVENT_BEAT_SWIMMER_JACK_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I caught all my"
	line "#MON at sea!"
	done

.BeatenText:
	text "Diver!!"
	line "Down!!"
	done

.AfterText:
	text "Where'd you catch"
	line "your #MON?"
	done

TrainerSwimmerJerome:
	trainer SWIMMER_GEN1, JEROME_GEN1, EVENT_BEAT_SWIMMER_JEROME_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Right now, I'm in"
	line "a triathlon meet!"
	done

.BeatenText:
	text "Pant..."
	line "pant...pant..."
	done

.AfterText:
	text "I'm beat!"
	line "But, I still have"
	cont "the bike race and"
	cont "marathon left!"
	done

TrainerSwimmerRoland:
	trainer SWIMMER_GEN1, ROLAND_GEN1, EVENT_BEAT_SWIMMER_ROLAND_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Ahh! Feel the sun"
	line "and the wind!"
	done

.BeatenText:
	text "Yow!"
	line "I lost!"
	done

.AfterText:
	text "I'm sunburnt to a"
	line "crisp!"
	done

TrainerFisherClaude:
	trainer FISHER_GEN1, CLAUDE_GEN1, EVENT_BEAT_FISHER_CLAUDE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey, don't scare"
	line "away the fish!"
	done

.BeatenText:
	text "Sorry!"
	line "I didn't mean it!"
	done

.AfterText:
	text "I was just angry"
	line "that I couldn't"
	cont "catch anything."
	done

TrainerFisherNolan:
	trainer FISHER_GEN1, NOLAN_GEN1, EVENT_BEAT_FISHER_NOLAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Keep me company"
	line "'til I get a hit!"
	done

.BeatenText:
	text "That"
	line "burned some time."
	done

.AfterText:
	text "Oh wait! I got a"
	line "bite! Yeah!"
	done

Route21_MapEvents:
	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 24, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerFisherRonald, -1
	object_event  6, 25, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerFisherWade, -1
	object_event 10, 31, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerSwimmerSpencer, -1
	object_event 12, 30, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerCueBallIan, -1
	object_event 16, 63, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerSwimmerJack, -1
	object_event  5, 71, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerSwimmerJerome, -1
	object_event 15, 71, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerSwimmerRoland, -1
	object_event 14, 56, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerFisherClaude, -1
	object_event 17, 57, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerFisherNolan, -1
