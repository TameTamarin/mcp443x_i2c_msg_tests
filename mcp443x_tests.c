#include "Drivers/mcp443x_I2C_Msgs/Inc/mcp443x.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>


void print_num_to_bin_str(uint8_t num){
    for(int i = 0; i<8; i++){
        uint8_t bit_to_print = (num >> i) & 0b00000001;
        printf("%d", bit_to_print);
    }
}

int main(){
    printf("starting mcp443x_tests\n");
    
    printf("\nMemory address Byte\n");
    print_num_to_bin_str(mcp44xx_address_byte(0));
    
    for(uint8_t i = 0; i<4; i++){
    printf("\nIncrement chan %d \n", i);
    print_num_to_bin_str(increment_wiper(i));
    printf("\n");
    }
    
    for(uint8_t i = 0; i<4; i++){
    printf("\nDecrement chan %d \n", i);
    print_num_to_bin_str(decrement_wiper(i));
    printf("\n");
    }

    for(uint8_t i = 0; i<4; i++){
    printf("\nSet Pot Wiper Value %d \n", i);
    print_num_to_bin_str(set_pot_wiper_val(i));
    printf("\n");
    }
    

    return 0;
}