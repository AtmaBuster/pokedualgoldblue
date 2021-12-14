npctrade: MACRO
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, DROWZEE,    MACHOP,     "MUSCLE@@@@@", $37, $66, GOLD_BERRY,   37460, "MIKE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "ROCKY@@@@@@", $96, $66, BITTER_BERRY, 48926, "KYLE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     VOLTORB,    "VOLTY@@@@@@", $98, $88, PRZCUREBERRY, 29189, "TIM@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    DRAGONAIR,  RHYDON,     "DON@@@@@@@@", $77, $66, BITTER_BERRY, 00283, "EMY@@@@@@@@", TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_HAPPY,     GLOOM,      RAPIDASH,   "RUNNY@@@@@@", $96, $66, BURNT_BERRY,  15616, "CHRIS@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    CHANSEY,    AERODACTYL, "AEROY@@@@@@", $96, $66, GOLD_BERRY,   26491, "KIM@@@@@@@@", TRADE_GENDER_EITHER

	npctrade TRADE_DIALOGSET_HAPPY,     ABRA,       MR__MIME,   "MARCEL@@@@@", $89, $cc, NO_ITEM,      01985, "REYLEY@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     RATTATA,    POLIWAG,    "ROMO@@@@@@@", $9d, $a8, TINYMUSHROOM, 63184, "SAIGE@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     NIDORINO,   NIDORINA,   "TERRY@@@@@@", $d9, $ab, NO_ITEM,      13637, "TURNER@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     SLOWBRO,    LICKITUNG,  "MARC@@@@@@@", $ab, $8c, NO_ITEM,      01239, "HADEN@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     POLIWHIRL,  JYNX,       "LOLA@@@@@@@", $99, $bd, NO_ITEM,      39728, "DONTAE@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     SPEAROW,    FARFETCH_D, "DUX@@@@@@@@", $db, $c8, STICK,        08810, "ELYSSA@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     RAICHU,     ELECTRODE,  "DORIS@@@@@@", $89, $dd, NO_ITEM,      50298, "CLIFTON@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     VENONAT,    TANGELA,    "CRINKLES@@@", $8d, $8c, STARDUST,     60042, "NORMA@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     PONYTA,     SEEL,       "SAILOR@@@@@", $8b, $8c, NO_ITEM,      09853, "GARETT@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
