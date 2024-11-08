	db GOLDUCK ; 055

	db  80,  82,  78,  85,  95,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/golduck/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/golduck/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, FURY_CUTTER, SURF, STRENGTH, FLASH, WHIRLPOOL, WATERFALL
ELIF DEF(_BLUE)
	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, WATER_GUN, ICE_BEAM, BLIZZARD, HYPER_BEAM, PAY_DAY, SUBMISSION, COUNTER, SEISMIC_TOSS, RAGE, DIG, MIMIC, DOUBLE_TEAM, BIDE, SWIFT, SKULL_BASH, REST, SUBSTITUTE, SURF, STRENGTH, HEADBUTT, ROCK_SMASH
ENDC
	; end
