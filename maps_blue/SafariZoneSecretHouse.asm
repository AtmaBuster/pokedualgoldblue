	object_const_def
	const SAFARIZONESECRETHOUSE_FISHING_GURU

SafariZoneSecretHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneSecretHouse_HMGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM03_SURF_KANTO
	iftrue .After
	writetext .Text1
	waitbutton
	verbosegiveitem HM_SURF
	iffalse .BagFull
	setevent EVENT_GOT_HM03_SURF_KANTO
.BagFull:
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Ah! Finally!"

	para "You're the first"
	line "person to reach"
	cont "the SECRET HOUSE!"

	para "I was getting"
	line "worried that no"
	cont "one would win our"
	cont "campaign prize."

	para "Congratulations!"
	line "You have won!"
	done

.Text2:
	text "HM03 is SURF!"

	para "#MON will be"
	line "able to ferry you"
	cont "across water!"

	para "And, this HM isn't"
	line "disposable! You"
	cont "can use it over"
	cont "and over!"

	para "You're super lucky"
	line "for winning this"
	cont "fabulous prize!"
	done

SafariZoneSecretHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 7
	warp_event  3,  7, SAFARI_ZONE_WEST, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneSecretHouse_HMGuyScript, -1
