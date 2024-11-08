	db OMASTAR ; 139

	db  70,  60, 125,  55, 115,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 199 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/omastar/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/omastar/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, THIEF, SURF, WHIRLPOOL
ELIF DEF(_BLUE)
	tmhm TOXIC, HORN_DRILL, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, WATER_GUN, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUBMISSION, SEISMIC_TOSS, RAGE, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, SKULL_BASH, REST, SUBSTITUTE, SURF, HEADBUTT, ROCK_SMASH
ENDC
	; end
