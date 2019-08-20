# Data_Logging_System
This project is a reflection of a data logging system. Data loggers have very importance in the industry. Data logging systems continuously obtain data from different sensors after a specific period of time and store that data. User can collect that data from the data logger at any time. So that he could take appropriate measures. Aim of this project is to design a simple data logging system to get command on I2C, USART and ADC interface of the microcontroller. Microcontroller (16F877A) continuously tracks time with the help of real time clock (DS1307). After every 10 seconds it collects data from 1 potentiometer and 4 buttons and stores it in its RAM. Microcontroller is connected to the computer through USART. There are two control buttons. One button is to set date of the RTC and other is to collect the data stored in the RAM of the microcontroller.
