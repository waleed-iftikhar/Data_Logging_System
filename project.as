opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_Asci2BCD
	FNCALL	_main,_BCD2Dec
	FNCALL	_main,___wmul
	FNCALL	_main,_adc_init
	FNCALL	_main,_i2c_init
	FNCALL	_main,_i2c_send
	FNCALL	_main,_i2c_start
	FNCALL	_main,_i2c_stop
	FNCALL	_main,_printf
	FNCALL	_main,_rtc1307_read
	FNCALL	_main,_serial_init
	FNCALL	_main,_store_data
	FNCALL	_store_data,_BCD2Dec
	FNCALL	_store_data,___ftdiv
	FNCALL	_store_data,___ftmul
	FNCALL	_store_data,___fttol
	FNCALL	_store_data,___lwtoft
	FNCALL	_store_data,___wmul
	FNCALL	_store_data,_rtc1307_read
	FNCALL	_rtc1307_read,_i2c_nak
	FNCALL	_rtc1307_read,_i2c_read
	FNCALL	_rtc1307_read,_i2c_restart
	FNCALL	_rtc1307_read,_i2c_send
	FNCALL	_rtc1307_read,_i2c_start
	FNCALL	_rtc1307_read,_i2c_stop
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_BCD2Dec,___bmul
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,_putch
	FNROOT	_main
	global	_ref
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	30

;initializer for _ref
	retlw	0x3d
	retlw	0x9c
	retlw	0x41

	global	_hexpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	362
_hexpowers:
	retlw	01h
	retlw	0

	retlw	010h
	retlw	0

	retlw	0
	retlw	01h

	retlw	0
	retlw	010h

	global __end_of_hexpowers
__end_of_hexpowers:
	global	_hexpowers
	global	_DATA
	global	_val
	global	_Diff
	global	_H
	global	_H_1
	global	_M
	global	_M_1
	global	_S
	global	_S_1
	global	_adc_value
	global	_ADC1
	global	_ADH
	global	_ADL
	global	_Button_1
	global	_Button_2
	global	_Button_3
	global	_Button_4
	global	_date
	global	_enter
	global	_h
	global	_h1
	global	_hour
	global	_hour_1
	global	_m
	global	_m1
	global	_min
	global	_min_1
	global	_month
	global	_pot
	global	_s
	global	_s1
	global	_sec
	global	_sec_1
	global	_year
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_GO
_GO	set	0xFA
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RCIF
_RCIF	set	101
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_SPEN
_SPEN	set	199
	global	_SSPIF
_SSPIF	set	99
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_SSPADD
_SSPADD	set	147
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_BRGH
_BRGH	set	1218
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	global __stringdata
__stringdata:
	
STR_6:	
	retlw	79	;'O'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_1:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_10:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_13:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_16:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_19:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_21:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	55	;'7'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	99	;'c'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_9:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_12:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_15:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_18:	
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_3:	
	retlw	68	;'D'
	retlw	68	;'D'
	retlw	47	;'/'
	retlw	77	;'M'
	retlw	77	;'M'
	retlw	47	;'/'
	retlw	89	;'Y'
	retlw	89	;'Y'
	retlw	0
psect	strings
	
STR_2:	
	retlw	10
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_7:	
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	0
psect	strings
STR_4	equ	STR_2+0
STR_5	equ	STR_2+0
STR_8	equ	STR_2+0
STR_11	equ	STR_2+0
STR_14	equ	STR_2+0
STR_17	equ	STR_2+0
STR_20	equ	STR_2+0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
	file	"project.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_DATA:
       ds      8

_val:
       ds      3

_Diff:
       ds      2

_H:
       ds      2

_H_1:
       ds      2

_M:
       ds      2

_M_1:
       ds      2

_S:
       ds      2

_S_1:
       ds      2

_adc_value:
       ds      2

_ADC1:
       ds      1

_ADH:
       ds      1

_ADL:
       ds      1

_Button_1:
       ds      1

_Button_2:
       ds      1

_Button_3:
       ds      1

_Button_4:
       ds      1

_date:
       ds      1

_enter:
       ds      1

_h:
       ds      1

_h1:
       ds      1

_hour:
       ds      1

_hour_1:
       ds      1

_m:
       ds      1

_m1:
       ds      1

_min:
       ds      1

_min_1:
       ds      1

_month:
       ds      1

_pot:
       ds      1

_s:
       ds      1

_s1:
       ds      1

_sec:
       ds      1

_sec_1:
       ds      1

_year:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	30
_ref:
       ds      3

	file	"project.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+033h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_adc_init:	; 0 bytes @ 0x0
??_adc_init:	; 0 bytes @ 0x0
?_serial_init:	; 0 bytes @ 0x0
??_serial_init:	; 0 bytes @ 0x0
?_i2c_init:	; 0 bytes @ 0x0
??_i2c_init:	; 0 bytes @ 0x0
?_i2c_start:	; 0 bytes @ 0x0
??_i2c_start:	; 0 bytes @ 0x0
?_i2c_send:	; 0 bytes @ 0x0
??_i2c_send:	; 0 bytes @ 0x0
?_i2c_stop:	; 0 bytes @ 0x0
??_i2c_stop:	; 0 bytes @ 0x0
?_store_data:	; 0 bytes @ 0x0
?_i2c_restart:	; 0 bytes @ 0x0
??_i2c_restart:	; 0 bytes @ 0x0
??_i2c_read:	; 0 bytes @ 0x0
?_i2c_nak:	; 0 bytes @ 0x0
??_i2c_nak:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_putch:	; 0 bytes @ 0x0
??_putch:	; 0 bytes @ 0x0
?_rtc1307_read:	; 1 bytes @ 0x0
?_BCD2Dec:	; 1 bytes @ 0x0
?_Asci2BCD:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	Asci2BCD@lower
Asci2BCD@lower:	; 1 bytes @ 0x0
	global	i2c_send@dat
i2c_send@dat:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	ds	1
??_rtc1307_read:	; 0 bytes @ 0x1
??_Asci2BCD:	; 0 bytes @ 0x1
??___bmul:	; 0 bytes @ 0x1
	ds	1
	global	rtc1307_read@address
rtc1307_read@address:	; 1 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	Asci2BCD@upper
Asci2BCD@upper:	; 1 bytes @ 0x3
	global	rtc1307_read@temp
rtc1307_read@temp:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
??_BCD2Dec:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___fttol:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	Asci2BCD@L
Asci2BCD@L:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	Asci2BCD@chr
Asci2BCD@chr:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	Asci2BCD@U
Asci2BCD@U:	; 1 bytes @ 0x6
	global	BCD2Dec@unit
BCD2Dec@unit:	; 1 bytes @ 0x6
	ds	1
	global	BCD2Dec@temp
BCD2Dec@temp:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x8
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	BCD2Dec@bcd
BCD2Dec@bcd:	; 1 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x8
	ds	1
	global	BCD2Dec@ten
BCD2Dec@ten:	; 1 bytes @ 0x9
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	1
??_printf:	; 0 bytes @ 0xA
	ds	1
??___lwtoft:	; 0 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftdiv:	; 0 bytes @ 0x0
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	printf@flag
printf@flag:	; 1 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	ds	1
	global	printf@idx
printf@idx:	; 1 bytes @ 0x1
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x2
	ds	1
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	global	printf@_val
printf@_val:	; 4 bytes @ 0x3
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x4
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x5
	ds	1
??___ftmul:	; 0 bytes @ 0x6
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x7
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0x8
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x8
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x9
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x9
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xA
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xB
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xE
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xF
	ds	1
??_store_data:	; 0 bytes @ 0x10
	ds	2
??_main:	; 0 bytes @ 0x12
	ds	3
	global	main@i
main@i:	; 1 bytes @ 0x15
	ds	1
