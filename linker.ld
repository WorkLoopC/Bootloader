ENTRY(_start)

SECTIONS
{
    . = 0x100000; /* start address */
    .text : { *(.text) }
    .rodata : { *(.rodata) }
    .bss : { *(.bss) }
}