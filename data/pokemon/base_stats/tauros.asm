	db TAUROS ; 128

	db  75, 100,  95, 110,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/tauros/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/tauros/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, SURF, STRENGTH
ELIF DEF(_BLUE)
	tmhm TOXIC, HORN_DRILL, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, RAGE, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, MIMIC, DOUBLE_TEAM, BIDE, FIRE_BLAST, SKULL_BASH, REST, SUBSTITUTE, STRENGTH, HEADBUTT, ROCK_SMASH
ENDC
	; end
