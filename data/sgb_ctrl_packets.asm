; macros taken from pokered's data/sgb_packets.asm
; names taken from pandocs
; http://gbdev.gg8.se/wiki/articles/SGB_Functions#SGB_Palette_Commands

sgb_pal_trn: MACRO
	db (SGB_PAL_TRN << 3) + 1
	ds 15
ENDM

sgb_mlt_req: MACRO
	db (SGB_MLT_REQ << 3) + 1
	db \1 - 1
	ds 14
ENDM

sgb_chr_trn: MACRO
	db (SGB_CHR_TRN << 3) + 1
	db \1 + (\2 << 1)
	ds 14
ENDM

sgb_pct_trn: MACRO
	db (SGB_PCT_TRN << 3) + 1
	ds 15
ENDM

sgb_mask_en: MACRO
	db (SGB_MASK_EN << 3) + 1
	db \1
	ds 14
ENDM

sgb_data_snd: MACRO
	db (SGB_DATA_SND << 3) + 1
	dw \1 ; address
	db \2 ; bank
	db \3 ; length (1-11)
ENDM

PalTrnPacket:  sgb_pal_trn
MltReq1Packet: sgb_mlt_req 1
MltReq2Packet: sgb_mlt_req 2
ChrTrnPacket:  sgb_chr_trn 0, 0
PctTrnPacket:  sgb_pct_trn

MaskEnFreezePacket: sgb_mask_en 1
MaskEnCancelPacket: sgb_mask_en 0
