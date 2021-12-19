NameMenuHeader:
	db STATICMENU_NO_TOP_SPACING ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .Names
	db 1 ; default option

.Names:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"

PlayerNameArray:
IF DEF(_GOLD)
	db "GOLD@"
	db "HIRO@"
	db "TAYLOR@"
	db "KARL@"
ELIF DEF(_BLUE)
	db "BLUE@"
	db "GARY@"
	db "JOHN@"
	db "EVAN@"
ENDC
	db 2 ; title indent
	db "NAME@" ; title

IF DEF(_BLUE)
RivalNameMenuHeader:
	db STATICMENU_NO_TOP_SPACING ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .RivalNames
	db 1 ; default option

.RivalNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"

RivalNameArray:
	db "RED@"
	db "ASH@"
	db "JACK@"
	db "KAY@"
ENDC