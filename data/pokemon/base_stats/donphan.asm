	db DONPHAN ; 232

	db  90, 120, 120,  50,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 60 ; catch rate
	db 189 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/donphan/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/donphan/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, DEFENSE_CURL, REST, ATTRACT, STRENGTH
ELIF DEF(_BLUE)
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, WATER_GUN, HYPER_BEAM, SUBMISSION, COUNTER, RAGE, EARTHQUAKE, FISSURE, MIMIC, DOUBLE_TEAM, BIDE, SKULL_BASH, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH, HEADBUTT, ROCK_SMASH
ENDC
	; end
