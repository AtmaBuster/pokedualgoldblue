	object_const_def
	const VIRIDIANMART_KANTO_CLERK
	const VIRIDIANMART_KANTO_YOUNGSTER
	const VIRIDIANMART_COOLTRAINER_M

ViridianMart_MapScripts:
	def_scene_scripts
	scene_script .GetParcel ; SCENE_DEFAULT
	scene_script .Dummy ; SCENE_FINISHED

	def_callbacks

.GetParcel:
	opentext
	writetext .HeyYouText
	waitbutton
	closetext
	applymovement PLAYER, .MoveToCounter
	opentext
	writetext .GiveParcelText
	waitbutton
	verbosegiveitem OAKS_PARCEL
	closetext
	setscene SCENE_FINISHED
	end

.HeyYouText:
	text "Hey! You came from"
	line "PALLET TOWN?"
	done

.GiveParcelText:
	text "You know PROF."
	line "OAK, right?"

	para "His order came in."
	line "Will you take it"
	cont "to him?"
	done

.MoveToCounter:
	step UP
	step UP
	step LEFT
	step_end

.Dummy:
	end

ViridianMart_ClerkScript:
	opentext
	checkevent EVENT_OAK_GOT_PARCEL
	iftrue .Delivered
	writetext .SayHiText
	waitbutton
	closetext
	end

.Delivered:
	pokemart MARTTYPE_STANDARD, MART_VIRIDIAN
	closetext
	end

.SayHiText:
	text "Okay! Say hi to"
	line "PROF.OAK for me!"
	done

ViridianMart_YoungsterScript:
	jumptextfaceplayer .Text
.Text:
	text "This shop sells"
	line "many ANTIDOTEs."
	done

ViridianMart_CooltrainerScript:
	jumptextfaceplayer .Text
.Text:
	text "No! POTIONs are"
	line "all sold out."
	done

ViridianMart_MapEvents:
	def_warp_events
	warp_event  3,  7, VIRIDIAN_CITY, 2
	warp_event  4,  7, VIRIDIAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMart_ClerkScript, -1
	object_event  5,  5, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMart_YoungsterScript, -1
	object_event  3,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMart_CooltrainerScript, -1
