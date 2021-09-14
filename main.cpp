#include "mbed.h"
#include "TextLCD.h"
#include "Keypad.h"
#include "hcsr04.h"
#include "sMotor.h"

DigitalOut o_RedLED(PTC13);
PwmOut o_LED(PTD2);
DigitalOut redLED(LED1);
DigitalOut greenLED(LED2);
DigitalOut blueLED(LED3);

Keypad kpad(PTC4, PTC3, PTC0, PTC7, PTC11, PTC10, PTC6, PTC5);
TextLCD my_lcd(PTE20, PTE21, PTE22, PTE23, PTE29, PTE30, TextLCD::LCD16x2);
HCSR04 sensor(PTD4, PTA12);
HCSR04 sensor2(PTA5, PTA4);
sMotor motor(PTB0,PTB1,PTB2,PTB3);

int main() {
    
    int worker1, worker2, worker3, worker4, worker5;
    worker1 = 147147;
    worker2 = 000000;
    worker3 = 111111;
    worker4 = 222222;
    worker5 = 141014;
    
    int counter = 3;
    
    bool enter = 0; 
    bool person1 = 0;
    bool person2 = 0;
    bool person3 = 0;
    bool person4 = 0;
    unsigned int i_sensor;
    unsigned int i_sensor2;
    unsigned int people = 0;
    
    while (1)
    {
        my_lcd.cls();
    my_lcd.locate(0,0);
    my_lcd.printf("People inside: ");
    my_lcd.locate(0,1);
    my_lcd.printf("%d/3", people);
    wait(5);
    
    sensor.start();
    wait(0.1);
    i_sensor = sensor.get_dist_cm();
                
    if(i_sensor < 15){
        motor.clockwise();
        motor.step(150,0,1200);
        while(1)
        {
            sensor2.start();
            wait(0.1);
            i_sensor2 = sensor2.get_dist_cm();
            if (i_sensor2 < 15)
            {
                motor.anticlockwise();
                motor.step(150,1,1200);
                people--;
                wait(2);
                break;
            }
        }
    }
    
    
    while(1){
    sensor2.start();
    wait(0.1);
    i_sensor2 = sensor2.get_dist_cm();
    wait(0.5);
        if(i_sensor2 < 15){
            enter = 1;
            goto here;
        }
    }
    here:
    if (enter == 1 && people < 3)
    //while(true)
    {
        o_LED= 1;
        o_RedLED = 0;    
        my_lcd.locate(0,0);
        my_lcd.printf("People inside: ");
        my_lcd.locate(0,1);
        my_lcd.printf("%d/3", people);
        wait(5);
        my_lcd.cls();
        my_lcd.printf("Enter HES Code"); 
        wait(2);
        my_lcd.cls();
        char key;
        int released = 1;
        char inputArray[16];
        int i= 0;
        
        while(i<16)
        {
            key = kpad.ReadKey();
            if(key == '\0')
            released = 1;
            
            if ((key != '\0') && (released == 1))
            {
                if (key != 'A' )
                {
                    my_lcd.printf("%c", key);
                    
                }
                if (key == 'A')
                {
                    my_lcd.printf("");
                    break;
                }
                inputArray[i] = key;
                i++;
                released = 0;
                wait(0.2);
            }
        }
        
        int ref_input, fromKey;
        char sign;
        sscanf(inputArray, "%d%c", &fromKey, &sign);
        ref_input = fromKey;  
        
            
        sensor.start();
        wait(0.1);
        i_sensor = sensor.get_dist_cm();
                    
        if(i_sensor < 15){
            motor.clockwise();
            motor.step(150,0,1200);
            while(1)
            {
                sensor2.start();
                wait(0.1);
                i_sensor2 = sensor2.get_dist_cm();
                if (i_sensor2 < 15)
                {
                    motor.anticlockwise();
                    motor.step(150,1,1200);
                    people--;
                    wait(2);
                    break;
                }
            }
        }
            
            if(ref_input == worker1 && person1 == 0)
            {
                person1 = 1;
                my_lcd.cls();
                counter = 3;
                my_lcd.locate(0,0);
                my_lcd.printf("Seyma Demirci");
                motor.clockwise();
                motor.step(150,0,1200);
                wait(4);
                while (1)
                {
                sensor2.start();
                wait(0.1);
                i_sensor2 = sensor2.get_dist_cm();
                    if(i_sensor2 > 15)
                    {
                    motor.anticlockwise();
                    motor.step(150,1,1200);
                    people++;
                    break;
                    }
                }
            }
            
            else if(ref_input == worker2 && person2 == 0)
            {
                person2 = 1;
                my_lcd.cls();
                counter = 3;
                my_lcd.locate(0,0);
                my_lcd.printf("Burhan Korkmaz");
                motor.clockwise();
                motor.step(150,0,1200);
                wait(4);
                while (1)
                {
                sensor2.start();
                wait(0.1);
                i_sensor2 = sensor2.get_dist_cm();
                    if(i_sensor2 > 15)
                    {
                    motor.anticlockwise();
                    motor.step(150,1,1200);
                    people++;
                    break;
                    }
                }
            }
            
            else if(ref_input == worker3 && person3 == 0)
            {
                person3 = 1;
                my_lcd.cls();
                counter = 3;
                my_lcd.locate(0,0);
                my_lcd.printf("Sevval Demirci");
                motor.clockwise();
                motor.step(150,0,1200);
                wait(4);
                while (1)
                {
                sensor2.start();
                wait(0.1);
                i_sensor2 = sensor2.get_dist_cm();
                    if(i_sensor2 > 15)
                    {
                    motor.anticlockwise();
                    motor.step(150,1,1200);
                    people++;
                    break;
                    }
                }
            }
            
            else if(ref_input == worker4 && person4 == 0)
            {
                person4 = 1;
                my_lcd.cls();
                counter = 3;
                my_lcd.locate(0,0);
                my_lcd.printf("Abuzer Tinmaz");
                motor.clockwise();
                motor.step(150,0,1200);
                wait(4);
                while (1)
                {
                sensor2.start();
                wait(0.1);
                i_sensor2 = sensor2.get_dist_cm();
                    if(i_sensor2 > 15)
                    {
                    motor.anticlockwise();
                    motor.step(150,1,1200);
                    people++;
                    break;
                    }
                }
            }
            else if(ref_input == worker5)
            {
                my_lcd.cls();
                counter = 3;
                my_lcd.printf("Tosi Fatlip");
                wait(1);
                my_lcd.cls();
    
                while(1)
                {
                my_lcd.locate(0,0);
                my_lcd.printf("Danger!");
                o_RedLED = 1;  
                wait(0.2);
                o_RedLED = 0;
                wait(0.2);
               }
            }
            else 
            {
                my_lcd.cls();
                my_lcd.locate(0,0);
                my_lcd.printf("Undefined!");
                my_lcd.locate(0,1);
                my_lcd.printf("Remaining: %d " , counter);
                counter--;
                wait(3);
                my_lcd.cls();
            }
            if(counter == -1){
                for (int i = 10; i >= 0; i--) 
                    {
                        my_lcd.cls(); 
                        my_lcd.locate(0,0);
                        my_lcd.printf("Wait! : %d", i);
                        wait(0.5);
                        counter = 3;
                    }
            }
            //compare = i_sensor;    
            else if ( people == 3)
            {
                
                o_LED= 0;
                o_RedLED = 1;
                my_lcd.cls();
                my_lcd.locate(0,0);
                my_lcd.printf("Too crowd!");
                my_lcd.locate(0,1);
                my_lcd.printf("Access Denied! Wait ");
                wait(3);
                my_lcd.cls();
            }
        } //while true
    }//while1
}

    