;!
;!Data Sizes:
;!    Strings     230
;!    Constant    8
;!    Data        3
;!    BSS         51
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     22      76
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(1) Largest target is 31
;!		 -> STR_20(CODE[4]), STR_19(CODE[18]), STR_18(CODE[17]), STR_17(CODE[4]), 
;!		 -> STR_16(CODE[18]), STR_15(CODE[17]), STR_14(CODE[4]), STR_13(CODE[18]), 
;!		 -> STR_12(CODE[17]), STR_11(CODE[4]), STR_10(CODE[18]), STR_9(CODE[17]), 
;!		 -> STR_8(CODE[4]), STR_7(CODE[3]), STR_6(CODE[31]), STR_5(CODE[4]), 
;!		 -> STR_4(CODE[4]), STR_3(CODE[9]), STR_2(CODE[4]), STR_1(CODE[26]), 
;!
;!    printf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_printf(COMMON[2]), 
;!
;!    S515$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _store_data->___ftdiv
;!    _store_data->___fttol
;!    _rtc1307_read->_i2c_send
;!    ___lwtoft->___ftpack
;!    ___ftmul->___lwtoft
;!    ___ftdiv->___ftpack
;!    _BCD2Dec->___bmul
;!    _printf->___lwdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_store_data
;!    _store_data->___ftmul
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0    9654
;!                                             18 BANK0      4     4      0
;!                           _Asci2BCD
;!                            _BCD2Dec
;!                             ___wmul
;!                           _adc_init
;!                           _i2c_init
;!                           _i2c_send
;!                          _i2c_start
;!                           _i2c_stop
;!                             _printf
;!                       _rtc1307_read
;!                        _serial_init
;!                         _store_data
;! ---------------------------------------------------------------------------------
;! (1) _store_data                                           2     2      0    7212
;!                                             16 BANK0      2     2      0
;!                            _BCD2Dec
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                           ___lwtoft
;!                             ___wmul
;!                       _rtc1307_read
;! ---------------------------------------------------------------------------------
;! (2) _rtc1307_read                                         3     3      0      67
;!                                              1 COMMON     3     3      0
;!                            _i2c_nak
;!                           _i2c_read
;!                        _i2c_restart
;!                           _i2c_send
;!                          _i2c_start
;!                           _i2c_stop
;! ---------------------------------------------------------------------------------
;! (3) _i2c_stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _i2c_start                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _i2c_send                                             1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _i2c_restart                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _i2c_read                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _i2c_nak                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     516
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             4     1      3    1721
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     305
;!                                              0 COMMON    14    10      4
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             16    10      6    2078
;!                                              0 BANK0     16    10      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             16    10      6    2244
;!                                              8 COMMON     6     0      6
;!                                              0 BANK0     10    10      0
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    1646
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (2) _BCD2Dec                                              6     6      0     281
;!                                              4 COMMON     6     6      0
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               4     3      1     145
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _serial_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _printf                                              15    13      2    1171
;!                                              8 COMMON     5     3      2
;!                                              0 BANK0     10    10      0
;!                            ___lwdiv
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (2) _putch                                                1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     268
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _i2c_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _adc_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Asci2BCD                                             7     6      1     295
;!                                              0 COMMON     7     6      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Asci2BCD
;!   _BCD2Dec
;!     ___bmul
;!   ___wmul
;!   _adc_init
;!   _i2c_init
;!   _i2c_send
;!   _i2c_start
;!   _i2c_stop
;!   _printf
;!     ___lwdiv
;!     _putch
;!   _rtc1307_read
;!     _i2c_nak
;!     _i2c_read
;!     _i2c_restart
;!     _i2c_send
;!     _i2c_start
;!     _i2c_stop
;!   _serial_init
;!   _store_data
;!     _BCD2Dec
;!       ___bmul
;!     ___ftdiv
;!       ___ftpack
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol
;!     ___lwtoft
;!       ___ftpack
;!     ___wmul
;!     _rtc1307_read
;!       _i2c_nak
;!       _i2c_read
;!       _i2c_restart
;!       _i2c_send
;!       _i2c_start
;!       _i2c_stop
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     16      4C       5       95.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      5A      12        0.0%
;!ABS                  0      0      5A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 33 in file "D:\WALEED\live_person\mutaz\Project\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Asci2BCD
;;		_BCD2Dec
;;		___wmul
;;		_adc_init
;;		_i2c_init
;;		_i2c_send
;;		_i2c_start
;;		_i2c_stop
;;		_printf
;;		_rtc1307_read
;;		_serial_init
;;		_store_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	33
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	35
	
l2263:	
;main.c: 35: TRISD = 0x03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	36
	
l2265:	
;main.c: 36: PORTD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	37
	
l2267:	
;main.c: 37: adc_init();
	fcall	_adc_init
	line	38
	
l2269:	
;main.c: 38: serial_init();
	fcall	_serial_init
	line	39
	
l2271:	
;main.c: 39: i2c_init();
	fcall	_i2c_init
	line	40
	
l2273:	
;main.c: 40: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u1697:
	decfsz	((??_main+0)+0),f
	goto	u1697
	decfsz	((??_main+0)+0+1),f
	goto	u1697
	decfsz	((??_main+0)+0+2),f
	goto	u1697
	nop2
opt asmopt_on

	line	46
	
l2275:	
;main.c: 46: i2c_start();
	fcall	_i2c_start
	line	47
	
l2277:	
;main.c: 47: i2c_send(0xD0);
	movlw	(0D0h)
	fcall	_i2c_send
	line	48
	
l2279:	
;main.c: 48: i2c_send(0x00);
	movlw	(0)
	fcall	_i2c_send
	line	49
	
l2281:	
;main.c: 49: i2c_send(0x80);
	movlw	(080h)
	fcall	_i2c_send
	line	50
	
l2283:	
;main.c: 50: i2c_send(0x00);
	movlw	(0)
	fcall	_i2c_send
	line	51
	
l2285:	
;main.c: 51: i2c_send(0x00);
	movlw	(0)
	fcall	_i2c_send
	line	52
	
l2287:	
;main.c: 52: i2c_send(0x00);
	movlw	(0)
	fcall	_i2c_send
	line	53
	
l2289:	
;main.c: 53: i2c_send(0x00);
	movlw	(0)
	fcall	_i2c_send
	line	54
	
l2291:	
;main.c: 54: i2c_send(0x00);
	movlw	(0)
	fcall	_i2c_send
	line	55
	
l2293:	
;main.c: 55: i2c_send(0x00);
	movlw	(0)
	fcall	_i2c_send
	line	56
	
l2295:	
;main.c: 56: i2c_stop();
	fcall	_i2c_stop
	line	58
	
l2297:	
;main.c: 58: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u1707:
	decfsz	((??_main+0)+0),f
	goto	u1707
	decfsz	((??_main+0)+0+1),f
	goto	u1707
	decfsz	((??_main+0)+0+2),f
	goto	u1707
	nop
opt asmopt_on

	line	61
	
l2299:	
;main.c: 61: i2c_start();
	fcall	_i2c_start
	line	62
	
l2301:	
;main.c: 62: i2c_send(0xD0);
	movlw	(0D0h)
	fcall	_i2c_send
	line	63
	
l2303:	
;main.c: 63: i2c_send(0x00);
	movlw	(0)
	fcall	_i2c_send
	line	64
	
l2305:	
;main.c: 64: i2c_send(0x00);
	movlw	(0)
	fcall	_i2c_send
	line	65
	
l2307:	
;main.c: 65: i2c_stop();
	fcall	_i2c_stop
	line	67
	
l2309:	
;main.c: 67: store_data();
	fcall	_store_data
	goto	l2311
	line	69
;main.c: 69: while(1)
	
l159:	
	line	71
	
l2311:	
;main.c: 70: {
;main.c: 71: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u1717:
	decfsz	((??_main+0)+0),f
	goto	u1717
	decfsz	((??_main+0)+0+1),f
	goto	u1717
	decfsz	((??_main+0)+0+2),f
	goto	u1717
	nop
opt asmopt_on

	line	73
	
l2313:	
;main.c: 73: sec = rtc1307_read(0x00);
	movlw	(0)
	fcall	_rtc1307_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_sec)
	line	74
	
l2315:	
;main.c: 74: min = rtc1307_read(0x01);
	movlw	(01h)
	fcall	_rtc1307_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_min)
	line	75
	
l2317:	
;main.c: 75: hour = rtc1307_read(0x02);
	movlw	(02h)
	fcall	_rtc1307_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_hour)
	line	76
	
l2319:	
;main.c: 76: date = rtc1307_read(0x04);
	movlw	(04h)
	fcall	_rtc1307_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_date)
	line	77
	
l2321:	
;main.c: 77: month = rtc1307_read(0x05);
	movlw	(05h)
	fcall	_rtc1307_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_month)
	line	78
	
l2323:	
;main.c: 78: year = rtc1307_read(0x06);
	movlw	(06h)
	fcall	_rtc1307_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_year)
	line	80
	
