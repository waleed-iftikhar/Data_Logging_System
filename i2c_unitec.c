#define _LEGACY //Added for compiler versions 9.81+
#include <htc.h>
#include "i2c_rtc.h"
#include "i2c_unitec.h"

void i2c_ack()
{
	SSPIF=0;          // clear SSP interrupt bit
   	ACKDT=0;        // clear the Acknowledge Data Bit - this means we are sending an Acknowledge or 'ACK'
   	ACKEN=1;        // set the ACK enable bit to initiate transmission of the ACK bit to the serial eeprom
   	while(!SSPIF);    // Wait for interrupt flag to go high indicating transmission is complete
}

void i2c_start(void)  //done
{
	SSPIF=0;          // clear SSP interrupt bit
    SEN=1;          // send start bit
    while(!SSPIF);    // Wait for the SSPIF bit to go back high before we load the data buffer
}

void i2c_restart(void)  //done
{
	SSPIF=0;          // clear SSP interrupt bit
    RSEN=1;          // send start bit
    while(!SSPIF);    // Wait for the SSPIF bit to go back high before we load the data buffer
}

void i2c_stop(void)  //done
{ 
	SSPIF=0;          // clear SSP interrupt bit
    PEN=1;          // send stop bit
    while(!SSPIF);    // Wait for interrupt flag to go high indicating transmission is complete
}

void i2c_send(unsigned char dat)
{
	SSPIF=0;          // clear SSP interrupt bit
    SSPBUF = dat;              // send databyte
    while(!SSPIF);    // Wait for interrupt flag to go high indicating transmission is complete
}

unsigned char i2c_read(void)
{
    SSPIF=0;          // clear SSP interrupt bit
    RCEN=1;         // set the receive enable bit to initiate a read of 8 bits from the serial eeprom
    while(!SSPIF);    // Wait for interrupt flag to go high indicating transmission is complete    
    return (SSPBUF);            // Data from eeprom is now in the SSPBUF so return that value
}

void i2c_nak()
{
    SSPIF=0;           // clear SSP interrupt bit
    ACKDT=1;        // set the Acknowledge Data Bit- this means we are sending a No-Ack or 'NAK'
    ACKEN=1;        // set the ACK enable bit to initiate transmission of the ACK bit to the serial eeprom
    while(!SSPIF);    // Wait for interrupt flag to go high indicating transmission is complete
}
