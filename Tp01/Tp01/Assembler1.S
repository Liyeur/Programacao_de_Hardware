
/*
 * Assembler1.S
 *
 * Created: 13/08/2021 20:50:09
 *  Author: uri-7
 */ 

 #include <avr/io.h>

 .global plim
    plim:
        Principal:
            ldi        r16,0x80        
            out        DDRB, r16                    
            ldi        r16, 0x40            
            out        PORTB, r16                    
            nop                                        
        Verifica:
            out        PINB, PB6            
            rjmp    Liga_Led                        
            out        PORTB, PB7                
            rjmp    Verifica                     
        Liga_Led:
            out        PORTB, PB7                    
            rjmp    Verifica    