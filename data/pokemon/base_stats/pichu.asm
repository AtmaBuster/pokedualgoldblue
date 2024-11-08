	db PICHU ; 172

	db  20,  40,  15,  60,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 42 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/pichu/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/pichu/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, DETECT, REST, ATTRACT, FLASH
ELIF DEF(_BLUE)
	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, COUNTER, SEISMIC_TOSS, RAGE, THUNDERBOLT, THUNDER, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, FLASH, HEADBUTT
ENDC
	; end
