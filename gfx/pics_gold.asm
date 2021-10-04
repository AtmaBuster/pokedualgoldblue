INCLUDE "constants.asm"


; PokemonPicPointers and UnownPicPointers are assumed to start at the same
; address, but in different banks. This is enforced in layout.link.


SECTION "Pic Pointers", ROMX

INCLUDE "data/pokemon/pic_pointers.asm"


SECTION "Unown Pic Pointers", ROMX

INCLUDE "data/pokemon/unown_pic_pointers.asm"


SECTION "Trainer Pic Pointers", ROMX

INCLUDE "data/trainers/pic_pointers.asm"


floating_section
AbraBackpic:         INCBIN "gfx/pokemon/abra/back.2bpp.lz"
floating_section
AbraFrontpic:        INCBIN "gfx/pokemon/abra/front_gold.2bpp.lz"
floating_section
AerodactylBackpic:   INCBIN "gfx/pokemon/aerodactyl/back.2bpp.lz"
floating_section
AerodactylFrontpic:  INCBIN "gfx/pokemon/aerodactyl/front_gold.2bpp.lz"
floating_section
AipomBackpic:        INCBIN "gfx/pokemon/aipom/back.2bpp.lz"
floating_section
AipomFrontpic:       INCBIN "gfx/pokemon/aipom/front_gold.2bpp.lz"
floating_section
AlakazamBackpic:     INCBIN "gfx/pokemon/alakazam/back_gold.2bpp.lz"
floating_section
AlakazamFrontpic:    INCBIN "gfx/pokemon/alakazam/front_gold.2bpp.lz"
floating_section
AmpharosBackpic:     INCBIN "gfx/pokemon/ampharos/back.2bpp.lz"
floating_section
AmpharosFrontpic:    INCBIN "gfx/pokemon/ampharos/front_gold.2bpp.lz"
floating_section
ArbokBackpic:        INCBIN "gfx/pokemon/arbok/back.2bpp.lz"
floating_section
ArbokFrontpic:       INCBIN "gfx/pokemon/arbok/front_gold.2bpp.lz"
floating_section
ArcanineBackpic:     INCBIN "gfx/pokemon/arcanine/back.2bpp.lz"
floating_section
ArcanineFrontpic:    INCBIN "gfx/pokemon/arcanine/front_gold.2bpp.lz"
floating_section
AriadosBackpic:      INCBIN "gfx/pokemon/ariados/back.2bpp.lz"
floating_section
AriadosFrontpic:     INCBIN "gfx/pokemon/ariados/front.2bpp.lz"
floating_section
ArticunoBackpic:     INCBIN "gfx/pokemon/articuno/back.2bpp.lz"
floating_section
ArticunoFrontpic:    INCBIN "gfx/pokemon/articuno/front_gold.2bpp.lz"
floating_section
AzumarillBackpic:    INCBIN "gfx/pokemon/azumarill/back.2bpp.lz"
floating_section
AzumarillFrontpic:   INCBIN "gfx/pokemon/azumarill/front_gold.2bpp.lz"
floating_section
BayleefBackpic:      INCBIN "gfx/pokemon/bayleef/back.2bpp.lz"
floating_section
BayleefFrontpic:     INCBIN "gfx/pokemon/bayleef/front.2bpp.lz"
floating_section
BeedrillBackpic:     INCBIN "gfx/pokemon/beedrill/back.2bpp.lz"
floating_section
BeedrillFrontpic:    INCBIN "gfx/pokemon/beedrill/front_gold.2bpp.lz"
floating_section
BellossomBackpic:    INCBIN "gfx/pokemon/bellossom/back.2bpp.lz"
floating_section
BellossomFrontpic:   INCBIN "gfx/pokemon/bellossom/front_gold.2bpp.lz"
floating_section
BellsproutBackpic:   INCBIN "gfx/pokemon/bellsprout/back.2bpp.lz"
floating_section
BellsproutFrontpic:  INCBIN "gfx/pokemon/bellsprout/front_gold.2bpp.lz"
floating_section
BlastoiseBackpic:    INCBIN "gfx/pokemon/blastoise/back.2bpp.lz"
floating_section
BlastoiseFrontpic:   INCBIN "gfx/pokemon/blastoise/front_gold.2bpp.lz"
floating_section
BlisseyBackpic:      INCBIN "gfx/pokemon/blissey/back.2bpp.lz"
floating_section
BlisseyFrontpic:     INCBIN "gfx/pokemon/blissey/front_gold.2bpp.lz"
floating_section
BulbasaurBackpic:    INCBIN "gfx/pokemon/bulbasaur/back.2bpp.lz"
floating_section
BulbasaurFrontpic:   INCBIN "gfx/pokemon/bulbasaur/front_gold.2bpp.lz"
floating_section
ButterfreeBackpic:   INCBIN "gfx/pokemon/butterfree/back.2bpp.lz"
floating_section
ButterfreeFrontpic:  INCBIN "gfx/pokemon/butterfree/front_gold.2bpp.lz"
floating_section
CaterpieBackpic:     INCBIN "gfx/pokemon/caterpie/back.2bpp.lz"
floating_section
CaterpieFrontpic:    INCBIN "gfx/pokemon/caterpie/front_gold.2bpp.lz"
floating_section
CelebiBackpic:       INCBIN "gfx/pokemon/celebi/back.2bpp.lz"
floating_section
CelebiFrontpic:      INCBIN "gfx/pokemon/celebi/front_gold.2bpp.lz"
floating_section
ChanseyBackpic:      INCBIN "gfx/pokemon/chansey/back.2bpp.lz"
floating_section
ChanseyFrontpic:     INCBIN "gfx/pokemon/chansey/front_gold.2bpp.lz"
floating_section
CharizardBackpic:    INCBIN "gfx/pokemon/charizard/back.2bpp.lz"
floating_section
CharizardFrontpic:   INCBIN "gfx/pokemon/charizard/front_gold.2bpp.lz"
floating_section
CharmanderBackpic:   INCBIN "gfx/pokemon/charmander/back.2bpp.lz"
floating_section
CharmanderFrontpic:  INCBIN "gfx/pokemon/charmander/front_gold.2bpp.lz"
floating_section
CharmeleonBackpic:   INCBIN "gfx/pokemon/charmeleon/back.2bpp.lz"
floating_section
CharmeleonFrontpic:  INCBIN "gfx/pokemon/charmeleon/front_gold.2bpp.lz"
floating_section
ChikoritaBackpic:    INCBIN "gfx/pokemon/chikorita/back.2bpp.lz"
floating_section
ChikoritaFrontpic:   INCBIN "gfx/pokemon/chikorita/front_gold.2bpp.lz"
floating_section
ChinchouBackpic:     INCBIN "gfx/pokemon/chinchou/back.2bpp.lz"
floating_section
ChinchouFrontpic:    INCBIN "gfx/pokemon/chinchou/front_gold.2bpp.lz"
floating_section
ClefableBackpic:     INCBIN "gfx/pokemon/clefable/back.2bpp.lz"
floating_section
ClefableFrontpic:    INCBIN "gfx/pokemon/clefable/front_gold.2bpp.lz"
floating_section
ClefairyBackpic:     INCBIN "gfx/pokemon/clefairy/back.2bpp.lz"
floating_section
ClefairyFrontpic:    INCBIN "gfx/pokemon/clefairy/front_gold.2bpp.lz"
floating_section
CleffaBackpic:       INCBIN "gfx/pokemon/cleffa/back.2bpp.lz"
floating_section
CleffaFrontpic:      INCBIN "gfx/pokemon/cleffa/front_gold.2bpp.lz"
floating_section
CloysterBackpic:     INCBIN "gfx/pokemon/cloyster/back.2bpp.lz"
floating_section
CloysterFrontpic:    INCBIN "gfx/pokemon/cloyster/front_gold.2bpp.lz"
floating_section
CorsolaBackpic:      INCBIN "gfx/pokemon/corsola/back.2bpp.lz"
floating_section
CorsolaFrontpic:     INCBIN "gfx/pokemon/corsola/front_gold.2bpp.lz"
floating_section
CrobatBackpic:       INCBIN "gfx/pokemon/crobat/back.2bpp.lz"
floating_section
CrobatFrontpic:      INCBIN "gfx/pokemon/crobat/front_gold.2bpp.lz"
floating_section
CroconawBackpic:     INCBIN "gfx/pokemon/croconaw/back.2bpp.lz"
floating_section
CroconawFrontpic:    INCBIN "gfx/pokemon/croconaw/front_gold.2bpp.lz"
floating_section
CuboneBackpic:       INCBIN "gfx/pokemon/cubone/back.2bpp.lz"
floating_section
CuboneFrontpic:      INCBIN "gfx/pokemon/cubone/front_gold.2bpp.lz"
floating_section
CyndaquilBackpic:    INCBIN "gfx/pokemon/cyndaquil/back.2bpp.lz"
floating_section
CyndaquilFrontpic:   INCBIN "gfx/pokemon/cyndaquil/front_gold.2bpp.lz"
floating_section
DelibirdBackpic:     INCBIN "gfx/pokemon/delibird/back.2bpp.lz"
floating_section
DelibirdFrontpic:    INCBIN "gfx/pokemon/delibird/front_gold.2bpp.lz"
floating_section
DewgongBackpic:      INCBIN "gfx/pokemon/dewgong/back.2bpp.lz"
floating_section
DewgongFrontpic:     INCBIN "gfx/pokemon/dewgong/front_gold.2bpp.lz"
floating_section
DiglettBackpic:      INCBIN "gfx/pokemon/diglett/back.2bpp.lz"
floating_section
DiglettFrontpic:     INCBIN "gfx/pokemon/diglett/front_gold.2bpp.lz"
floating_section
DittoBackpic:        INCBIN "gfx/pokemon/ditto/back.2bpp.lz"
floating_section
DittoFrontpic:       INCBIN "gfx/pokemon/ditto/front_gold.2bpp.lz"
floating_section
DodrioBackpic:       INCBIN "gfx/pokemon/dodrio/back.2bpp.lz"
floating_section
DodrioFrontpic:      INCBIN "gfx/pokemon/dodrio/front_gold.2bpp.lz"
floating_section
DoduoBackpic:        INCBIN "gfx/pokemon/doduo/back.2bpp.lz"
floating_section
DoduoFrontpic:       INCBIN "gfx/pokemon/doduo/front_gold.2bpp.lz"
floating_section
DonphanBackpic:      INCBIN "gfx/pokemon/donphan/back.2bpp.lz"
floating_section
DonphanFrontpic:     INCBIN "gfx/pokemon/donphan/front_gold.2bpp.lz"
floating_section
DragonairBackpic:    INCBIN "gfx/pokemon/dragonair/back.2bpp.lz"
floating_section
DragonairFrontpic:   INCBIN "gfx/pokemon/dragonair/front_gold.2bpp.lz"
floating_section
DragoniteBackpic:    INCBIN "gfx/pokemon/dragonite/back.2bpp.lz"
floating_section
DragoniteFrontpic:   INCBIN "gfx/pokemon/dragonite/front_gold.2bpp.lz"
floating_section
DratiniBackpic:      INCBIN "gfx/pokemon/dratini/back.2bpp.lz"
floating_section
DratiniFrontpic:     INCBIN "gfx/pokemon/dratini/front_gold.2bpp.lz"
floating_section
DrowzeeBackpic:      INCBIN "gfx/pokemon/drowzee/back.2bpp.lz"
floating_section
DrowzeeFrontpic:     INCBIN "gfx/pokemon/drowzee/front_gold.2bpp.lz"
floating_section
DugtrioBackpic:      INCBIN "gfx/pokemon/dugtrio/back.2bpp.lz"
floating_section
DugtrioFrontpic:     INCBIN "gfx/pokemon/dugtrio/front_gold.2bpp.lz"
floating_section
DunsparceBackpic:    INCBIN "gfx/pokemon/dunsparce/back.2bpp.lz"
floating_section
DunsparceFrontpic:   INCBIN "gfx/pokemon/dunsparce/front_gold.2bpp.lz"
floating_section
EeveeBackpic:        INCBIN "gfx/pokemon/eevee/back.2bpp.lz"
floating_section
EeveeFrontpic:       INCBIN "gfx/pokemon/eevee/front_gold.2bpp.lz"
floating_section
EkansBackpic:        INCBIN "gfx/pokemon/ekans/back.2bpp.lz"
floating_section
EkansFrontpic:       INCBIN "gfx/pokemon/ekans/front_gold.2bpp.lz"
floating_section
ElectabuzzBackpic:   INCBIN "gfx/pokemon/electabuzz/back.2bpp.lz"
floating_section
ElectabuzzFrontpic:  INCBIN "gfx/pokemon/electabuzz/front_gold.2bpp.lz"
floating_section
ElectrodeBackpic:    INCBIN "gfx/pokemon/electrode/back.2bpp.lz"
floating_section
ElectrodeFrontpic:   INCBIN "gfx/pokemon/electrode/front_gold.2bpp.lz"
floating_section
ElekidBackpic:       INCBIN "gfx/pokemon/elekid/back.2bpp.lz"
floating_section
ElekidFrontpic:      INCBIN "gfx/pokemon/elekid/front_gold.2bpp.lz"
floating_section
EnteiBackpic:        INCBIN "gfx/pokemon/entei/back.2bpp.lz"
floating_section
EnteiFrontpic:       INCBIN "gfx/pokemon/entei/front.2bpp.lz"
floating_section
EspeonBackpic:       INCBIN "gfx/pokemon/espeon/back.2bpp.lz"
floating_section
EspeonFrontpic:      INCBIN "gfx/pokemon/espeon/front_gold.2bpp.lz"
floating_section
ExeggcuteBackpic:    INCBIN "gfx/pokemon/exeggcute/back.2bpp.lz"
floating_section
ExeggcuteFrontpic:   INCBIN "gfx/pokemon/exeggcute/front_gold.2bpp.lz"
floating_section
ExeggutorBackpic:    INCBIN "gfx/pokemon/exeggutor/back.2bpp.lz"
floating_section
ExeggutorFrontpic:   INCBIN "gfx/pokemon/exeggutor/front_gold.2bpp.lz"
floating_section
FarfetchDBackpic:    INCBIN "gfx/pokemon/farfetch_d/back.2bpp.lz"
floating_section
FarfetchDFrontpic:   INCBIN "gfx/pokemon/farfetch_d/front_gold.2bpp.lz"
floating_section
FearowBackpic:       INCBIN "gfx/pokemon/fearow/back.2bpp.lz"
floating_section
FearowFrontpic:      INCBIN "gfx/pokemon/fearow/front_gold.2bpp.lz"
floating_section
FeraligatrBackpic:   INCBIN "gfx/pokemon/feraligatr/back.2bpp.lz"
floating_section
FeraligatrFrontpic:  INCBIN "gfx/pokemon/feraligatr/front_gold.2bpp.lz"
floating_section
FlaaffyBackpic:      INCBIN "gfx/pokemon/flaaffy/back.2bpp.lz"
floating_section
FlaaffyFrontpic:     INCBIN "gfx/pokemon/flaaffy/front_gold.2bpp.lz"
floating_section
FlareonBackpic:      INCBIN "gfx/pokemon/flareon/back.2bpp.lz"
floating_section
FlareonFrontpic:     INCBIN "gfx/pokemon/flareon/front_gold.2bpp.lz"
floating_section
ForretressBackpic:   INCBIN "gfx/pokemon/forretress/back.2bpp.lz"
floating_section
ForretressFrontpic:  INCBIN "gfx/pokemon/forretress/front_gold.2bpp.lz"
floating_section
FurretBackpic:       INCBIN "gfx/pokemon/furret/back.2bpp.lz"
floating_section
FurretFrontpic:      INCBIN "gfx/pokemon/furret/front_gold.2bpp.lz"
floating_section
GastlyBackpic:       INCBIN "gfx/pokemon/gastly/back.2bpp.lz"
floating_section
GastlyFrontpic:      INCBIN "gfx/pokemon/gastly/front_gold.2bpp.lz"
floating_section
GengarBackpic:       INCBIN "gfx/pokemon/gengar/back.2bpp.lz"
floating_section
GengarFrontpic:      INCBIN "gfx/pokemon/gengar/front_gold.2bpp.lz"
floating_section
GeodudeBackpic:      INCBIN "gfx/pokemon/geodude/back.2bpp.lz"
floating_section
GeodudeFrontpic:     INCBIN "gfx/pokemon/geodude/front_gold.2bpp.lz"
floating_section
GirafarigBackpic:    INCBIN "gfx/pokemon/girafarig/back.2bpp.lz"
floating_section
GirafarigFrontpic:   INCBIN "gfx/pokemon/girafarig/front_gold.2bpp.lz"
floating_section
GligarBackpic:       INCBIN "gfx/pokemon/gligar/back.2bpp.lz"
floating_section
GligarFrontpic:      INCBIN "gfx/pokemon/gligar/front_gold.2bpp.lz"
floating_section
GloomBackpic:        INCBIN "gfx/pokemon/gloom/back.2bpp.lz"
floating_section
GloomFrontpic:       INCBIN "gfx/pokemon/gloom/front_gold.2bpp.lz"
floating_section
GolbatBackpic:       INCBIN "gfx/pokemon/golbat/back.2bpp.lz"
floating_section
GolbatFrontpic:      INCBIN "gfx/pokemon/golbat/front_gold.2bpp.lz"
floating_section
GoldeenBackpic:      INCBIN "gfx/pokemon/goldeen/back.2bpp.lz"
floating_section
GoldeenFrontpic:     INCBIN "gfx/pokemon/goldeen/front_gold.2bpp.lz"
floating_section
GolduckBackpic:      INCBIN "gfx/pokemon/golduck/back.2bpp.lz"
floating_section
GolduckFrontpic:     INCBIN "gfx/pokemon/golduck/front_gold.2bpp.lz"
floating_section
GolemBackpic:        INCBIN "gfx/pokemon/golem/back.2bpp.lz"
floating_section
GolemFrontpic:       INCBIN "gfx/pokemon/golem/front_gold.2bpp.lz"
floating_section
GranbullBackpic:     INCBIN "gfx/pokemon/granbull/back.2bpp.lz"
floating_section
GranbullFrontpic:    INCBIN "gfx/pokemon/granbull/front_gold.2bpp.lz"
floating_section
GravelerBackpic:     INCBIN "gfx/pokemon/graveler/back.2bpp.lz"
floating_section
GravelerFrontpic:    INCBIN "gfx/pokemon/graveler/front_gold.2bpp.lz"
floating_section
GrimerBackpic:       INCBIN "gfx/pokemon/grimer/back.2bpp.lz"
floating_section
GrimerFrontpic:      INCBIN "gfx/pokemon/grimer/front_gold.2bpp.lz"
floating_section
GrowlitheBackpic:    INCBIN "gfx/pokemon/growlithe/back.2bpp.lz"
floating_section
GrowlitheFrontpic:   INCBIN "gfx/pokemon/growlithe/front_gold.2bpp.lz"
floating_section
GyaradosBackpic:     INCBIN "gfx/pokemon/gyarados/back.2bpp.lz"
floating_section
GyaradosFrontpic:    INCBIN "gfx/pokemon/gyarados/front_gold.2bpp.lz"
floating_section
HaunterBackpic:      INCBIN "gfx/pokemon/haunter/back.2bpp.lz"
floating_section
HaunterFrontpic:     INCBIN "gfx/pokemon/haunter/front_gold.2bpp.lz"
floating_section
HeracrossBackpic:    INCBIN "gfx/pokemon/heracross/back.2bpp.lz"
floating_section
HeracrossFrontpic:   INCBIN "gfx/pokemon/heracross/front_gold.2bpp.lz"
floating_section
HitmonchanBackpic:   INCBIN "gfx/pokemon/hitmonchan/back.2bpp.lz"
floating_section
HitmonchanFrontpic:  INCBIN "gfx/pokemon/hitmonchan/front_gold.2bpp.lz"
floating_section
HitmonleeBackpic:    INCBIN "gfx/pokemon/hitmonlee/back.2bpp.lz"
floating_section
HitmonleeFrontpic:   INCBIN "gfx/pokemon/hitmonlee/front_gold.2bpp.lz"
floating_section
HitmontopBackpic:    INCBIN "gfx/pokemon/hitmontop/back_gold.2bpp.lz"
floating_section
HitmontopFrontpic:   INCBIN "gfx/pokemon/hitmontop/front_gold.2bpp.lz"
floating_section
HoOhBackpic:         INCBIN "gfx/pokemon/ho_oh/back.2bpp.lz"
floating_section
HoOhFrontpic:        INCBIN "gfx/pokemon/ho_oh/front_gold.2bpp.lz"
floating_section
HoothootBackpic:     INCBIN "gfx/pokemon/hoothoot/back.2bpp.lz"
floating_section
HoothootFrontpic:    INCBIN "gfx/pokemon/hoothoot/front_gold.2bpp.lz"
floating_section
HoppipBackpic:       INCBIN "gfx/pokemon/hoppip/back.2bpp.lz"
floating_section
HoppipFrontpic:      INCBIN "gfx/pokemon/hoppip/front_gold.2bpp.lz"
floating_section
HorseaBackpic:       INCBIN "gfx/pokemon/horsea/back.2bpp.lz"
floating_section
HorseaFrontpic:      INCBIN "gfx/pokemon/horsea/front_gold.2bpp.lz"
floating_section
HoundoomBackpic:     INCBIN "gfx/pokemon/houndoom/back.2bpp.lz"
floating_section
HoundoomFrontpic:    INCBIN "gfx/pokemon/houndoom/front_gold.2bpp.lz"
floating_section
HoundourBackpic:     INCBIN "gfx/pokemon/houndour/back.2bpp.lz"
floating_section
HoundourFrontpic:    INCBIN "gfx/pokemon/houndour/front_gold.2bpp.lz"
floating_section
HypnoBackpic:        INCBIN "gfx/pokemon/hypno/back.2bpp.lz"
floating_section
HypnoFrontpic:       INCBIN "gfx/pokemon/hypno/front_gold.2bpp.lz"
floating_section
IgglybuffBackpic:    INCBIN "gfx/pokemon/igglybuff/back.2bpp.lz"
floating_section
IgglybuffFrontpic:   INCBIN "gfx/pokemon/igglybuff/front_gold.2bpp.lz"
floating_section
IvysaurBackpic:      INCBIN "gfx/pokemon/ivysaur/back.2bpp.lz"
floating_section
IvysaurFrontpic:     INCBIN "gfx/pokemon/ivysaur/front_gold.2bpp.lz"
floating_section
JigglypuffBackpic:   INCBIN "gfx/pokemon/jigglypuff/back.2bpp.lz"
floating_section
JigglypuffFrontpic:  INCBIN "gfx/pokemon/jigglypuff/front_gold.2bpp.lz"
floating_section
JolteonBackpic:      INCBIN "gfx/pokemon/jolteon/back.2bpp.lz"
floating_section
JolteonFrontpic:     INCBIN "gfx/pokemon/jolteon/front_gold.2bpp.lz"
floating_section
JumpluffBackpic:     INCBIN "gfx/pokemon/jumpluff/back.2bpp.lz"
floating_section
JumpluffFrontpic:    INCBIN "gfx/pokemon/jumpluff/front_gold.2bpp.lz"
floating_section
JynxBackpic:         INCBIN "gfx/pokemon/jynx/back.2bpp.lz"
floating_section
JynxFrontpic:        INCBIN "gfx/pokemon/jynx/front_gold.2bpp.lz"
floating_section
KabutoBackpic:       INCBIN "gfx/pokemon/kabuto/back.2bpp.lz"
floating_section
KabutoFrontpic:      INCBIN "gfx/pokemon/kabuto/front_gold.2bpp.lz"
floating_section
KabutopsBackpic:     INCBIN "gfx/pokemon/kabutops/back.2bpp.lz"
floating_section
KabutopsFrontpic:    INCBIN "gfx/pokemon/kabutops/front_gold.2bpp.lz"
floating_section
KadabraBackpic:      INCBIN "gfx/pokemon/kadabra/back.2bpp.lz"
floating_section
KadabraFrontpic:     INCBIN "gfx/pokemon/kadabra/front_gold.2bpp.lz"
floating_section
KakunaBackpic:       INCBIN "gfx/pokemon/kakuna/back.2bpp.lz"
floating_section
KakunaFrontpic:      INCBIN "gfx/pokemon/kakuna/front_gold.2bpp.lz"
floating_section
KangaskhanBackpic:   INCBIN "gfx/pokemon/kangaskhan/back.2bpp.lz"
floating_section
KangaskhanFrontpic:  INCBIN "gfx/pokemon/kangaskhan/front_gold.2bpp.lz"
floating_section
KingdraBackpic:      INCBIN "gfx/pokemon/kingdra/back.2bpp.lz"
floating_section
KingdraFrontpic:     INCBIN "gfx/pokemon/kingdra/front_gold.2bpp.lz"
floating_section
KinglerBackpic:      INCBIN "gfx/pokemon/kingler/back.2bpp.lz"
floating_section
KinglerFrontpic:     INCBIN "gfx/pokemon/kingler/front_gold.2bpp.lz"
floating_section
KoffingBackpic:      INCBIN "gfx/pokemon/koffing/back.2bpp.lz"
floating_section
KoffingFrontpic:     INCBIN "gfx/pokemon/koffing/front_gold.2bpp.lz"
floating_section
KrabbyBackpic:       INCBIN "gfx/pokemon/krabby/back.2bpp.lz"
floating_section
KrabbyFrontpic:      INCBIN "gfx/pokemon/krabby/front_gold.2bpp.lz"
floating_section
LanturnBackpic:      INCBIN "gfx/pokemon/lanturn/back.2bpp.lz"
floating_section
LanturnFrontpic:     INCBIN "gfx/pokemon/lanturn/front_gold.2bpp.lz"
floating_section
LaprasBackpic:       INCBIN "gfx/pokemon/lapras/back.2bpp.lz"
floating_section
LaprasFrontpic:      INCBIN "gfx/pokemon/lapras/front_gold.2bpp.lz"
floating_section
LarvitarBackpic:     INCBIN "gfx/pokemon/larvitar/back.2bpp.lz"
floating_section
LarvitarFrontpic:    INCBIN "gfx/pokemon/larvitar/front_gold.2bpp.lz"
floating_section
LedianBackpic:       INCBIN "gfx/pokemon/ledian/back.2bpp.lz"
floating_section
LedianFrontpic:      INCBIN "gfx/pokemon/ledian/front_gold.2bpp.lz"
floating_section
LedybaBackpic:       INCBIN "gfx/pokemon/ledyba/back.2bpp.lz"
floating_section
LedybaFrontpic:      INCBIN "gfx/pokemon/ledyba/front_gold.2bpp.lz"
floating_section
LickitungBackpic:    INCBIN "gfx/pokemon/lickitung/back.2bpp.lz"
floating_section
LickitungFrontpic:   INCBIN "gfx/pokemon/lickitung/front_gold.2bpp.lz"
floating_section
LugiaBackpic:        INCBIN "gfx/pokemon/lugia/back.2bpp.lz"
floating_section
LugiaFrontpic:       INCBIN "gfx/pokemon/lugia/front_gold.2bpp.lz"
floating_section
MachampBackpic:      INCBIN "gfx/pokemon/machamp/back.2bpp.lz"
floating_section
MachampFrontpic:     INCBIN "gfx/pokemon/machamp/front_gold.2bpp.lz"
floating_section
MachokeBackpic:      INCBIN "gfx/pokemon/machoke/back.2bpp.lz"
floating_section
MachokeFrontpic:     INCBIN "gfx/pokemon/machoke/front_gold.2bpp.lz"
floating_section
MachopBackpic:       INCBIN "gfx/pokemon/machop/back.2bpp.lz"
floating_section
MachopFrontpic:      INCBIN "gfx/pokemon/machop/front_gold.2bpp.lz"
floating_section
MagbyBackpic:        INCBIN "gfx/pokemon/magby/back.2bpp.lz"
floating_section
MagbyFrontpic:       INCBIN "gfx/pokemon/magby/front_gold.2bpp.lz"
floating_section
MagcargoBackpic:     INCBIN "gfx/pokemon/magcargo/back.2bpp.lz"
floating_section
MagcargoFrontpic:    INCBIN "gfx/pokemon/magcargo/front_gold.2bpp.lz"
floating_section
MagikarpBackpic:     INCBIN "gfx/pokemon/magikarp/back.2bpp.lz"
floating_section
MagikarpFrontpic:    INCBIN "gfx/pokemon/magikarp/front_gold.2bpp.lz"
floating_section
MagmarBackpic:       INCBIN "gfx/pokemon/magmar/back.2bpp.lz"
floating_section
MagmarFrontpic:      INCBIN "gfx/pokemon/magmar/front_gold.2bpp.lz"
floating_section
MagnemiteBackpic:    INCBIN "gfx/pokemon/magnemite/back.2bpp.lz"
floating_section
MagnemiteFrontpic:   INCBIN "gfx/pokemon/magnemite/front_gold.2bpp.lz"
floating_section
MagnetonBackpic:     INCBIN "gfx/pokemon/magneton/back.2bpp.lz"
floating_section
MagnetonFrontpic:    INCBIN "gfx/pokemon/magneton/front_gold.2bpp.lz"
floating_section
MankeyBackpic:       INCBIN "gfx/pokemon/mankey/back.2bpp.lz"
floating_section
MankeyFrontpic:      INCBIN "gfx/pokemon/mankey/front_gold.2bpp.lz"
floating_section
MantineBackpic:      INCBIN "gfx/pokemon/mantine/back.2bpp.lz"
floating_section
MantineFrontpic:     INCBIN "gfx/pokemon/mantine/front_gold.2bpp.lz"
floating_section
MareepBackpic:       INCBIN "gfx/pokemon/mareep/back.2bpp.lz"
floating_section
MareepFrontpic:      INCBIN "gfx/pokemon/mareep/front_gold.2bpp.lz"
floating_section
MarillBackpic:       INCBIN "gfx/pokemon/marill/back.2bpp.lz"
floating_section
MarillFrontpic:      INCBIN "gfx/pokemon/marill/front_gold.2bpp.lz"
floating_section
MarowakBackpic:      INCBIN "gfx/pokemon/marowak/back.2bpp.lz"
floating_section
MarowakFrontpic:     INCBIN "gfx/pokemon/marowak/front_gold.2bpp.lz"
floating_section
MeganiumBackpic:     INCBIN "gfx/pokemon/meganium/back.2bpp.lz"
floating_section
MeganiumFrontpic:    INCBIN "gfx/pokemon/meganium/front_gold.2bpp.lz"
floating_section
MeowthBackpic:       INCBIN "gfx/pokemon/meowth/back.2bpp.lz"
floating_section
MeowthFrontpic:      INCBIN "gfx/pokemon/meowth/front_gold.2bpp.lz"
floating_section
MetapodBackpic:      INCBIN "gfx/pokemon/metapod/back.2bpp.lz"
floating_section
MetapodFrontpic:     INCBIN "gfx/pokemon/metapod/front_gold.2bpp.lz"
floating_section
MewBackpic:          INCBIN "gfx/pokemon/mew/back.2bpp.lz"
floating_section
MewFrontpic:         INCBIN "gfx/pokemon/mew/front_gold.2bpp.lz"
floating_section
MewtwoBackpic:       INCBIN "gfx/pokemon/mewtwo/back.2bpp.lz"
floating_section
MewtwoFrontpic:      INCBIN "gfx/pokemon/mewtwo/front_gold.2bpp.lz"
floating_section
MiltankBackpic:      INCBIN "gfx/pokemon/miltank/back_gold.2bpp.lz"
floating_section
MiltankFrontpic:     INCBIN "gfx/pokemon/miltank/front_gold.2bpp.lz"
floating_section
MisdreavusBackpic:   INCBIN "gfx/pokemon/misdreavus/back.2bpp.lz"
floating_section
MisdreavusFrontpic:  INCBIN "gfx/pokemon/misdreavus/front_gold.2bpp.lz"
floating_section
MoltresBackpic:      INCBIN "gfx/pokemon/moltres/back.2bpp.lz"
floating_section
MoltresFrontpic:     INCBIN "gfx/pokemon/moltres/front_gold.2bpp.lz"
floating_section
MrMimeBackpic:       INCBIN "gfx/pokemon/mr__mime/back.2bpp.lz"
floating_section
MrMimeFrontpic:      INCBIN "gfx/pokemon/mr__mime/front_gold.2bpp.lz"
floating_section
MukBackpic:          INCBIN "gfx/pokemon/muk/back.2bpp.lz"
floating_section
MukFrontpic:         INCBIN "gfx/pokemon/muk/front_gold.2bpp.lz"
floating_section
MurkrowBackpic:      INCBIN "gfx/pokemon/murkrow/back.2bpp.lz"
floating_section
MurkrowFrontpic:     INCBIN "gfx/pokemon/murkrow/front_gold.2bpp.lz"
floating_section
NatuBackpic:         INCBIN "gfx/pokemon/natu/back.2bpp.lz"
floating_section
NatuFrontpic:        INCBIN "gfx/pokemon/natu/front_gold.2bpp.lz"
floating_section
NidokingBackpic:     INCBIN "gfx/pokemon/nidoking/back.2bpp.lz"
floating_section
NidokingFrontpic:    INCBIN "gfx/pokemon/nidoking/front_gold.2bpp.lz"
floating_section
NidoqueenBackpic:    INCBIN "gfx/pokemon/nidoqueen/back.2bpp.lz"
floating_section
NidoqueenFrontpic:   INCBIN "gfx/pokemon/nidoqueen/front_gold.2bpp.lz"
floating_section
NidoranFBackpic:     INCBIN "gfx/pokemon/nidoran_f/back.2bpp.lz"
floating_section
NidoranFFrontpic:    INCBIN "gfx/pokemon/nidoran_f/front_gold.2bpp.lz"
floating_section
NidoranMBackpic:     INCBIN "gfx/pokemon/nidoran_m/back.2bpp.lz"
floating_section
NidoranMFrontpic:    INCBIN "gfx/pokemon/nidoran_m/front_gold.2bpp.lz"
floating_section
NidorinaBackpic:     INCBIN "gfx/pokemon/nidorina/back.2bpp.lz"
floating_section
NidorinaFrontpic:    INCBIN "gfx/pokemon/nidorina/front_gold.2bpp.lz"
floating_section
NidorinoBackpic:     INCBIN "gfx/pokemon/nidorino/back.2bpp.lz"
floating_section
NidorinoFrontpic:    INCBIN "gfx/pokemon/nidorino/front_gold.2bpp.lz"
floating_section
NinetalesBackpic:    INCBIN "gfx/pokemon/ninetales/back.2bpp.lz"
floating_section
NinetalesFrontpic:   INCBIN "gfx/pokemon/ninetales/front_gold.2bpp.lz"
floating_section
NoctowlBackpic:      INCBIN "gfx/pokemon/noctowl/back.2bpp.lz"
floating_section
NoctowlFrontpic:     INCBIN "gfx/pokemon/noctowl/front_gold.2bpp.lz"
floating_section
OctilleryBackpic:    INCBIN "gfx/pokemon/octillery/back.2bpp.lz"
floating_section
OctilleryFrontpic:   INCBIN "gfx/pokemon/octillery/front_gold.2bpp.lz"
floating_section
OddishBackpic:       INCBIN "gfx/pokemon/oddish/back.2bpp.lz"
floating_section
OddishFrontpic:      INCBIN "gfx/pokemon/oddish/front_gold.2bpp.lz"
floating_section
OmanyteBackpic:      INCBIN "gfx/pokemon/omanyte/back.2bpp.lz"
floating_section
OmanyteFrontpic:     INCBIN "gfx/pokemon/omanyte/front_gold.2bpp.lz"
floating_section
OmastarBackpic:      INCBIN "gfx/pokemon/omastar/back.2bpp.lz"
floating_section
OmastarFrontpic:     INCBIN "gfx/pokemon/omastar/front_gold.2bpp.lz"
floating_section
OnixBackpic:         INCBIN "gfx/pokemon/onix/back.2bpp.lz"
floating_section
OnixFrontpic:        INCBIN "gfx/pokemon/onix/front_gold.2bpp.lz"
floating_section
ParasBackpic:        INCBIN "gfx/pokemon/paras/back.2bpp.lz"
floating_section
ParasFrontpic:       INCBIN "gfx/pokemon/paras/front_gold.2bpp.lz"
floating_section
ParasectBackpic:     INCBIN "gfx/pokemon/parasect/back.2bpp.lz"
floating_section
ParasectFrontpic:    INCBIN "gfx/pokemon/parasect/front_gold.2bpp.lz"
floating_section
PersianBackpic:      INCBIN "gfx/pokemon/persian/back.2bpp.lz"
floating_section
PersianFrontpic:     INCBIN "gfx/pokemon/persian/front_gold.2bpp.lz"
floating_section
PhanpyBackpic:       INCBIN "gfx/pokemon/phanpy/back.2bpp.lz"
floating_section
PhanpyFrontpic:      INCBIN "gfx/pokemon/phanpy/front_gold.2bpp.lz"
floating_section
PichuBackpic:        INCBIN "gfx/pokemon/pichu/back.2bpp.lz"
floating_section
PichuFrontpic:       INCBIN "gfx/pokemon/pichu/front_gold.2bpp.lz"
floating_section
PidgeotBackpic:      INCBIN "gfx/pokemon/pidgeot/back.2bpp.lz"
floating_section
PidgeotFrontpic:     INCBIN "gfx/pokemon/pidgeot/front_gold.2bpp.lz"
floating_section
PidgeottoBackpic:    INCBIN "gfx/pokemon/pidgeotto/back.2bpp.lz"
floating_section
PidgeottoFrontpic:   INCBIN "gfx/pokemon/pidgeotto/front_gold.2bpp.lz"
floating_section
PidgeyBackpic:       INCBIN "gfx/pokemon/pidgey/back.2bpp.lz"
floating_section
PidgeyFrontpic:      INCBIN "gfx/pokemon/pidgey/front_gold.2bpp.lz"
floating_section
PikachuBackpic:      INCBIN "gfx/pokemon/pikachu/back.2bpp.lz"
floating_section
PikachuFrontpic:     INCBIN "gfx/pokemon/pikachu/front_gold.2bpp.lz"
floating_section
PiloswineBackpic:    INCBIN "gfx/pokemon/piloswine/back.2bpp.lz"
floating_section
PiloswineFrontpic:   INCBIN "gfx/pokemon/piloswine/front_gold.2bpp.lz"
floating_section
PinecoBackpic:       INCBIN "gfx/pokemon/pineco/back.2bpp.lz"
floating_section
PinecoFrontpic:      INCBIN "gfx/pokemon/pineco/front_gold.2bpp.lz"
floating_section
PinsirBackpic:       INCBIN "gfx/pokemon/pinsir/back.2bpp.lz"
floating_section
PinsirFrontpic:      INCBIN "gfx/pokemon/pinsir/front_gold.2bpp.lz"
floating_section
PolitoedBackpic:     INCBIN "gfx/pokemon/politoed/back.2bpp.lz"
floating_section
PolitoedFrontpic:    INCBIN "gfx/pokemon/politoed/front_gold.2bpp.lz"
floating_section
PoliwagBackpic:      INCBIN "gfx/pokemon/poliwag/back.2bpp.lz"
floating_section
PoliwagFrontpic:     INCBIN "gfx/pokemon/poliwag/front_gold.2bpp.lz"
floating_section
PoliwhirlBackpic:    INCBIN "gfx/pokemon/poliwhirl/back.2bpp.lz"
floating_section
PoliwhirlFrontpic:   INCBIN "gfx/pokemon/poliwhirl/front_gold.2bpp.lz"
floating_section
PoliwrathBackpic:    INCBIN "gfx/pokemon/poliwrath/back.2bpp.lz"
floating_section
PoliwrathFrontpic:   INCBIN "gfx/pokemon/poliwrath/front_gold.2bpp.lz"
floating_section
PonytaBackpic:       INCBIN "gfx/pokemon/ponyta/back.2bpp.lz"
floating_section
PonytaFrontpic:      INCBIN "gfx/pokemon/ponyta/front_gold.2bpp.lz"
floating_section
PorygonBackpic:      INCBIN "gfx/pokemon/porygon/back.2bpp.lz"
floating_section
PorygonFrontpic:     INCBIN "gfx/pokemon/porygon/front_gold.2bpp.lz"
floating_section
Porygon2Backpic:     INCBIN "gfx/pokemon/porygon2/back.2bpp.lz"
floating_section
Porygon2Frontpic:    INCBIN "gfx/pokemon/porygon2/front_gold.2bpp.lz"
floating_section
PrimeapeBackpic:     INCBIN "gfx/pokemon/primeape/back.2bpp.lz"
floating_section
PrimeapeFrontpic:    INCBIN "gfx/pokemon/primeape/front_gold.2bpp.lz"
floating_section
PsyduckBackpic:      INCBIN "gfx/pokemon/psyduck/back.2bpp.lz"
floating_section
PsyduckFrontpic:     INCBIN "gfx/pokemon/psyduck/front_gold.2bpp.lz"
floating_section
PupitarBackpic:      INCBIN "gfx/pokemon/pupitar/back.2bpp.lz"
floating_section
PupitarFrontpic:     INCBIN "gfx/pokemon/pupitar/front_gold.2bpp.lz"
floating_section
QuagsireBackpic:     INCBIN "gfx/pokemon/quagsire/back.2bpp.lz"
floating_section
QuagsireFrontpic:    INCBIN "gfx/pokemon/quagsire/front_gold.2bpp.lz"
floating_section
QuilavaBackpic:      INCBIN "gfx/pokemon/quilava/back.2bpp.lz"
floating_section
QuilavaFrontpic:     INCBIN "gfx/pokemon/quilava/front_gold.2bpp.lz"
floating_section
QwilfishBackpic:     INCBIN "gfx/pokemon/qwilfish/back.2bpp.lz"
floating_section
QwilfishFrontpic:    INCBIN "gfx/pokemon/qwilfish/front_gold.2bpp.lz"
floating_section
RaichuBackpic:       INCBIN "gfx/pokemon/raichu/back.2bpp.lz"
floating_section
RaichuFrontpic:      INCBIN "gfx/pokemon/raichu/front_gold.2bpp.lz"
floating_section
RaikouBackpic:       INCBIN "gfx/pokemon/raikou/back.2bpp.lz"
floating_section
RaikouFrontpic:      INCBIN "gfx/pokemon/raikou/front.2bpp.lz"
floating_section
RapidashBackpic:     INCBIN "gfx/pokemon/rapidash/back.2bpp.lz"
floating_section
RapidashFrontpic:    INCBIN "gfx/pokemon/rapidash/front_gold.2bpp.lz"
floating_section
RaticateBackpic:     INCBIN "gfx/pokemon/raticate/back.2bpp.lz"
floating_section
RaticateFrontpic:    INCBIN "gfx/pokemon/raticate/front_gold.2bpp.lz"
floating_section
RattataBackpic:      INCBIN "gfx/pokemon/rattata/back.2bpp.lz"
floating_section
RattataFrontpic:     INCBIN "gfx/pokemon/rattata/front_gold.2bpp.lz"
floating_section
RemoraidBackpic:     INCBIN "gfx/pokemon/remoraid/back.2bpp.lz"
floating_section
RemoraidFrontpic:    INCBIN "gfx/pokemon/remoraid/front_gold.2bpp.lz"
floating_section
RhydonBackpic:       INCBIN "gfx/pokemon/rhydon/back.2bpp.lz"
floating_section
RhydonFrontpic:      INCBIN "gfx/pokemon/rhydon/front_gold.2bpp.lz"
floating_section
RhyhornBackpic:      INCBIN "gfx/pokemon/rhyhorn/back.2bpp.lz"
floating_section
RhyhornFrontpic:     INCBIN "gfx/pokemon/rhyhorn/front_gold.2bpp.lz"
floating_section
SandshrewBackpic:    INCBIN "gfx/pokemon/sandshrew/back.2bpp.lz"
floating_section
SandshrewFrontpic:   INCBIN "gfx/pokemon/sandshrew/front_gold.2bpp.lz"
floating_section
SandslashBackpic:    INCBIN "gfx/pokemon/sandslash/back.2bpp.lz"
floating_section
SandslashFrontpic:   INCBIN "gfx/pokemon/sandslash/front_gold.2bpp.lz"
floating_section
ScizorBackpic:       INCBIN "gfx/pokemon/scizor/back.2bpp.lz"
floating_section
ScizorFrontpic:      INCBIN "gfx/pokemon/scizor/front_gold.2bpp.lz"
floating_section
ScytherBackpic:      INCBIN "gfx/pokemon/scyther/back.2bpp.lz"
floating_section
ScytherFrontpic:     INCBIN "gfx/pokemon/scyther/front_gold.2bpp.lz"
floating_section
SeadraBackpic:       INCBIN "gfx/pokemon/seadra/back.2bpp.lz"
floating_section
SeadraFrontpic:      INCBIN "gfx/pokemon/seadra/front_gold.2bpp.lz"
floating_section
SeakingBackpic:      INCBIN "gfx/pokemon/seaking/back.2bpp.lz"
floating_section
SeakingFrontpic:     INCBIN "gfx/pokemon/seaking/front_gold.2bpp.lz"
floating_section
SeelBackpic:         INCBIN "gfx/pokemon/seel/back.2bpp.lz"
floating_section
SeelFrontpic:        INCBIN "gfx/pokemon/seel/front_gold.2bpp.lz"
floating_section
SentretBackpic:      INCBIN "gfx/pokemon/sentret/back.2bpp.lz"
floating_section
SentretFrontpic:     INCBIN "gfx/pokemon/sentret/front_gold.2bpp.lz"
floating_section
ShellderBackpic:     INCBIN "gfx/pokemon/shellder/back.2bpp.lz"
floating_section
ShellderFrontpic:    INCBIN "gfx/pokemon/shellder/front_gold.2bpp.lz"
floating_section
ShuckleBackpic:      INCBIN "gfx/pokemon/shuckle/back.2bpp.lz"
floating_section
ShuckleFrontpic:     INCBIN "gfx/pokemon/shuckle/front_gold.2bpp.lz"
floating_section
SkarmoryBackpic:     INCBIN "gfx/pokemon/skarmory/back.2bpp.lz"
floating_section
SkarmoryFrontpic:    INCBIN "gfx/pokemon/skarmory/front_gold.2bpp.lz"
floating_section
SkiploomBackpic:     INCBIN "gfx/pokemon/skiploom/back.2bpp.lz"
floating_section
SkiploomFrontpic:    INCBIN "gfx/pokemon/skiploom/front_gold.2bpp.lz"
floating_section
SlowbroBackpic:      INCBIN "gfx/pokemon/slowbro/back.2bpp.lz"
floating_section
SlowbroFrontpic:     INCBIN "gfx/pokemon/slowbro/front_gold.2bpp.lz"
floating_section
SlowkingBackpic:     INCBIN "gfx/pokemon/slowking/back.2bpp.lz"
floating_section
SlowkingFrontpic:    INCBIN "gfx/pokemon/slowking/front_gold.2bpp.lz"
floating_section
SlowpokeBackpic:     INCBIN "gfx/pokemon/slowpoke/back.2bpp.lz"
floating_section
SlowpokeFrontpic:    INCBIN "gfx/pokemon/slowpoke/front_gold.2bpp.lz"
floating_section
SlugmaBackpic:       INCBIN "gfx/pokemon/slugma/back.2bpp.lz"
floating_section
SlugmaFrontpic:      INCBIN "gfx/pokemon/slugma/front_gold.2bpp.lz"
floating_section
SmeargleBackpic:     INCBIN "gfx/pokemon/smeargle/back.2bpp.lz"
floating_section
SmeargleFrontpic:    INCBIN "gfx/pokemon/smeargle/front_gold.2bpp.lz"
floating_section
SmoochumBackpic:     INCBIN "gfx/pokemon/smoochum/back.2bpp.lz"
floating_section
SmoochumFrontpic:    INCBIN "gfx/pokemon/smoochum/front_gold.2bpp.lz"
floating_section
SneaselBackpic:      INCBIN "gfx/pokemon/sneasel/back.2bpp.lz"
floating_section
SneaselFrontpic:     INCBIN "gfx/pokemon/sneasel/front.2bpp.lz"
floating_section
SnorlaxBackpic:      INCBIN "gfx/pokemon/snorlax/back.2bpp.lz"
floating_section
SnorlaxFrontpic:     INCBIN "gfx/pokemon/snorlax/front_gold.2bpp.lz"
floating_section
SnubbullBackpic:     INCBIN "gfx/pokemon/snubbull/back.2bpp.lz"
floating_section
SnubbullFrontpic:    INCBIN "gfx/pokemon/snubbull/front_gold.2bpp.lz"
floating_section
SpearowBackpic:      INCBIN "gfx/pokemon/spearow/back.2bpp.lz"
floating_section
SpearowFrontpic:     INCBIN "gfx/pokemon/spearow/front_gold.2bpp.lz"
floating_section
SpinarakBackpic:     INCBIN "gfx/pokemon/spinarak/back.2bpp.lz"
floating_section
SpinarakFrontpic:    INCBIN "gfx/pokemon/spinarak/front.2bpp.lz"
floating_section
SquirtleBackpic:     INCBIN "gfx/pokemon/squirtle/back.2bpp.lz"
floating_section
SquirtleFrontpic:    INCBIN "gfx/pokemon/squirtle/front_gold.2bpp.lz"
floating_section
StantlerBackpic:     INCBIN "gfx/pokemon/stantler/back.2bpp.lz"
floating_section
StantlerFrontpic:    INCBIN "gfx/pokemon/stantler/front_gold.2bpp.lz"
floating_section
StarmieBackpic:      INCBIN "gfx/pokemon/starmie/back.2bpp.lz"
floating_section
StarmieFrontpic:     INCBIN "gfx/pokemon/starmie/front_gold.2bpp.lz"
floating_section
StaryuBackpic:       INCBIN "gfx/pokemon/staryu/back.2bpp.lz"
floating_section
StaryuFrontpic:      INCBIN "gfx/pokemon/staryu/front_gold.2bpp.lz"
floating_section
SteelixBackpic:      INCBIN "gfx/pokemon/steelix/back.2bpp.lz"
floating_section
SteelixFrontpic:     INCBIN "gfx/pokemon/steelix/front_gold.2bpp.lz"
floating_section
SudowoodoBackpic:    INCBIN "gfx/pokemon/sudowoodo/back.2bpp.lz"
floating_section
SudowoodoFrontpic:   INCBIN "gfx/pokemon/sudowoodo/front_gold.2bpp.lz"
floating_section
SuicuneBackpic:      INCBIN "gfx/pokemon/suicune/back.2bpp.lz"
floating_section
SuicuneFrontpic:     INCBIN "gfx/pokemon/suicune/front.2bpp.lz"
floating_section
SunfloraBackpic:     INCBIN "gfx/pokemon/sunflora/back.2bpp.lz"
floating_section
SunfloraFrontpic:    INCBIN "gfx/pokemon/sunflora/front_gold.2bpp.lz"
floating_section
SunkernBackpic:      INCBIN "gfx/pokemon/sunkern/back.2bpp.lz"
floating_section
SunkernFrontpic:     INCBIN "gfx/pokemon/sunkern/front_gold.2bpp.lz"
floating_section
SwinubBackpic:       INCBIN "gfx/pokemon/swinub/back.2bpp.lz"
floating_section
SwinubFrontpic:      INCBIN "gfx/pokemon/swinub/front.2bpp.lz"
floating_section
TangelaBackpic:      INCBIN "gfx/pokemon/tangela/back.2bpp.lz"
floating_section
TangelaFrontpic:     INCBIN "gfx/pokemon/tangela/front_gold.2bpp.lz"
floating_section
TaurosBackpic:       INCBIN "gfx/pokemon/tauros/back.2bpp.lz"
floating_section
TaurosFrontpic:      INCBIN "gfx/pokemon/tauros/front_gold.2bpp.lz"
floating_section
TeddiursaBackpic:    INCBIN "gfx/pokemon/teddiursa/back.2bpp.lz"
floating_section
TeddiursaFrontpic:   INCBIN "gfx/pokemon/teddiursa/front_gold.2bpp.lz"
floating_section
TentacoolBackpic:    INCBIN "gfx/pokemon/tentacool/back.2bpp.lz"
floating_section
TentacoolFrontpic:   INCBIN "gfx/pokemon/tentacool/front_gold.2bpp.lz"
floating_section
TentacruelBackpic:   INCBIN "gfx/pokemon/tentacruel/back.2bpp.lz"
floating_section
TentacruelFrontpic:  INCBIN "gfx/pokemon/tentacruel/front_gold.2bpp.lz"
floating_section
TogepiBackpic:       INCBIN "gfx/pokemon/togepi/back.2bpp.lz"
floating_section
TogepiFrontpic:      INCBIN "gfx/pokemon/togepi/front_gold.2bpp.lz"
floating_section
TogeticBackpic:      INCBIN "gfx/pokemon/togetic/back.2bpp.lz"
floating_section
TogeticFrontpic:     INCBIN "gfx/pokemon/togetic/front_gold.2bpp.lz"
floating_section
TotodileBackpic:     INCBIN "gfx/pokemon/totodile/back.2bpp.lz"
floating_section
TotodileFrontpic:    INCBIN "gfx/pokemon/totodile/front_gold.2bpp.lz"
floating_section
TyphlosionBackpic:   INCBIN "gfx/pokemon/typhlosion/back.2bpp.lz"
floating_section
TyphlosionFrontpic:  INCBIN "gfx/pokemon/typhlosion/front_gold.2bpp.lz"
floating_section
TyranitarBackpic:    INCBIN "gfx/pokemon/tyranitar/back.2bpp.lz"
floating_section
TyranitarFrontpic:   INCBIN "gfx/pokemon/tyranitar/front_gold.2bpp.lz"
floating_section
TyrogueBackpic:      INCBIN "gfx/pokemon/tyrogue/back.2bpp.lz"
floating_section
TyrogueFrontpic:     INCBIN "gfx/pokemon/tyrogue/front_gold.2bpp.lz"
floating_section
UmbreonBackpic:      INCBIN "gfx/pokemon/umbreon/back.2bpp.lz"
floating_section
UmbreonFrontpic:     INCBIN "gfx/pokemon/umbreon/front_gold.2bpp.lz"
floating_section
UnownABackpic:       INCBIN "gfx/pokemon/unown_a/back.2bpp.lz"
floating_section
UnownAFrontpic:      INCBIN "gfx/pokemon/unown_a/front.2bpp.lz"
floating_section
UnownBBackpic:       INCBIN "gfx/pokemon/unown_b/back.2bpp.lz"
floating_section
UnownBFrontpic:      INCBIN "gfx/pokemon/unown_b/front.2bpp.lz"
floating_section
UnownCBackpic:       INCBIN "gfx/pokemon/unown_c/back.2bpp.lz"
floating_section
UnownCFrontpic:      INCBIN "gfx/pokemon/unown_c/front.2bpp.lz"
floating_section
UnownDBackpic:       INCBIN "gfx/pokemon/unown_d/back.2bpp.lz"
floating_section
UnownDFrontpic:      INCBIN "gfx/pokemon/unown_d/front.2bpp.lz"
floating_section
UnownEBackpic:       INCBIN "gfx/pokemon/unown_e/back.2bpp.lz"
floating_section
UnownEFrontpic:      INCBIN "gfx/pokemon/unown_e/front.2bpp.lz"
floating_section
UnownFBackpic:       INCBIN "gfx/pokemon/unown_f/back.2bpp.lz"
floating_section
UnownFFrontpic:      INCBIN "gfx/pokemon/unown_f/front.2bpp.lz"
floating_section
UnownGBackpic:       INCBIN "gfx/pokemon/unown_g/back.2bpp.lz"
floating_section
UnownGFrontpic:      INCBIN "gfx/pokemon/unown_g/front.2bpp.lz"
floating_section
UnownHBackpic:       INCBIN "gfx/pokemon/unown_h/back.2bpp.lz"
floating_section
UnownHFrontpic:      INCBIN "gfx/pokemon/unown_h/front.2bpp.lz"
floating_section
UnownIBackpic:       INCBIN "gfx/pokemon/unown_i/back.2bpp.lz"
floating_section
UnownIFrontpic:      INCBIN "gfx/pokemon/unown_i/front.2bpp.lz"
floating_section
UnownJBackpic:       INCBIN "gfx/pokemon/unown_j/back.2bpp.lz"
floating_section
UnownJFrontpic:      INCBIN "gfx/pokemon/unown_j/front.2bpp.lz"
floating_section
UnownKBackpic:       INCBIN "gfx/pokemon/unown_k/back.2bpp.lz"
floating_section
UnownKFrontpic:      INCBIN "gfx/pokemon/unown_k/front.2bpp.lz"
floating_section
UnownLBackpic:       INCBIN "gfx/pokemon/unown_l/back.2bpp.lz"
floating_section
UnownLFrontpic:      INCBIN "gfx/pokemon/unown_l/front.2bpp.lz"
floating_section
UnownMBackpic:       INCBIN "gfx/pokemon/unown_m/back.2bpp.lz"
floating_section
UnownMFrontpic:      INCBIN "gfx/pokemon/unown_m/front.2bpp.lz"
floating_section
UnownNBackpic:       INCBIN "gfx/pokemon/unown_n/back.2bpp.lz"
floating_section
UnownNFrontpic:      INCBIN "gfx/pokemon/unown_n/front.2bpp.lz"
floating_section
UnownOBackpic:       INCBIN "gfx/pokemon/unown_o/back.2bpp.lz"
floating_section
UnownOFrontpic:      INCBIN "gfx/pokemon/unown_o/front.2bpp.lz"
floating_section
UnownPBackpic:       INCBIN "gfx/pokemon/unown_p/back.2bpp.lz"
floating_section
UnownPFrontpic:      INCBIN "gfx/pokemon/unown_p/front.2bpp.lz"
floating_section
UnownQBackpic:       INCBIN "gfx/pokemon/unown_q/back.2bpp.lz"
floating_section
UnownQFrontpic:      INCBIN "gfx/pokemon/unown_q/front.2bpp.lz"
floating_section
UnownRBackpic:       INCBIN "gfx/pokemon/unown_r/back.2bpp.lz"
floating_section
UnownRFrontpic:      INCBIN "gfx/pokemon/unown_r/front.2bpp.lz"
floating_section
UnownSBackpic:       INCBIN "gfx/pokemon/unown_s/back.2bpp.lz"
floating_section
UnownSFrontpic:      INCBIN "gfx/pokemon/unown_s/front.2bpp.lz"
floating_section
UnownTBackpic:       INCBIN "gfx/pokemon/unown_t/back.2bpp.lz"
floating_section
UnownTFrontpic:      INCBIN "gfx/pokemon/unown_t/front.2bpp.lz"
floating_section
UnownUBackpic:       INCBIN "gfx/pokemon/unown_u/back.2bpp.lz"
floating_section
UnownUFrontpic:      INCBIN "gfx/pokemon/unown_u/front.2bpp.lz"
floating_section
UnownVBackpic:       INCBIN "gfx/pokemon/unown_v/back.2bpp.lz"
floating_section
UnownVFrontpic:      INCBIN "gfx/pokemon/unown_v/front.2bpp.lz"
floating_section
UnownWBackpic:       INCBIN "gfx/pokemon/unown_w/back.2bpp.lz"
floating_section
UnownWFrontpic:      INCBIN "gfx/pokemon/unown_w/front.2bpp.lz"
floating_section
UnownXBackpic:       INCBIN "gfx/pokemon/unown_x/back.2bpp.lz"
floating_section
UnownXFrontpic:      INCBIN "gfx/pokemon/unown_x/front.2bpp.lz"
floating_section
UnownYBackpic:       INCBIN "gfx/pokemon/unown_y/back.2bpp.lz"
floating_section
UnownYFrontpic:      INCBIN "gfx/pokemon/unown_y/front.2bpp.lz"
floating_section
UnownZBackpic:       INCBIN "gfx/pokemon/unown_z/back.2bpp.lz"
floating_section
UnownZFrontpic:      INCBIN "gfx/pokemon/unown_z/front.2bpp.lz"
floating_section
UrsaringBackpic:     INCBIN "gfx/pokemon/ursaring/back.2bpp.lz"
floating_section
UrsaringFrontpic:    INCBIN "gfx/pokemon/ursaring/front_gold.2bpp.lz"
floating_section
VaporeonBackpic:     INCBIN "gfx/pokemon/vaporeon/back.2bpp.lz"
floating_section
VaporeonFrontpic:    INCBIN "gfx/pokemon/vaporeon/front_gold.2bpp.lz"
floating_section
VenomothBackpic:     INCBIN "gfx/pokemon/venomoth/back.2bpp.lz"
floating_section
VenomothFrontpic:    INCBIN "gfx/pokemon/venomoth/front_gold.2bpp.lz"
floating_section
VenonatBackpic:      INCBIN "gfx/pokemon/venonat/back.2bpp.lz"
floating_section
VenonatFrontpic:     INCBIN "gfx/pokemon/venonat/front_gold.2bpp.lz"
floating_section
VenusaurBackpic:     INCBIN "gfx/pokemon/venusaur/back.2bpp.lz"
floating_section
VenusaurFrontpic:    INCBIN "gfx/pokemon/venusaur/front_gold.2bpp.lz"
floating_section
VictreebelBackpic:   INCBIN "gfx/pokemon/victreebel/back.2bpp.lz"
floating_section
VictreebelFrontpic:  INCBIN "gfx/pokemon/victreebel/front_gold.2bpp.lz"
floating_section
VileplumeBackpic:    INCBIN "gfx/pokemon/vileplume/back.2bpp.lz"
floating_section
VileplumeFrontpic:   INCBIN "gfx/pokemon/vileplume/front_gold.2bpp.lz"
floating_section
VoltorbBackpic:      INCBIN "gfx/pokemon/voltorb/back.2bpp.lz"
floating_section
VoltorbFrontpic:     INCBIN "gfx/pokemon/voltorb/front_gold.2bpp.lz"
floating_section
VulpixBackpic:       INCBIN "gfx/pokemon/vulpix/back.2bpp.lz"
floating_section
VulpixFrontpic:      INCBIN "gfx/pokemon/vulpix/front_gold.2bpp.lz"
floating_section
WartortleBackpic:    INCBIN "gfx/pokemon/wartortle/back.2bpp.lz"
floating_section
WartortleFrontpic:   INCBIN "gfx/pokemon/wartortle/front_gold.2bpp.lz"
floating_section
WeedleBackpic:       INCBIN "gfx/pokemon/weedle/back.2bpp.lz"
floating_section
WeedleFrontpic:      INCBIN "gfx/pokemon/weedle/front_gold.2bpp.lz"
floating_section
WeepinbellBackpic:   INCBIN "gfx/pokemon/weepinbell/back.2bpp.lz"
floating_section
WeepinbellFrontpic:  INCBIN "gfx/pokemon/weepinbell/front_gold.2bpp.lz"
floating_section
WeezingBackpic:      INCBIN "gfx/pokemon/weezing/back.2bpp.lz"
floating_section
WeezingFrontpic:     INCBIN "gfx/pokemon/weezing/front_gold.2bpp.lz"
floating_section
WigglytuffBackpic:   INCBIN "gfx/pokemon/wigglytuff/back.2bpp.lz"
floating_section
WigglytuffFrontpic:  INCBIN "gfx/pokemon/wigglytuff/front_gold.2bpp.lz"
floating_section
WobbuffetBackpic:    INCBIN "gfx/pokemon/wobbuffet/back.2bpp.lz"
floating_section
WobbuffetFrontpic:   INCBIN "gfx/pokemon/wobbuffet/front_gold.2bpp.lz"
floating_section
WooperBackpic:       INCBIN "gfx/pokemon/wooper/back.2bpp.lz"
floating_section
WooperFrontpic:      INCBIN "gfx/pokemon/wooper/front_gold.2bpp.lz"
floating_section
XatuBackpic:         INCBIN "gfx/pokemon/xatu/back.2bpp.lz"
floating_section
XatuFrontpic:        INCBIN "gfx/pokemon/xatu/front_gold.2bpp.lz"
floating_section
YanmaBackpic:        INCBIN "gfx/pokemon/yanma/back.2bpp.lz"
floating_section
YanmaFrontpic:       INCBIN "gfx/pokemon/yanma/front_gold.2bpp.lz"
floating_section
ZapdosBackpic:       INCBIN "gfx/pokemon/zapdos/back.2bpp.lz"
floating_section
ZapdosFrontpic:      INCBIN "gfx/pokemon/zapdos/front_gold.2bpp.lz"
floating_section
ZubatBackpic:        INCBIN "gfx/pokemon/zubat/back.2bpp.lz"
floating_section
ZubatFrontpic:       INCBIN "gfx/pokemon/zubat/front_gold.2bpp.lz"
floating_section
BeautyPic:           INCBIN "gfx/trainers/beauty.2bpp.lz"
floating_section
BikerPic:            INCBIN "gfx/trainers/biker.2bpp.lz"
floating_section
BirdKeeperPic:       INCBIN "gfx/trainers/bird_keeper.2bpp.lz"
floating_section
BlackbeltTPic:       INCBIN "gfx/trainers/blackbelt_t.2bpp.lz"
floating_section
BlainePic:           INCBIN "gfx/trainers/blaine.2bpp.lz"
floating_section
BluePic:             INCBIN "gfx/trainers/blue.2bpp.lz"
floating_section
BoarderPic:          INCBIN "gfx/trainers/boarder.2bpp.lz"
floating_section
BrockPic:            INCBIN "gfx/trainers/brock.2bpp.lz"
floating_section
BrunoPic:            INCBIN "gfx/trainers/bruno.2bpp.lz"
floating_section
BugCatcherPic:       INCBIN "gfx/trainers/bug_catcher.2bpp.lz"
floating_section
BugsyPic:            INCBIN "gfx/trainers/bugsy.2bpp.lz"
floating_section
BurglarPic:          INCBIN "gfx/trainers/burglar.2bpp.lz"
floating_section
CalPic:              INCBIN "gfx/trainers/cal.2bpp.lz"
floating_section
CamperPic:           INCBIN "gfx/trainers/camper.2bpp.lz"
floating_section
ChampionPic:         INCBIN "gfx/trainers/champion.2bpp.lz"
floating_section
ChuckPic:            INCBIN "gfx/trainers/chuck.2bpp.lz"
floating_section
ClairPic:            INCBIN "gfx/trainers/clair.2bpp.lz"
floating_section
CooltrainerfPic:     INCBIN "gfx/trainers/cooltrainer_f.2bpp.lz"
floating_section
CooltrainermPic:     INCBIN "gfx/trainers/cooltrainer_m.2bpp.lz"
floating_section
ErikaPic:            INCBIN "gfx/trainers/erika.2bpp.lz"
floating_section
ExecutivefPic:       INCBIN "gfx/trainers/executive_f.2bpp.lz"
floating_section
ExecutivemPic:       INCBIN "gfx/trainers/executive_m.2bpp.lz"
floating_section
FalknerPic:          INCBIN "gfx/trainers/falkner.2bpp.lz"
floating_section
FirebreatherPic:     INCBIN "gfx/trainers/firebreather.2bpp.lz"
floating_section
FisherPic:           INCBIN "gfx/trainers/fisher.2bpp.lz"
floating_section
GentlemanPic:        INCBIN "gfx/trainers/gentleman.2bpp.lz"
floating_section
GruntfPic:           INCBIN "gfx/trainers/grunt_f.2bpp.lz"
floating_section
GruntmPic:           INCBIN "gfx/trainers/grunt_m.2bpp.lz"
floating_section
GuitaristPic:        INCBIN "gfx/trainers/guitarist.2bpp.lz"
floating_section
HikerPic:            INCBIN "gfx/trainers/hiker.2bpp.lz"
floating_section
JaninePic:           INCBIN "gfx/trainers/janine.2bpp.lz"
floating_section
JasminePic:          INCBIN "gfx/trainers/jasmine.2bpp.lz"
floating_section
JugglerPic:          INCBIN "gfx/trainers/juggler.2bpp.lz"
floating_section
KarenPic:            INCBIN "gfx/trainers/karen.2bpp.lz"
floating_section
KimonoGirlPic:       INCBIN "gfx/trainers/kimono_girl.2bpp.lz"
floating_section
KogaPic:             INCBIN "gfx/trainers/koga.2bpp.lz"
floating_section
LassPic:             INCBIN "gfx/trainers/lass.2bpp.lz"
floating_section
LtSurgePic:          INCBIN "gfx/trainers/lt_surge.2bpp.lz"
floating_section
MediumPic:           INCBIN "gfx/trainers/medium.2bpp.lz"
floating_section
MistyPic:            INCBIN "gfx/trainers/misty.2bpp.lz"
floating_section
MortyPic:            INCBIN "gfx/trainers/morty.2bpp.lz"
floating_section
PokemonProfPic:      INCBIN "gfx/trainers/oak.2bpp.lz"
floating_section
OfficerPic:          INCBIN "gfx/trainers/officer.2bpp.lz"
floating_section
PicnickerPic:        INCBIN "gfx/trainers/picnicker.2bpp.lz"
floating_section
PokefanfPic:         INCBIN "gfx/trainers/pokefan_f.2bpp.lz"
floating_section
PokefanmPic:         INCBIN "gfx/trainers/pokefan_m.2bpp.lz"
floating_section
PokemaniacPic:       INCBIN "gfx/trainers/pokemaniac.2bpp.lz"
floating_section
PrycePic:            INCBIN "gfx/trainers/pryce.2bpp.lz"
floating_section
PsychicTPic:         INCBIN "gfx/trainers/psychic_t.2bpp.lz"
floating_section
RedPic:              INCBIN "gfx/trainers/red.2bpp.lz"
floating_section
Rival1Pic:           INCBIN "gfx/trainers/rival1.2bpp.lz"
floating_section
Rival2Pic:           INCBIN "gfx/trainers/rival2.2bpp.lz"
floating_section
SabrinaPic:          INCBIN "gfx/trainers/sabrina.2bpp.lz"
floating_section
SagePic:             INCBIN "gfx/trainers/sage.2bpp.lz"
floating_section
SailorPic:           INCBIN "gfx/trainers/sailor.2bpp.lz"
floating_section
SchoolboyPic:        INCBIN "gfx/trainers/schoolboy.2bpp.lz"
floating_section
ScientistPic:        INCBIN "gfx/trainers/scientist.2bpp.lz"
floating_section
SkierPic:            INCBIN "gfx/trainers/skier.2bpp.lz"
floating_section
SuperNerdPic:        INCBIN "gfx/trainers/super_nerd.2bpp.lz"
floating_section
SwimmerfPic:         INCBIN "gfx/trainers/swimmer_f.2bpp.lz"
floating_section
SwimmermPic:         INCBIN "gfx/trainers/swimmer_m.2bpp.lz"
floating_section
TeacherPic:          INCBIN "gfx/trainers/teacher.2bpp.lz"
floating_section
TwinsPic:            INCBIN "gfx/trainers/twins.2bpp.lz"
floating_section
WhitneyPic:          INCBIN "gfx/trainers/whitney.2bpp.lz"
floating_section
WillPic:             INCBIN "gfx/trainers/will.2bpp.lz"
floating_section
YoungsterPic:        INCBIN "gfx/trainers/youngster.2bpp.lz"