l2325:	
;main.c: 80: s = BCD2Dec(sec);
	movf	(_sec),w
	fcall	_BCD2Dec
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_s)
	line	81
	
l2327:	
;main.c: 81: m = BCD2Dec(min);
	movf	(_min),w
	fcall	_BCD2Dec
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_m)
	line	82
	
l2329:	
;main.c: 82: h = BCD2Dec(hour);
	movf	(_hour),w
	fcall	_BCD2Dec
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_h)
	line	85
	
l2331:	
;main.c: 85: H = h * 3600;
	movf	(_h),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_main+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(0E10h)
	movwf	(___wmul@multiplicand)
	movlw	high(0E10h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_H+1)
	addwf	(_H+1)
	movf	(0+(?___wmul)),w
	clrf	(_H)
	addwf	(_H)

	line	86
	
l2333:	
;main.c: 86: M = m * 60;
	movf	(_m),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_main+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(03Ch)
	movwf	(___wmul@multiplicand)
	movlw	high(03Ch)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_M+1)
	addwf	(_M+1)
	movf	(0+(?___wmul)),w
	clrf	(_M)
	addwf	(_M)

	line	87
	
l2335:	
;main.c: 87: S = H + M + s;
	movf	(_s),w
	addwf	(_H),w
	movwf	(??_main+0)+0
	movf	(_H+1),w
	skipnc
	incf	(_H+1),w
	movwf	((??_main+0)+0)+1
	movf	(_M),w
	addwf	0+(??_main+0)+0,w
	movwf	(_S)
	movf	(_M+1),w
	skipnc
	incf	(_M+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_S)
	line	88
	
l2337:	
;main.c: 88: Diff = S - S_1;
	comf	(_S_1),w
	movwf	(??_main+0)+0
	comf	(_S_1+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_S),w
	addwf	0+(??_main+0)+0,w
	movwf	(_Diff)
	movf	(_S+1),w
	skipnc
	incf	(_S+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_Diff)
	line	90
	
l2339:	
;main.c: 90: if(Diff>=10)
	movlw	high(0Ah)
	subwf	(_Diff+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(_Diff),w
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l2345
u1580:
	line	92
	
l2341:	
;main.c: 91: {
;main.c: 92: Diff = 0;
	clrf	(_Diff)
	clrf	(_Diff+1)
	line	93
	
l2343:	
;main.c: 93: store_data();
	fcall	_store_data
	goto	l2345
	line	94
	
l160:	
	line	98
	
l2345:	
;main.c: 94: }
;main.c: 98: if (RD0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7	;volatile
	goto	u1591
	goto	u1590
u1591:
	goto	l2383
u1590:
	line	101
	
l2347:	
;main.c: 99: {
;main.c: 101: printf("Enter Date in the formate");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_printf
	line	102
;main.c: 102: printf("\n\r\n");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_printf
	line	103
;main.c: 103: printf("DD/MM/YY");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_printf
	line	104
;main.c: 104: printf("\n\r\n");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_printf
	line	105
	
l2349:	
;main.c: 105: for(unsigned char i=0;i<8;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l2351:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l164
u1600:
	goto	l2361
	
l2353:	
	goto	l2361
	line	106
	
l162:	
	line	107
;main.c: 106: {
;main.c: 107: while(!RCIF);
	goto	l164
	
l165:	
	
l164:	
	btfss	(101/8),(101)&7	;volatile
	goto	u1611
	goto	u1610
u1611:
	goto	l164
u1610:
	goto	l2355
	
l166:	
	line	108
	
l2355:	
;main.c: 108: DATA[i]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	_DATA&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	109
;main.c: 109: TXREG=DATA[i];
	movf	(main@i),w
	addlw	_DATA&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(25)	;volatile
	line	110
;main.c: 110: while(!TXIF);
	goto	l167
	
l168:	
	
l167:	
	btfss	(100/8),(100)&7	;volatile
	goto	u1621
	goto	u1620
u1621:
	goto	l167
u1620:
	goto	l2357
	
l169:	
	line	105
	
l2357:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2359:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l164
u1630:
	goto	l2361
	
l163:	
	line	112
	
l2361:	
;main.c: 111: }
;main.c: 112: printf("\n\r\n");
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_printf
	line	113
	
l2363:	
;main.c: 113: date = Asci2BCD(DATA[0],DATA[1]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_DATA)+01h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(Asci2BCD@lower)
	movf	(_DATA),w
	fcall	_Asci2BCD
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(_date)
	line	114
	
l2365:	
;main.c: 114: month = Asci2BCD(DATA[3],DATA[4]);
	movf	0+(_DATA)+04h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(Asci2BCD@lower)
	movf	0+(_DATA)+03h,w
	fcall	_Asci2BCD
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(_month)
	line	115
	
l2367:	
;main.c: 115: year = Asci2BCD(DATA[6],DATA[7]);
	movf	0+(_DATA)+07h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(Asci2BCD@lower)
	movf	0+(_DATA)+06h,w
	fcall	_Asci2BCD
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(_year)
	line	118
	
l2369:	
;main.c: 118: i2c_start();
	fcall	_i2c_start
	line	119
	
l2371:	
;main.c: 119: i2c_send(0xD0);
	movlw	(0D0h)
	fcall	_i2c_send
	line	120
	
l2373:	
;main.c: 120: i2c_send(0x04);
	movlw	(04h)
	fcall	_i2c_send
	line	121
	
l2375:	
;main.c: 121: i2c_send(date);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date),w
	fcall	_i2c_send
	line	122
	
l2377:	
;main.c: 122: i2c_send(month);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	fcall	_i2c_send
	line	123
	
l2379:	
;main.c: 123: i2c_send(year);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_year),w
	fcall	_i2c_send
	line	124
	
l2381:	
;main.c: 124: i2c_stop();
	fcall	_i2c_stop
	goto	l2383
	line	125
	
l161:	
	line	128
	
l2383:	
;main.c: 125: }
;main.c: 128: if (RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7	;volatile
	goto	u1641
	goto	u1640
u1641:
	goto	l2311
u1640:
	line	130
	
l2385:	
;main.c: 129: {
;main.c: 130: printf("Output from Potentiometer is :");
	movlw	((STR_6)-__stringbase)&0ffh
	fcall	_printf
	line	131
;main.c: 131: printf("%x",pot);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pot),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_printf)
	movf	1+(??_main+0)+0,w
	movwf	(?_printf+1)
	movlw	((STR_7)-__stringbase)&0ffh
	fcall	_printf
	line	132
;main.c: 132: printf("\n\r\n");
	movlw	((STR_8)-__stringbase)&0ffh
	fcall	_printf
	line	134
	
l2387:	
;main.c: 134: if(Button_1 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Button_1),f
	skipz
	goto	u1651
	goto	u1650
u1651:
	goto	l2391
u1650:
	line	135
	
l2389:	
;main.c: 135: printf("Button 1 is open");
	movlw	((STR_9)-__stringbase)&0ffh
	fcall	_printf
	goto	l172
	line	136
	
l171:	
	line	137
	
l2391:	
;main.c: 136: else
;main.c: 137: printf("Button 1 is close");
	movlw	((STR_10)-__stringbase)&0ffh
	fcall	_printf
	
l172:	
	line	139
;main.c: 139: printf("\n\r\n");
	movlw	((STR_11)-__stringbase)&0ffh
	fcall	_printf
	line	141
	
l2393:	
;main.c: 141: if(Button_2 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Button_2),f
	skipz
	goto	u1661
	goto	u1660
u1661:
	goto	l2397
u1660:
	line	142
	
l2395:	
;main.c: 142: printf("Button 2 is open");
	movlw	((STR_12)-__stringbase)&0ffh
	fcall	_printf
	goto	l174
	line	143
	
l173:	
	line	144
	
l2397:	
;main.c: 143: else
;main.c: 144: printf("Button 2 is close");
	movlw	((STR_13)-__stringbase)&0ffh
	fcall	_printf
	
l174:	
	line	146
;main.c: 146: printf("\n\r\n");
	movlw	((STR_14)-__stringbase)&0ffh
	fcall	_printf
	line	149
	
l2399:	
;main.c: 149: if(Button_3 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Button_3),f
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l2403
u1670:
	line	150
	
l2401:	
;main.c: 150: printf("Button 3 is open");
	movlw	((STR_15)-__stringbase)&0ffh
	fcall	_printf
	goto	l176
	line	151
	
l175:	
	line	152
	
l2403:	
;main.c: 151: else
;main.c: 152: printf("Button 3 is close");
	movlw	((STR_16)-__stringbase)&0ffh
	fcall	_printf
	
l176:	
	line	154
;main.c: 154: printf("\n\r\n");
	movlw	((STR_17)-__stringbase)&0ffh
	fcall	_printf
	line	156
	
l2405:	
;main.c: 156: if(Button_4 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Button_4),f
	skipz
	goto	u1681
	goto	u1680
u1681:
	goto	l2409
u1680:
	line	157
	
l2407:	
;main.c: 157: printf("Button 4 is open");
	movlw	((STR_18)-__stringbase)&0ffh
	fcall	_printf
	goto	l178
	line	158
	
l177:	
	line	159
	
l2409:	
;main.c: 158: else
;main.c: 159: printf("Button 4 is close");
	movlw	((STR_19)-__stringbase)&0ffh
	fcall	_printf
	
l178:	
	line	161
;main.c: 161: printf("\n\r\n");
	movlw	((STR_20)-__stringbase)&0ffh
	fcall	_printf
	goto	l2311
	line	163
	
l170:	
	goto	l2311
	line	164
	
l179:	
	line	69
	goto	l2311
	
l180:	
	line	165
	
l181:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_store_data

;; *************** function _store_data *****************
;; Defined at:
;;		line 213 in file "D:\WALEED\live_person\mutaz\Project\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_BCD2Dec
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lwtoft
;;		___wmul
;;		_rtc1307_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	213
global __ptext1
__ptext1:	;psect for function _store_data
psect	text1
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	213
	global	__size_of_store_data
	__size_of_store_data	equ	__end_of_store_data-_store_data
	
_store_data:	
;incstack = 0
	opt	stack 5
; Regs used in _store_data: [wreg+status,2+status,0+pclath+cstack]
	line	216
	
l2171:	
;main.c: 216: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	217
;main.c: 217: while(GO == 1);
	goto	l199
	
l200:	
	
l199:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u1501
	goto	u1500
u1501:
	goto	l199
u1500:
	goto	l2173
	
l201:	
	line	218
	
l2173:	
;main.c: 218: ADL = ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_store_data+0)+0
	movf	(??_store_data+0)+0,w
	movwf	(_ADL)
	line	219
