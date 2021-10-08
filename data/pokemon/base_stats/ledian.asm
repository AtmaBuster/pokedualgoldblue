	db LEDIAN ; 166

	db  55,  35,  50,  85,  55, 110
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/ledian/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/ledian/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, THUNDERPUNCH, REST, ATTRACT, THIEF, FLASH
ELIF DEF(_BLUE)
	tmhm MEGA_PUNCH, SWORDS_DANCE, TOXIC, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, SUBMISSION, RAGE, MEGA_DRAIN, SOLARBEAM, DIG, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, REST, SUBSTITUTE, FLASH
ENDC
	; end
