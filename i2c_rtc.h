#define _XTAL_FREQ 20000000

unsigned char BCD2UpperCh(unsigned char);
unsigned char BCD2LowerCh(unsigned char);
unsigned char Asci2BCD(unsigned char, unsigned char);
unsigned char BCD2Dec(unsigned char);
unsigned char rtc1307_read(unsigned char);