;main.c: 219: ADH = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_store_data+0)+0
	movf	(??_store_data+0)+0,w
	movwf	(_ADH)
	line	221
;main.c: 220: adc_value = ADH,
;main.c: 221: adc_value = adc_value << 8;
	movf	(_ADH),w
	movwf	(??_store_data+0)+0
	clrf	(??_store_data+0)+0+1
	movf	0+(??_store_data+0)+0,w
	movwf	(_adc_value)
	movf	1+(??_store_data+0)+0,w
	movwf	(_adc_value+1)
	movf	(_adc_value),w
	movwf	(??_store_data+0)+0+1
	clrf	(??_store_data+0)+0
	movf	0+(??_store_data+0)+0,w
	movwf	(_adc_value)
	movf	1+(??_store_data+0)+0,w
	movwf	(_adc_value+1)
	line	222
;main.c: 222: adc_value = adc_value | ADL;
	movf	(_adc_value),w
	iorwf	(_ADL),w
	movwf	(_adc_value)
	movf	(_adc_value+1),w
	movwf	1+(_adc_value)
	line	223
	
l2175:	
;main.c: 223: val = adc_value * ref;
	movf	(_ref),w
	movwf	(___ftmul@f1)
	movf	(_ref+1),w
	movwf	(___ftmul@f1+1)
	movf	(_ref+2),w
	movwf	(___ftmul@f1+2)
	movf	(_adc_value+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_adc_value),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_val)
	movf	(1+(?___ftmul)),w
	movwf	(_val+1)
	movf	(2+(?___ftmul)),w
	movwf	(_val+2)
	line	224
	
l2177:	
;main.c: 224: val = val/10;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x20
	movwf	(___ftdiv@f2+1)
	movlw	0x41
	movwf	(___ftdiv@f2+2)
	movf	(_val),w
	movwf	(___ftdiv@f1)
	movf	(_val+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_val+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_val)
	movf	(1+(?___ftdiv)),w
	movwf	(_val+1)
	movf	(2+(?___ftdiv)),w
	movwf	(_val+2)
	line	225
	
l2179:	
;main.c: 225: val = val/10;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x20
	movwf	(___ftdiv@f2+1)
	movlw	0x41
	movwf	(___ftdiv@f2+2)
	movf	(_val),w
	movwf	(___ftdiv@f1)
	movf	(_val+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_val+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_val)
	movf	(1+(?___ftdiv)),w
	movwf	(_val+1)
	movf	(2+(?___ftdiv)),w
	movwf	(_val+2)
	line	226
	
l2181:	
;main.c: 226: val = val/10;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x20
	movwf	(___ftdiv@f2+1)
	movlw	0x41
	movwf	(___ftdiv@f2+2)
	movf	(_val),w
	movwf	(___ftdiv@f1)
	movf	(_val+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_val+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_val)
	movf	(1+(?___ftdiv)),w
	movwf	(_val+1)
	movf	(2+(?___ftdiv)),w
	movwf	(_val+2)
	line	227
	
l2183:	
;main.c: 227: pot = val;
	movf	(_val),w
	movwf	(___fttol@f1)
	movf	(_val+1),w
	movwf	(___fttol@f1+1)
	movf	(_val+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_store_data+0)+0
	movf	(??_store_data+0)+0,w
	movwf	(_pot)
	line	229
	
l2185:	
;main.c: 229: Button_1 = RA1;
	movlw	0
	btfsc	(41/8),(41)&7	;volatile
	movlw	1
	movwf	(_Button_1)
	line	230
	
l2187:	
;main.c: 230: Button_2 = RA2;
	movlw	0
	btfsc	(42/8),(42)&7	;volatile
	movlw	1
	movwf	(_Button_2)
	line	231
	
l2189:	
;main.c: 231: Button_3 = RA3;
	movlw	0
	btfsc	(43/8),(43)&7	;volatile
	movlw	1
	movwf	(_Button_3)
	line	232
	
l2191:	
;main.c: 232: Button_4 = RA4;
	movlw	0
	btfsc	(44/8),(44)&7	;volatile
	movlw	1
	movwf	(_Button_4)
	line	235
	
l2193:	
;main.c: 235: sec_1 = rtc1307_read(0x00);
	movlw	(0)
	fcall	_rtc1307_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_store_data+0)+0
	movf	(??_store_data+0)+0,w
	movwf	(_sec_1)
	line	236
	
l2195:	
;main.c: 236: min_1 = rtc1307_read(0x01);
	movlw	(01h)
	fcall	_rtc1307_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_store_data+0)+0
	movf	(??_store_data+0)+0,w
	movwf	(_min_1)
	line	237
	
l2197:	
;main.c: 237: hour_1 = rtc1307_read(0x02);
	movlw	(02h)
	fcall	_rtc1307_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_store_data+0)+0
	movf	(??_store_data+0)+0,w
	movwf	(_hour_1)
	line	239
	
l2199:	
;main.c: 239: s1 = BCD2Dec(sec_1);
	movf	(_sec_1),w
	fcall	_BCD2Dec
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_store_data+0)+0
	movf	(??_store_data+0)+0,w
	movwf	(_s1)
	line	240
	
l2201:	
;main.c: 240: m1 = BCD2Dec(min_1);
	movf	(_min_1),w
	fcall	_BCD2Dec
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_store_data+0)+0
	movf	(??_store_data+0)+0,w
	movwf	(_m1)
	line	241
	
l2203:	
;main.c: 241: h1 = BCD2Dec(hour_1);
	movf	(_hour_1),w
	fcall	_BCD2Dec
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_store_data+0)+0
	movf	(??_store_data+0)+0,w
	movwf	(_h1)
	line	242
	
