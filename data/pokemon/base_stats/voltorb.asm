	db VOLTORB ; 100

	db  40,  30,  50, 100,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 103 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/voltorb/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/voltorb/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, FLASH
ELIF DEF(_BLUE)
	tmhm TOXIC, TAKE_DOWN, RAGE, THUNDERBOLT, THUNDER, TELEPORT, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, SELFDESTRUCT, SWIFT, REST, THUNDER_WAVE, EXPLOSION, SUBSTITUTE, FLASH, HEADBUTT
ENDC
	; end
