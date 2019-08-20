//	Data Logger Project

#include <htc.h>
#include<string.h>
#include<pic.h>       //Define PIC Registers
#include<stdio.h>      
#include"i2c_unitec.h"
#include"i2c_rtc.h"

/*********CRYSTAL FREQUECY**********/
#define _XTAL_FREQ 20000000
/***********************************/


//Function Prototype
void adc_init(void);
void serial_init(void); 
void putch(unsigned char byte);
void i2c_init(void);
void store_data(void);

unsigned char sec,min,hour,date,month,year;
unsigned char sec_1,min_1,hour_1;
unsigned char s,m,h;
unsigned char s1,m1,h1;
unsigned char DATA[8],enter;
unsigned int H,M,S,Diff, H_1,M_1,S_1;
unsigned char ADC1,ADL,ADH,pot,Button_1,Button_2,Button_3,Button_4;
unsigned int adc_value=0;
float val=0, ref = 19.53;


void main()
{
    TRISD = 0x03;
	PORTD = 0x00;
	adc_init();
	serial_init();
	i2c_init();   
	__delay_ms(100);



// Set Initial Time

 	i2c_start();		//	Start the I2C Protocol
    i2c_send(0xD0);
    i2c_send(0x00);
    i2c_send(0x80);		//	CH = 1 Stop oscillator
    i2c_send(0x00);		//	Minute
    i2c_send(0x00);		//	Hour
    i2c_send(0x00);		//	Day
    i2c_send(0x00);		//	Date
    i2c_send(0x00);		//	Month	
    i2c_send(0x00);		//	Year
    i2c_stop();			//	Stop the I2C Protocol
    
	__delay_ms(500);

	//Have to start the Clock again
    i2c_start();
    i2c_send(0xD0);
    i2c_send(0x00);
    i2c_send(0x00); 
    i2c_stop();
	
	store_data();

while(1)
	{
	__delay_ms(500);

	sec = rtc1307_read(0x00);
    min = rtc1307_read(0x01);
    hour = rtc1307_read(0x02);
    date = rtc1307_read(0x04);
    month = rtc1307_read(0x05);
    year = rtc1307_read(0x06);

	s = BCD2Dec(sec);
	m = BCD2Dec(min);
	h = BCD2Dec(hour);


	H = h * 3600;
	M = m * 60;
	S = H + M + s;
	Diff = S - S_1;

	if(Diff>=10)
	{					//	collect data
	Diff = 0;
	store_data();
	}



	if (RD0==1)				// Set Date
	{
	
		printf("Enter Date in the formate");
		printf("\n\r\n");
		printf("DD/MM/YY");
		printf("\n\r\n");
		for(unsigned char i=0;i<8;i++)
		{		
		while(!RCIF);
		DATA[i]=RCREG;
		TXREG=DATA[i];
		while(!TXIF);
		}
		printf("\n\r\n");
		date = Asci2BCD(DATA[0],DATA[1]);
		month = Asci2BCD(DATA[3],DATA[4]);
		year = Asci2BCD(DATA[6],DATA[7]);


 		i2c_start();
    	i2c_send(0xD0);
    	i2c_send(0x04);
    	i2c_send(date);    
    	i2c_send(month);   
    	i2c_send(year);    
    	i2c_stop();        
	}
   

	if (RD1==1)
	{
		printf("Output from Potentiometer is :");
		printf("%x",pot);
		printf("\n\r\n");

		if(Button_1 == 0)
		printf("Button 1 is open");
		else
		printf("Button 1 is close");

		printf("\n\r\n");

		if(Button_2 == 0)
		printf("Button 2 is open");
		else
		printf("Button 2 is close");

		printf("\n\r\n");


		if(Button_3 == 0)
		printf("Button 3 is open");
		else
		printf("Button 3 is close");

		printf("\n\r\n");

		if(Button_4 == 0)
		printf("Button 4 is open");
		else
		printf("Button 4 is close");

		printf("\n\r\n");

	}      
	}
}



//Fnction Definition

void adc_init()
{
	TRISA = 0xFE;
	ADCON0 = 0x81;
	ADCON1 = 0xCE;
}
//usart functions

void serial_init() 
{ 
	TRISC6=0;     // RC7, RC6 set to USART Mode 
	TRISC7=1;  
	TXSTA=0x24; // Enable Transmission, Asynchronous mode, High Speed mode 
	SPBRG=129;  
	SPEN=1;
	CREN=1;
	TXEN=1;
	BRGH=1;
	TXIF=1;       // Enable Transmission 
}   


//------------usart putch
void putch(unsigned char byte)//Required for printf statement 
{                  
	while(!TXIF); // Wait for the Transmit Buffer to be empty
	TXREG = byte; // Transmit the Data 
} 



void i2c_init(void)
{
	TRISC3 = 1; /* SDA and SCL as input pin */
	TRISC4 = 1; /* these pins can be configured either i/p or o/p */
	SSPSTAT |= 0x80; /* Slew rate disabled */
	SSPCON = 0x28; /* SSPEN = 1, I2C Master mode, clock = FOSC/(4 * (SSPADD + 1)) */
	SSPADD = 0x97;        /* 100Khz @ 4Mhz Fosc */
}



void store_data()
{

	GO = 1;
	while(GO == 1);
	ADL = ADRESL;
	ADH = ADRESH;
	adc_value = ADH,
	adc_value = adc_value << 8;
	adc_value = adc_value | ADL;
	val = adc_value * ref;
	val = val/10;
	val = val/10;
	val = val/10;
	pot = val;
	
	Button_1 = RA1;
	Button_2 = RA2;
	Button_3 = RA3;
	Button_4 = RA4;


	sec_1 = rtc1307_read(0x00);
	min_1 = rtc1307_read(0x01);
    hour_1 = rtc1307_read(0x02);
    
	s1 = BCD2Dec(sec_1);
	m1 = BCD2Dec(min_1);
	h1 = BCD2Dec(hour_1);
	H_1 = h1 * 3600;
	M_1 = m1 * 60;
	S_1 = H_1 + M_1 + s1;
}
