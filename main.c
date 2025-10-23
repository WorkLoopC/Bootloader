#include <stdint.h>

__attribute__((used)) void _start(void) {
    const char* msg = "Hello, OSdev!";
    volatile uint16_t* vga = (uint16_t*)0xB8000;

    for (int i = 0; msg[i] != '\0'; i++) {
        vga[i] = (uint8_t)msg[i] | (0x0F << 8); 
    }

    while (1) { } 
}
