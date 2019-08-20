#define _XTAL_FREQ 20000000

void i2c_ack();
void i2c_start(void);  //done
void i2c_restart(void);  //done
void i2c_stop(void);  //done
//void i2c_wait(void);  //done
void i2c_send(unsigned char dat);
unsigned char i2c_read(void);
//void i2c_ack_status();
void i2c_nak();
