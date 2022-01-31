	db DRAGONITE ; 149

	db  91, 134,  95,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/dragonite/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/dragonite/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, THUNDER, RETURN, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, SWIFT, THUNDERPUNCH, DETECT, REST, ATTRACT, STEEL_WING, FIRE_PUNCH, FURY_CUTTER, FLY, SURF, STRENGTH, WHIRLPOOL, WATERFALL
ELIF DEF(_BLUE)
	tmhm RAZOR_WIND, TOXIC, HORN_DRILL, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, WATER_GUN, ICE_BEAM, BLIZZARD, HYPER_BEAM, RAGE, DRAGON_RAGE, THUNDERBOLT, THUNDER, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, FIRE_BLAST, SWIFT, SKULL_BASH, REST, THUNDER_WAVE, SUBSTITUTE, SURF, STRENGTH, HEADBUTT, ROCK_SMASH
ENDC
	; end
