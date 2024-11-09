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
    print_num_to_bin_str(mcp44xx_address_byte(0));
    return 0;
}