	db SMOOCHUM ; 238

	db  45,  30,  15,  65,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 87 ; base exp
	db ICE_BERRY, ICE_BERRY ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/smoochum/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/smoochum/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm DYNAMICPUNCH, CURSE, TOXIC, PSYCH_UP, HIDDEN_POWER, SWEET_SCENT, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE
ELIF DEF(_BLUE)
	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, WATER_GUN, ICE_BEAM, BLIZZARD, SUBMISSION, COUNTER, SEISMIC_TOSS, RAGE, PSYCHIC_M, TELEPORT, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, METRONOME, DREAM_EATER, REST, PSYWAVE, SUBSTITUTE
ENDC
	; end