l2205:	
;main.c: 242: H_1 = h1 * 3600;
	movf	(_h1),w
	movwf	(??_store_data+0)+0
	clrf	(??_store_data+0)+0+1
	movf	0+(??_store_data+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_store_data+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(0E10h)
	movwf	(___wmul@multiplicand)
	movlw	high(0E10h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_H_1+1)
	addwf	(_H_1+1)
	movf	(0+(?___wmul)),w
	clrf	(_H_1)
	addwf	(_H_1)

	line	243
	
l2207:	
;main.c: 243: M_1 = m1 * 60;
	movf	(_m1),w
	movwf	(??_store_data+0)+0
	clrf	(??_store_data+0)+0+1
	movf	0+(??_store_data+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_store_data+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(03Ch)
	movwf	(___wmul@multiplicand)
	movlw	high(03Ch)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_M_1+1)
	addwf	(_M_1+1)
	movf	(0+(?___wmul)),w
	clrf	(_M_1)
	addwf	(_M_1)

	line	244
	
l2209:	
;main.c: 244: S_1 = H_1 + M_1 + s1;
	movf	(_s1),w
	addwf	(_H_1),w
	movwf	(??_store_data+0)+0
	movf	(_H_1+1),w
	skipnc
	incf	(_H_1+1),w
	movwf	((??_store_data+0)+0)+1
	movf	(_M_1),w
	addwf	0+(??_store_data+0)+0,w
	movwf	(_S_1)
	movf	(_M_1+1),w
	skipnc
	incf	(_M_1+1),w
	addwf	1+(??_store_data+0)+0,w
	movwf	1+(_S_1)
	line	245
	
l202:	
	return
	opt stack 0
GLOBAL	__end_of_store_data
	__end_of_store_data:
	signat	_store_data,88
	global	_rtc1307_read

;; *************** function _rtc1307_read *****************
;; Defined at:
;;		line 54 in file "D:\WALEED\live_person\mutaz\Project\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMMON] unsigned char 
;;  temp            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_i2c_nak
;;		_i2c_read
;;		_i2c_restart
;;		_i2c_send
;;		_i2c_start
;;		_i2c_stop
;; This function is called by:
;;		_main
;;		_store_data
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"D:\WALEED\live_person\mutaz\Project\i2c_rtc.c"
	line	54
global __ptext2
__ptext2:	;psect for function _rtc1307_read
psect	text2
	file	"D:\WALEED\live_person\mutaz\Project\i2c_rtc.c"
	line	54
	global	__size_of_rtc1307_read
	__size_of_rtc1307_read	equ	__end_of_rtc1307_read-_rtc1307_read
	
_rtc1307_read:	
;incstack = 0
	opt	stack 5
; Regs used in _rtc1307_read: [wreg+status,2+status,0+pclath+cstack]
;rtc1307_read@address stored from wreg
	movwf	(rtc1307_read@address)
	line	58
	
l1939:	
;i2c_rtc.c: 57: unsigned char temp;
;i2c_rtc.c: 58: i2c_start();
	fcall	_i2c_start
	line	59
	
l1941:	
;i2c_rtc.c: 59: i2c_send(0xD0);
	movlw	(0D0h)
	fcall	_i2c_send
	line	60
	
l1943:	
;i2c_rtc.c: 60: i2c_send(address);
	movf	(rtc1307_read@address),w
	fcall	_i2c_send
	line	61
;i2c_rtc.c: 61: i2c_restart();
	fcall	_i2c_restart
	line	62
	
l1945:	
;i2c_rtc.c: 62: i2c_send(0xD1);
	movlw	(0D1h)
	fcall	_i2c_send
	line	63
	
l1947:	
;i2c_rtc.c: 63: temp = i2c_read();
	fcall	_i2c_read
	movwf	(??_rtc1307_read+0)+0
	movf	(??_rtc1307_read+0)+0,w
	movwf	(rtc1307_read@temp)
	line	64
	
l1949:	
;i2c_rtc.c: 64: i2c_nak();
	fcall	_i2c_nak
	line	65
	
l1951:	
;i2c_rtc.c: 65: i2c_stop();
	fcall	_i2c_stop
	line	66
	
l1953:	
;i2c_rtc.c: 66: return temp;
	movf	(rtc1307_read@temp),w
	goto	l785
	
l1955:	
	line	67
	
l785:	
	return
	opt stack 0
GLOBAL	__end_of_rtc1307_read
	__end_of_rtc1307_read:
	signat	_rtc1307_read,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 28 in file "D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_rtc1307_read
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
	line	28
global __ptext3
__ptext3:	;psect for function _i2c_stop
psect	text3
	file	"D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
	line	28
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
;incstack = 0
	opt	stack 5
; Regs used in _i2c_stop: []
	line	30
	
l1881:	
;i2c_unitec.c: 30: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	31
;i2c_unitec.c: 31: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	32
;i2c_unitec.c: 32: while(!SSPIF);
	goto	l822
	
l823:	
	
l822:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u881
	goto	u880
u881:
	goto	l822
u880:
	goto	l825
	
l824:	
	line	33
	
l825:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,88
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 14 in file "D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_rtc1307_read
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	14
global __ptext4
__ptext4:	;psect for function _i2c_start
psect	text4
	file	"D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
	line	14
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
;incstack = 0
	opt	stack 5
; Regs used in _i2c_start: []
	line	16
	
l1875:	
;i2c_unitec.c: 16: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	17
;i2c_unitec.c: 17: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	18
;i2c_unitec.c: 18: while(!SSPIF);
	goto	l810
	
l811:	
	
l810:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u861
	goto	u860
u861:
	goto	l810
u860:
	goto	l813
	
l812:	
	line	19
	
l813:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,88
	global	_i2c_send

;; *************** function _i2c_send *****************
;; Defined at:
;;		line 35 in file "D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_rtc1307_read
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	35
global __ptext5
__ptext5:	;psect for function _i2c_send
psect	text5
	file	"D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
	line	35
	global	__size_of_i2c_send
	__size_of_i2c_send	equ	__end_of_i2c_send-_i2c_send
	
_i2c_send:	
;incstack = 0
	opt	stack 5
; Regs used in _i2c_send: [wreg]
;i2c_send@dat stored from wreg
	movwf	(i2c_send@dat)
	line	37
	
l1877:	
;i2c_unitec.c: 37: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	38
	
l1879:	
;i2c_unitec.c: 38: SSPBUF = dat;
	movf	(i2c_send@dat),w
	movwf	(19)	;volatile
	line	39
;i2c_unitec.c: 39: while(!SSPIF);
	goto	l828
	
l829:	
	
l828:	
	btfss	(99/8),(99)&7	;volatile
	goto	u871
	goto	u870
u871:
	goto	l828
u870:
	goto	l831
	
l830:	
	line	40
	
l831:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_send
	__end_of_i2c_send:
	signat	_i2c_send,4216
	global	_i2c_restart

;; *************** function _i2c_restart *****************
;; Defined at:
;;		line 21 in file "D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rtc1307_read
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	21
global __ptext6
__ptext6:	;psect for function _i2c_restart
psect	text6
	file	"D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
	line	21
	global	__size_of_i2c_restart
	__size_of_i2c_restart	equ	__end_of_i2c_restart-_i2c_restart
	
_i2c_restart:	
;incstack = 0
	opt	stack 5
; Regs used in _i2c_restart: []
	line	23
	
l1883:	
;i2c_unitec.c: 23: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	24
;i2c_unitec.c: 24: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7	;volatile
	line	25
;i2c_unitec.c: 25: while(!SSPIF);
	goto	l816
	
l817:	
	
l816:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u891
	goto	u890
u891:
	goto	l816
u890:
	goto	l819
	
l818:	
	line	26
	
l819:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_restart
	__end_of_i2c_restart:
	signat	_i2c_restart,88
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 42 in file "D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rtc1307_read
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	42
global __ptext7
__ptext7:	;psect for function _i2c_read
psect	text7
	file	"D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
	line	42
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
	
_i2c_read:	
;incstack = 0
	opt	stack 5
; Regs used in _i2c_read: [wreg]
	line	44
	
l1885:	
;i2c_unitec.c: 44: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	45
;i2c_unitec.c: 45: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7	;volatile
	line	46
;i2c_unitec.c: 46: while(!SSPIF);
	goto	l834
	
l835:	
	
l834:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u901
	goto	u900
u901:
	goto	l834
u900:
	goto	l1887
	
l836:	
	line	47
	
l1887:	
;i2c_unitec.c: 47: return (SSPBUF);
	movf	(19),w	;volatile
	goto	l837
	
l1889:	
	line	48
	
l837:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,89
	global	_i2c_nak

;; *************** function _i2c_nak *****************
;; Defined at:
;;		line 50 in file "D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rtc1307_read
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	50
global __ptext8
__ptext8:	;psect for function _i2c_nak
psect	text8
	file	"D:\WALEED\live_person\mutaz\Project\i2c_unitec.c"
	line	50
	global	__size_of_i2c_nak
	__size_of_i2c_nak	equ	__end_of_i2c_nak-_i2c_nak
	
_i2c_nak:	
;incstack = 0
	opt	stack 5
; Regs used in _i2c_nak: []
	line	52
	
l1891:	
;i2c_unitec.c: 52: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	53
;i2c_unitec.c: 53: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	54
;i2c_unitec.c: 54: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	55
;i2c_unitec.c: 55: while(!SSPIF);
	goto	l840
	
l841:	
	
l840:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u911
	goto	u910
u911:
	goto	l840
u910:
	goto	l843
	
l842:	
	line	56
	
l843:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_nak
	__end_of_i2c_nak:
	signat	_i2c_nak,88
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_store_data
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext9
__ptext9:	;psect for function ___wmul
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1973:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1975
	line	44
	
l953:	
	line	45
	
l1975:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l954
u1070:
	line	46
	
l1977:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l954:	
	line	47
	movlw	01h
	
u1085:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1085
	line	48
	
l1979:	
	movlw	01h
	
u1095:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1095
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1101
	goto	u1100
u1101:
	goto	l1975
u1100:
	goto	l1981
	
l955:	
	line	52
	
l1981:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l956
	
l1983:	
	line	53
	
l956:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_store_data
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext10
__ptext10:	;psect for function ___lwtoft
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2147:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l1305
	
l2149:	
	line	31
	
l1305:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[COMMON] unsigned long 
;;  exp1            1   13[COMMON] unsigned char 
;;  sign1           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_store_data
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext11
__ptext11:	;psect for function ___fttol
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2077:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u1331
	goto	u1330
u1331:
	goto	l2083
u1330:
	line	50
	
l2079:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1196
	
l2081:	
	goto	l1196
	
l1195:	
	line	51
	
l2083:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1345:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1340:
	addlw	-1
	skipz
	goto	u1345
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2085:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2087:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2089:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2091:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2093:	
	btfss	(___fttol@exp1),7
	goto	u1351
	goto	u1350
u1351:
	goto	l2103
u1350:
	line	57
	
l2095:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1361
	goto	u1360
u1361:
	goto	l2101
u1360:
	line	58
	
l2097:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1196
	
l2099:	
	goto	l1196
	
l1198:	
	goto	l2101
	line	59
	
l1199:	
	line	60
	
l2101:	
	movlw	01h
u1375:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u1375

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l2101
u1380:
	goto	l2113
	
l1200:	
	line	62
	goto	l2113
	
l1197:	
	line	63
	
l2103:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1391
	goto	u1390
u1391:
	goto	l2111
u1390:
	line	64
	
l2105:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1196
	
l2107:	
	goto	l1196
	
l1202:	
	line	65
	goto	l2111
	
l1204:	
	line	66
	
l2109:	
	movlw	01h
	movwf	(??___fttol+0)+0
u1405:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u1405
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2111
	line	68
	
l1203:	
	line	65
	
l2111:	
	movf	(___fttol@exp1),f
	skipz
	goto	u1411
	goto	u1410
u1411:
	goto	l2109
u1410:
	goto	l2113
	
l1205:	
	goto	l2113
	line	69
	
l1201:	
	line	70
	
l2113:	
	movf	(___fttol@sign1),w
	skipz
	goto	u1420
	goto	l2117
u1420:
	line	71
	
l2115:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l2117
	
l1206:	
	line	72
	
l2117:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1196
	
l2119:	
	line	73
	
l1196:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   11[BANK0 ] unsigned um
;;  sign            1   15[BANK0 ] unsigned char 
;;  cntr            1   14[BANK0 ] unsigned char 
;;  exp             1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_store_data
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext12
__ptext12:	;psect for function ___ftmul
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l2027:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u1191
	goto	u1190
u1191:
	goto	l2033
u1190:
	line	68
	
l2029:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1176
	
l2031:	
	goto	l1176
	
l1175:	
	line	69
	
l2033:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u1201
	goto	u1200
u1201:
	goto	l2039
u1200:
	line	70
	
l2035:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1176
	
l2037:	
	goto	l1176
	
l1177:	
	line	71
	
l2039:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1215:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1210:
	addlw	-1
	skipz
	goto	u1215
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1225:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1220:
	addlw	-1
	skipz
	goto	u1225
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l2041:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2043:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2045:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2047:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2049:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2051
	line	135
	
l1178:	
	line	136
	
l2051:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1231
	goto	u1230
u1231:
	goto	l2055
u1230:
	line	137
	
l2053:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1241
	addwf	(___ftmul@f3_as_product+1),f
u1241:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1242
	addwf	(___ftmul@f3_as_product+2),f
u1242:

	goto	l2055
	
l1179:	
	line	138
	
l2055:	
	movlw	01h
u1255:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1255

	line	139
	
l2057:	
	movlw	01h
u1265:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1265
	line	140
	
l2059:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l2051
u1270:
	goto	l2061
	
l1180:	
	line	143
	
l2061:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2063
	line	144
	
l1181:	
	line	145
	
l2063:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l2067
u1280:
	line	146
	
l2065:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1291
	addwf	(___ftmul@f3_as_product+1),f
u1291:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1292
	addwf	(___ftmul@f3_as_product+2),f
u1292:

	goto	l2067
	
l1182:	
	line	147
	
l2067:	
	movlw	01h
u1305:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1305

	line	148
	
l2069:	
	movlw	01h
u1315:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1315

	line	149
	
l2071:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l2063
u1320:
	goto	l2073
	
l1183:	
	line	156
	
l2073:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1176
	
l2075:	
	line	157
	
l1176:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[COMMON] float 
;;  f1              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3              3    5[BANK0 ] float 
;;  sign            1    9[BANK0 ] unsigned char 
;;  exp             1    8[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6      10       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_store_data
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext13
__ptext13:	;psect for function ___ftdiv
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l1985:	
	movf	(___ftdiv@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u1111
	goto	u1110
u1111:
	goto	l1991
u1110:
	line	56
	
l1987:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1161
	
l1989:	
	goto	l1161
	
l1160:	
	line	57
	
l1991:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u1121
	goto	u1120
u1121:
	goto	l1997
u1120:
	line	58
	
l1993:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1161
	
l1995:	
	goto	l1161
	
l1162:	
	line	59
	
l1997:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l1999:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2001:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1135:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1130:
	addlw	-1
	skipz
	goto	u1135
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2003:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1145:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1140:
	addlw	-1
	skipz
	goto	u1145
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2005:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2007:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2009:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l2011
	line	69
	
l1163:	
	line	70
	
l2011:	
	movlw	01h
u1155:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u1155
	line	71
	
l2013:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1165
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1165
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1165:
	skipc
	goto	u1161
	goto	u1160
u1161:
	goto	l2019
u1160:
	line	72
	
l2015:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l2017:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2019
	line	74
	
l1164:	
	line	75
	
l2019:	
	movlw	01h
u1175:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u1175
	line	76
	
l2021:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l2011
u1180:
	goto	l2023
	
l1165:	
	line	77
	
l2023:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l1161
	
l2025:	
	line	78
	
l1161:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext14
__ptext14:	;psect for function ___ftpack
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1909:	
	movf	(___ftpack@exp),w
	skipz
	goto	u940
	goto	l1913
u940:
	
l1911:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u951
	goto	u950
u951:
	goto	l1919
u950:
	goto	l1913
	
l1110:	
	line	65
	
l1913:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1111
	
l1915:	
	goto	l1111
	
l1108:	
	line	66
	goto	l1919
	
l1113:	
	line	67
	
l1917:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u965:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u965

	goto	l1919
	line	69
	
l1112:	
	line	66
	
l1919:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l1917
u970:
	goto	l1115
	
l1114:	
	line	70
	goto	l1115
	
l1116:	
	line	71
	
l1921:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1923:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1925:	
	movlw	01h
u985:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u985

	line	74
	
l1115:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u991
	goto	u990
u991:
	goto	l1921
u990:
	goto	l1929
	
l1117:	
	line	75
	goto	l1929
	
l1119:	
	line	76
	
l1927:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1005:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1005
	goto	l1929
	line	78
	
l1118:	
	line	75
	
l1929:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l1927
u1010:
	
l1120:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l1121
u1020:
	line	80
	
l1931:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1121:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1933:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1035:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1030:
	addlw	-1
	skipz
	goto	u1035
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1935:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1040
	goto	l1122
u1040:
	line	84
	
l1937:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1122:	
	line	85
	line	86
	
l1111:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_BCD2Dec

;; *************** function _BCD2Dec *****************
;; Defined at:
;;		line 31 in file "D:\WALEED\live_person\mutaz\Project\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  bcd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bcd             1    8[COMMON] unsigned char 
;;  ten             1    9[COMMON] unsigned char 
;;  temp            1    7[COMMON] unsigned char 
;;  unit            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___bmul
;; This function is called by:
;;		_main
;;		_store_data
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\WALEED\live_person\mutaz\Project\i2c_rtc.c"
	line	31
global __ptext15
__ptext15:	;psect for function _BCD2Dec
psect	text15
	file	"D:\WALEED\live_person\mutaz\Project\i2c_rtc.c"
	line	31
	global	__size_of_BCD2Dec
	__size_of_BCD2Dec	equ	__end_of_BCD2Dec-_BCD2Dec
	
_BCD2Dec:	
;incstack = 0
	opt	stack 5
; Regs used in _BCD2Dec: [wreg+status,2+status,0+pclath+cstack]
;BCD2Dec@bcd stored from wreg
	movwf	(BCD2Dec@bcd)
	line	34
	
l1957:	
;i2c_rtc.c: 33: unsigned char ten,unit,temp;
;i2c_rtc.c: 34: ten = (bcd >> 4) & 0x0F;
	movf	(BCD2Dec@bcd),w
	movwf	(??_BCD2Dec+0)+0
	movlw	04h
u1055:
	clrc
	rrf	(??_BCD2Dec+0)+0,f
	addlw	-1
	skipz
	goto	u1055
	movf	0+(??_BCD2Dec+0)+0,w
	andlw	0Fh
	movwf	(??_BCD2Dec+1)+0
	movf	(??_BCD2Dec+1)+0,w
	movwf	(BCD2Dec@ten)
	line	35
	
l1959:	
;i2c_rtc.c: 35: ten = ten*10;
	movlw	(0Ah)
	movwf	(??_BCD2Dec+0)+0
	movf	(??_BCD2Dec+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(BCD2Dec@ten),w
	fcall	___bmul
	movwf	(??_BCD2Dec+1)+0
	movf	(??_BCD2Dec+1)+0,w
	movwf	(BCD2Dec@ten)
	line	36
	
l1961:	
;i2c_rtc.c: 36: unit = bcd & 0x0F;
	movf	(BCD2Dec@bcd),w
	andlw	0Fh
	movwf	(??_BCD2Dec+0)+0
	movf	(??_BCD2Dec+0)+0,w
	movwf	(BCD2Dec@unit)
	line	37
	
l1963:	
;i2c_rtc.c: 37: temp = ten + unit;
	movf	(BCD2Dec@unit),w
	addwf	(BCD2Dec@ten),w
	movwf	(??_BCD2Dec+0)+0
	movf	(??_BCD2Dec+0)+0,w
	movwf	(BCD2Dec@temp)
	line	38
	
l1965:	
;i2c_rtc.c: 38: return(temp);
	movf	(BCD2Dec@temp),w
	goto	l782
	
l1967:	
	line	40
	
l782:	
	return
	opt stack 0
GLOBAL	__end_of_BCD2Dec
	__end_of_BCD2Dec:
	signat	_BCD2Dec,4217
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_BCD2Dec
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext16
__ptext16:	;psect for function ___bmul
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l1893:	
	clrf	(___bmul@product)
	goto	l1895
	line	42
	
l971:	
	line	43
	
l1895:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u921
	goto	u920
u921:
	goto	l1899
u920:
	line	44
	
l1897:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l1899
	
l972:	
	line	45
	
l1899:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1901:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l1903:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u931
	goto	u930
u931:
	goto	l1895
u930:
	goto	l1905
	
l973:	
	line	50
	
l1905:	
	movf	(___bmul@product),w
	goto	l974
	
l1907:	
	line	51
	
l974:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_serial_init

;; *************** function _serial_init *****************
;; Defined at:
;;		line 179 in file "D:\WALEED\live_person\mutaz\Project\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	179
global __ptext17
__ptext17:	;psect for function _serial_init
psect	text17
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	179
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
;incstack = 0
	opt	stack 7
; Regs used in _serial_init: [wreg]
	line	181
	
l2153:	
;main.c: 181: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7	;volatile
	line	182
;main.c: 182: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	183
	
l2155:	
;main.c: 183: TXSTA=0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	184
;main.c: 184: SPBRG=129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	185
	
l2157:	
;main.c: 185: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	186
	
l2159:	
;main.c: 186: CREN=1;
	bsf	(196/8),(196)&7	;volatile
	line	187
	
l2161:	
;main.c: 187: TXEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	188
	
l2163:	
;main.c: 188: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	189
	
l2165:	
;main.c: 189: TXIF=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(100/8),(100)&7	;volatile
	line	190
	
l187:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
	signat	_serial_init,88
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 464 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_20(4), STR_19(18), STR_18(17), STR_17(4), 
;;		 -> STR_16(18), STR_15(17), STR_14(4), STR_13(18), 
;;		 -> STR_12(17), STR_11(4), STR_10(18), STR_9(17), 
;;		 -> STR_8(4), STR_7(3), STR_6(31), STR_5(4), 
;;		 -> STR_4(4), STR_3(9), STR_2(4), STR_1(26), 
;; Auto vars:     Size  Location     Type
;;  f               1    9[BANK0 ] PTR const unsigned char 
;;		 -> STR_20(4), STR_19(18), STR_18(17), STR_17(4), 
;;		 -> STR_16(18), STR_15(17), STR_14(4), STR_13(18), 
;;		 -> STR_12(17), STR_11(4), STR_10(18), STR_9(17), 
;;		 -> STR_8(4), STR_7(3), STR_6(31), STR_5(4), 
;;		 -> STR_4(4), STR_3(9), STR_2(4), STR_1(26), 
;;  idx             1    1[BANK0 ] unsigned char 
;;  _val            4    3[BANK0 ] struct .
;;  c               1    8[BANK0 ] char 
;;  prec            1    7[BANK0 ] char 
;;  ap              1    2[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5      10       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	464
global __ptext18
__ptext18:	;psect for function _printf
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
;incstack = 0
	opt	stack 6
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@f)
	line	542
	
l2211:	
;doprnt.c: 466: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l2251
	
l855:	
	line	547
	
l2213:	
;doprnt.c: 547: if(c != '%')
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u1511
	goto	u1510
u1511:
	goto	l2217
u1510:
	line	550
	
l2215:	
;doprnt.c: 549: {
;doprnt.c: 550: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	line	551
;doprnt.c: 551: continue;
	goto	l2251
	line	552
	
l856:	
	line	557
	
l2217:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l2221
	line	646
;doprnt.c: 646: case 0:
	
l858:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l870
	line	727
;doprnt.c: 727: case 'x':
	
l860:	
	line	732
;doprnt.c: 732: break;
	goto	l2223
	line	811
;doprnt.c: 811: default:
	
l862:	
	line	822
;doprnt.c: 822: continue;
	goto	l2251
	line	831
	
l2219:	
;doprnt.c: 831: }
	goto	l2223
	line	644
	
l857:	
	
l2221:	
	movlw	01h
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l870
	xorlw	120^0	; case 120
	skipnz
	goto	l2223
	goto	l2251
	opt asmopt_on

	line	831
	
l861:	
	line	1295
	
l2223:	
;doprnt.c: 1282: {
;doprnt.c: 1295: _val._val = (*(unsigned *)__va_arg((*(unsigned **)ap), (unsigned)0));
	movf	(printf@ap),w
	movwf	fsr0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l2225:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1325
	
l2227:	
;doprnt.c: 1296: }
;doprnt.c: 1325: for(c = 1 ; c != sizeof hexpowers/sizeof hexpowers[0] ; c++)
	clrf	(printf@c)
	incf	(printf@c),f
	
l2229:	
	movf	(printf@c),w
	xorlw	04h
	skipz
	goto	u1521
	goto	u1520
u1521:
	goto	l2233
u1520:
	goto	l2241
	
l2231:	
	goto	l2241
	line	1326
	
l863:	
	
l2233:	
;doprnt.c: 1326: if(_val._val < hexpowers[c])
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_hexpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+1)+0
	fcall	stringdir
	movwf	(??_printf+1)+0+1
	movf	1+(??_printf+1)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u1535
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u1535:
	skipnc
	goto	u1531
	goto	u1530
u1531:
	goto	l2237
u1530:
	goto	l2241
	line	1327
	
l2235:	
;doprnt.c: 1327: break;
	goto	l2241
	
l865:	
	line	1325
	
l2237:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l2239:	
	movf	(printf@c),w
	xorlw	04h
	skipz
	goto	u1541
	goto	u1540
u1541:
	goto	l2233
u1540:
	goto	l2241
	
l864:	
	line	1481
	
l2241:	
;doprnt.c: 1431: {
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2249
	
l867:	
	line	1509
	
l2243:	
;doprnt.c: 1487: {
;doprnt.c: 1508: {
;doprnt.c: 1509: unsigned char idx = (_val._val / hexpowers[prec]) & 0xF;
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_hexpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(printf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(printf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	andlw	0Fh
	movwf	(??_printf+1)+0
	movf	(??_printf+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@idx)
	line	1515
	
l2245:	
;doprnt.c: 1515: c = "0123456789abcdef"[idx];
	movf	(printf@idx),w
	addlw	low((STR_21)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	line	1533
	
l2247:	
;doprnt.c: 1517: }
;doprnt.c: 1532: }
;doprnt.c: 1533: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	goto	l2249
	line	1534
	
l866:	
	line	1483
	
l2249:	
	movlw	(-1)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1
	skipz
	goto	u1551
	goto	u1550
u1551:
	goto	l2243
u1550:
	goto	l2251
	
l868:	
	goto	l2251
	line	1542
	
l854:	
	line	545
	
l2251:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u1561
	goto	u1560
u1561:
	goto	l2213
u1560:
	goto	l870
	
l869:	
	goto	l870
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l859:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _printf is never used
	
l870:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 194 in file "D:\WALEED\live_person\mutaz\Project\main.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	194
global __ptext19
__ptext19:	;psect for function _putch
psect	text19
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	194
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;incstack = 0
	opt	stack 6
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	196
	
l1969:	
;main.c: 196: while(!TXIF);
	goto	l190
	
l191:	
	
l190:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u1061
	goto	u1060
u1061:
	goto	l190
u1060:
	goto	l1971
	
l192:	
	line	197
	
l1971:	
;main.c: 197: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	198
	
l193:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4216
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext20
__ptext20:	;psect for function ___lwdiv
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2121:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2123:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1431
	goto	u1430
u1431:
	goto	l2143
u1430:
	line	16
	
l2125:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2131
	
l1285:	
	line	18
	
l2127:	
	movlw	01h
	
u1445:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1445
	line	19
	
l2129:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2131
	line	20
	
l1284:	
	line	17
	
l2131:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1451
	goto	u1450
u1451:
	goto	l2127
u1450:
	goto	l2133
	
l1286:	
	goto	l2133
	line	21
	
l1287:	
	line	22
	
l2133:	
	movlw	01h
	
u1465:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1465
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1475
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1475:
	skipc
	goto	u1471
	goto	u1470
u1471:
	goto	l2139
u1470:
	line	24
	
l2135:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2137:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2139
	line	26
	
l1288:	
	line	27
	
l2139:	
	movlw	01h
	
u1485:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u1485
	line	28
	
l2141:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l2133
u1490:
	goto	l2143
	
l1289:	
	goto	l2143
	line	29
	
l1283:	
	line	30
	
l2143:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1290
	
l2145:	
	line	31
	
l1290:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_i2c_init

;; *************** function _i2c_init *****************
;; Defined at:
;;		line 202 in file "D:\WALEED\live_person\mutaz\Project\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	202
global __ptext21
__ptext21:	;psect for function _i2c_init
psect	text21
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	202
	global	__size_of_i2c_init
	__size_of_i2c_init	equ	__end_of_i2c_init-_i2c_init
	
_i2c_init:	
;incstack = 0
	opt	stack 7
; Regs used in _i2c_init: [wreg]
	line	204
	
l2167:	
;main.c: 204: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7	;volatile
	line	205
;main.c: 205: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	206
;main.c: 206: SSPSTAT |= 0x80;
	bsf	(148)^080h+(7/8),(7)&7	;volatile
	line	207
	
l2169:	
;main.c: 207: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	208
;main.c: 208: SSPADD = 0x97;
	movlw	(097h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(147)^080h	;volatile
	line	209
	
l196:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_init
	__end_of_i2c_init:
	signat	_i2c_init,88
	global	_adc_init

;; *************** function _adc_init *****************
;; Defined at:
;;		line 171 in file "D:\WALEED\live_person\mutaz\Project\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	171
global __ptext22
__ptext22:	;psect for function _adc_init
psect	text22
	file	"D:\WALEED\live_person\mutaz\Project\main.c"
	line	171
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
;incstack = 0
	opt	stack 7
; Regs used in _adc_init: [wreg]
	line	173
	
l2151:	
;main.c: 173: TRISA = 0xFE;
	movlw	(0FEh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	174
;main.c: 174: ADCON0 = 0x81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	175
;main.c: 175: ADCON1 = 0xCE;
	movlw	(0CEh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	176
	
l184:	
	return
	opt stack 0
GLOBAL	__end_of_adc_init
	__end_of_adc_init:
	signat	_adc_init,88
	global	_Asci2BCD

;; *************** function _Asci2BCD *****************
;; Defined at:
;;		line 21 in file "D:\WALEED\live_person\mutaz\Project\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  upper           1    wreg     unsigned char 
;;  lower           1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  upper           1    3[COMMON] unsigned char 
;;  U               1    6[COMMON] unsigned char 
;;  chr             1    5[COMMON] unsigned char 
;;  L               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"D:\WALEED\live_person\mutaz\Project\i2c_rtc.c"
	line	21
global __ptext23
__ptext23:	;psect for function _Asci2BCD
psect	text23
	file	"D:\WALEED\live_person\mutaz\Project\i2c_rtc.c"
	line	21
	global	__size_of_Asci2BCD
	__size_of_Asci2BCD	equ	__end_of_Asci2BCD-_Asci2BCD
	
_Asci2BCD:	
;incstack = 0
	opt	stack 7
; Regs used in _Asci2BCD: [wreg+status,2+status,0]
;Asci2BCD@upper stored from wreg
	movwf	(Asci2BCD@upper)
	line	24
	
l2253:	
;i2c_rtc.c: 23: unsigned char U,L,chr;
;i2c_rtc.c: 24: U=upper&0x0F;
	movf	(Asci2BCD@upper),w
	andlw	0Fh
	movwf	(??_Asci2BCD+0)+0
	movf	(??_Asci2BCD+0)+0,w
	movwf	(Asci2BCD@U)
	line	25
	
l2255:	
;i2c_rtc.c: 25: U=U<<4;
	movf	(Asci2BCD@U),w
	movwf	(??_Asci2BCD+0)+0
	movlw	(04h)-1
u1575:
	clrc
	rlf	(??_Asci2BCD+0)+0,f
	addlw	-1
	skipz
	goto	u1575
	clrc
	rlf	(??_Asci2BCD+0)+0,w
	movwf	(??_Asci2BCD+1)+0
	movf	(??_Asci2BCD+1)+0,w
	movwf	(Asci2BCD@U)
	line	26
	
l2257:	
;i2c_rtc.c: 26: L=lower & 0x0F;
	movf	(Asci2BCD@lower),w
	andlw	0Fh
	movwf	(??_Asci2BCD+0)+0
	movf	(??_Asci2BCD+0)+0,w
	movwf	(Asci2BCD@L)
	line	27
;i2c_rtc.c: 27: chr = U|L;
	movf	(Asci2BCD@U),w
	iorwf	(Asci2BCD@L),w
	movwf	(??_Asci2BCD+0)+0
	movf	(??_Asci2BCD+0)+0,w
	movwf	(Asci2BCD@chr)
	line	28
	
l2259:	
;i2c_rtc.c: 28: return chr;
	movf	(Asci2BCD@chr),w
	goto	l779
	
l2261:	
	line	29
	
l779:	
	return
	opt stack 0
GLOBAL	__end_of_Asci2BCD
	__end_of_Asci2BCD:
	signat	_Asci2BCD,8313
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
