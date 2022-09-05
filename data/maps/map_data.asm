INCLUDE "constants.asm"


SECTION "Maps", ROMX

INCLUDE "data/maps/scenes.asm"
INCLUDE "data/maps/maps.asm"
INCLUDE "data/maps/attributes.asm"


IF DEF(_GOLD)
INCLUDE "data/maps/blocks_gold.asm"
INCLUDE "data/maps/scripts_gold.asm"
ELIF DEF(_BLUE)
INCLUDE "data/maps/blocks_blue.asm"
INCLUDE "data/maps/scripts_blue.asm"
ENDC
