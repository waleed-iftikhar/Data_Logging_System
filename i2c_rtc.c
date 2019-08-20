#define _LEGACY_HEADERS //Added for compiler versions 9.81+
#include <htc.h>
#include "i2c_unitec.h"
#include "i2c_rtc.h"

unsigned char BCD2UpperCh(unsigned char bcd)
{
    unsigned char temp;
     temp = bcd >> 4;
     temp = temp | 0x30;
     return(temp);    
}
unsigned char BCD2LowerCh(unsigned char bcd)
{
    unsigned char temp;
     temp = bcd & 0x0F; //Making the Upper 4-bits
     temp = temp | 0x30;
     return(temp);
}

unsigned char Asci2BCD(unsigned char upper, unsigned char lower)
{
unsigned char U,L,chr;
U=upper&0x0F;
U=U<<4;
L=lower & 0x0F;
chr = U|L;
return chr;
}

unsigned char BCD2Dec(unsigned char bcd)
{
	 unsigned char ten,unit,temp;
     ten = (bcd >> 4) & 0x0F;
	 ten = ten*10;
	 unit = bcd & 0x0F;
  	 temp = ten + unit;
     return(temp);    

}

/*unsigned char Ch2Asci(unsigned char ch)
{
	unsigned char a,b;
	if(ch>9)
	{
		ch=ch+0x06;
		a=ch & 0xF0;
		b=ch & 0x0F;
	}

}*/

unsigned char rtc1307_read(unsigned char address)
{
//performs a randome read for RTC with RTC node address hard coded in
    unsigned char temp;
    i2c_start();
    i2c_send(0xD0);
    i2c_send(address);
    i2c_restart();
    i2c_send(0xD1);
    temp = i2c_read();
	i2c_nak();
    i2c_stop();    //this line is Removed Because it is already included in I2C_read function
    return temp;
}