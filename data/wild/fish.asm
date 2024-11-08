time_group EQUS "0," ; use the nth TimeFishGroups entry

fishgroup: MACRO
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_Default
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_1
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_2
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_3
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_4
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_5
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_6
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_7
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_8
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_9
	fishgroup 50 percent + 1, .Kanto_Old,            .Kanto_Good,            .Kanto_Super_10
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     KRABBY,     10
.Shore_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     KRABBY,     20
	db  90 percent + 1, KRABBY,     20
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     KRABBY,     40
	db  70 percent,     time_group 1
	db  90 percent + 1, KRABBY,     40
	db 100 percent,     KINGLER,    40

.Ocean_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     TENTACOOL,  10
.Ocean_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     TENTACOOL,  20
	db  90 percent + 1, CHINCHOU,   20
	db 100 percent,     SHELLDER,   20
.Ocean_Super:
	db  40 percent,     CHINCHOU,   40
	db  70 percent,     SHELLDER,   40
	db  90 percent + 1, TENTACRUEL, 40
	db 100 percent,     LANTURN,    40

.Lake_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     GOLDEEN,    10
.Lake_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     GOLDEEN,    20
	db  90 percent + 1, GOLDEEN,    20
	db 100 percent,     GOLDEEN,    20
.Lake_Super:
	db  40 percent,     GOLDEEN,    40
	db  70 percent,     GOLDEEN,    40
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     SEAKING,    40

.Pond_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     POLIWAG,    10
.Pond_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     POLIWAG,    20
	db  90 percent + 1, POLIWAG,    20
	db 100 percent,     POLIWAG,    20
.Pond_Super:
	db  40 percent,     POLIWAG,    40
	db  70 percent,     POLIWAG,    40
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     POLIWAG,    40

.Dratini_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Dratini_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     MAGIKARP,   20
	db  90 percent + 1, MAGIKARP,   20
	db 100 percent,     DRATINI,    20
.Dratini_Super:
	db  40 percent,     MAGIKARP,   40
	db  70 percent,     DRATINI,    40
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     DRAGONAIR,  40

.Qwilfish_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     QWILFISH,   20
	db  90 percent + 1, QWILFISH,   20
	db 100 percent,     QWILFISH,   20
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   40
	db  70 percent,     QWILFISH,   40
	db  90 percent + 1, QWILFISH,   40
	db 100 percent,     QWILFISH,   40

.Remoraid_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, REMORAID,   20
	db 100 percent,     REMORAID,   20
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID,   40
	db  70 percent,     REMORAID,   40
	db  90 percent + 1, REMORAID,   40
	db 100 percent,     REMORAID,   40

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Gyarados_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     MAGIKARP,   20
	db  90 percent + 1, MAGIKARP,   20
	db 100 percent,     GYARADOS,   20
.Gyarados_Super:
	db  40 percent,     MAGIKARP,   40
	db  70 percent,     GYARADOS,   40
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     MAGIKARP,   40

.Dratini_2_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Dratini_2_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     MAGIKARP,   10
	db  90 percent + 1, MAGIKARP,   10
	db 100 percent,     DRATINI,    10
.Dratini_2_Super:
	db  40 percent,     MAGIKARP,   10
	db  70 percent,     DRATINI,    10
	db  90 percent + 1, MAGIKARP,   10
	db 100 percent,     DRAGONAIR,  10

.WhirlIslands_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     KRABBY,     10
.WhirlIslands_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     KRABBY,     20
	db  90 percent + 1, KRABBY,     20
	db 100 percent,     HORSEA,     20
.WhirlIslands_Super:
	db  40 percent,     KRABBY,     40
	db  70 percent,     HORSEA,     40
	db  90 percent + 1, KINGLER,    40
	db 100 percent,     SEADRA,     40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     TENTACOOL,  10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     TENTACOOL,  20
	db  90 percent + 1, TENTACOOL,  20
	db 100 percent,     TENTACOOL,  20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     TENTACOOL,  40
	db  70 percent,     TENTACOOL,  40
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     QWILFISH,   40

.Remoraid_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     POLIWAG,    10
.Remoraid_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     POLIWAG,    20
	db  90 percent + 1, POLIWAG,    20
	db 100 percent,     POLIWAG,    20
.Remoraid_Super:
	db  40 percent,     POLIWAG,    40
	db  70 percent,     POLIWAG,    40
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     REMORAID,   40

.Kanto_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, MAGIKARP,    5
	db 100 percent,     MAGIKARP,    5
.Kanto_Good:
.Kanto_Super_Default:
; Old and Good Rods work everywhere in Gen 1 Kanto, but Super Rod doesn't
; We'll compromise and make Super Rod behave like Good Rod by default
	db  25 percent,     GOLDEEN,    10
	db  50 percent,     POLIWAG,    10
	db  75 percent,     POLIWAG,    10
	db 100 percent,     GOLDEEN,    10

.Kanto_Super_1:
	db  25 percent,   TENTACOOL,    15
	db  50 percent,     POLIWAG,    15
	db  75 percent,     POLIWAG,    15
	db 100 percent,   TENTACOOL,    15

.Kanto_Super_2:
	db  25 percent,     GOLDEEN,    15
	db  50 percent,     POLIWAG,    15
	db  75 percent,     POLIWAG,    15
	db 100 percent,     GOLDEEN,    15

.Kanto_Super_3:
	db  33 percent,     PSYDUCK,    15
	db  67 percent,     GOLDEEN,    15
	db  99 percent,      KRABBY,    15
	db 100 percent,      KRABBY,    15

.Kanto_Super_4:
	db  25 percent,      KRABBY,    15
	db  50 percent,    SHELLDER,    15
	db  75 percent,    SHELLDER,    15
	db 100 percent,      KRABBY,    15

.Kanto_Super_5:
	db  25 percent,   POLIWHIRL,    23
	db  50 percent,    SLOWPOKE,    15
	db  75 percent,    SLOWPOKE,    15
	db 100 percent,   POLIWHIRL,    23

.Kanto_Super_6:
	db  25 percent,     DRATINI,    15
	db  50 percent,      KRABBY,    15
	db  75 percent,     PSYDUCK,    15
	db 100 percent,    SLOWPOKE,    15

.Kanto_Super_7:
	db  25 percent,   TENTACOOL,     5
	db  50 percent,      KRABBY,    15
	db  75 percent,     GOLDEEN,    15
	db 100 percent,    MAGIKARP,    15

.Kanto_Super_8:
	db  25 percent,      STARYU,    15
	db  50 percent,      HORSEA,    15
	db  75 percent,    SHELLDER,    15
	db 100 percent,     GOLDEEN,    15

.Kanto_Super_9:
	db  25 percent,     SLOWBRO,    23
	db  50 percent,     SEAKING,    23
	db  75 percent,     KINGLER,    23
	db 100 percent,      SEADRA,    23

.Kanto_Super_10:
	db  25 percent,     SEAKING,    23
	db  50 percent,      KRABBY,    15
	db  75 percent,     GOLDEEN,    15
	db 100 percent,    MAGIKARP,    15

TimeFishGroups:
	;  day              nite
	db CORSOLA,    20,  STARYU,     20 ; 0
	db CORSOLA,    40,  STARYU,     40 ; 1
