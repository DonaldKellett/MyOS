#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
 
/* Check if the compiler thinks you are targeting the wrong operating system. */
#if defined(__linux__)
#error "You are not using a cross-compiler, you will most certainly run into trouble"
#endif
 
/* This tutorial will only work for the 32-bit ix86 targets. */
#if !defined(__i386__)
#error "This tutorial needs to be compiled with a ix86-elf compiler"
#endif
 
/* Hardware text mode color constants. */
enum vga_color {
	VGA_COLOR_BLACK = 0,
	VGA_COLOR_BLUE = 1,
	VGA_COLOR_GREEN = 2,
	VGA_COLOR_CYAN = 3,
	VGA_COLOR_RED = 4,
	VGA_COLOR_MAGENTA = 5,
	VGA_COLOR_BROWN = 6,
	VGA_COLOR_LIGHT_GREY = 7,
	VGA_COLOR_DARK_GREY = 8,
	VGA_COLOR_LIGHT_BLUE = 9,
	VGA_COLOR_LIGHT_GREEN = 10,
	VGA_COLOR_LIGHT_CYAN = 11,
	VGA_COLOR_LIGHT_RED = 12,
	VGA_COLOR_LIGHT_MAGENTA = 13,
	VGA_COLOR_LIGHT_BROWN = 14,
	VGA_COLOR_WHITE = 15,
};
 
static inline uint8_t vga_entry_color(enum vga_color fg, enum vga_color bg) 
{
	return fg | bg << 4;
}
 
static inline uint16_t vga_entry(unsigned char uc, uint8_t color) 
{
	return (uint16_t) uc | (uint16_t) color << 8;
}
 
size_t strlen(const char* str) 
{
	size_t len = 0;
	while (str[len])
		len++;
	return len;
}
 
static const size_t VGA_WIDTH = 80;
static const size_t VGA_HEIGHT = 25;
 
size_t terminal_row;
size_t terminal_column;
uint8_t terminal_color;
uint16_t* terminal_buffer;
 
void terminal_initialize(void) 
{
	terminal_row = 0;
	terminal_column = 0;
	terminal_color = vga_entry_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	terminal_buffer = (uint16_t*) 0xB8000;
	for (size_t y = 0; y < VGA_HEIGHT; y++) {
		for (size_t x = 0; x < VGA_WIDTH; x++) {
			const size_t index = y * VGA_WIDTH + x;
			terminal_buffer[index] = vga_entry(' ', terminal_color);
		}
	}
}
 
void terminal_setcolor(uint8_t color) 
{
	terminal_color = color;
}
 
uint16_t terminal_getrawentryat(size_t x, size_t y) {
	return terminal_buffer[y * VGA_WIDTH + x];
}

void terminal_putrawentryat(uint16_t entry, size_t x, size_t y) {
	terminal_buffer[y * VGA_WIDTH + x] = entry;
}

void terminal_putentryat(char c, uint8_t color, size_t x, size_t y) 
{
	terminal_putrawentryat(vga_entry(c, color), x, y);
}
 
void terminal_putchar(char c) 
{
	if (terminal_column >= VGA_WIDTH) {
		++terminal_row;
		terminal_column = 0;
	}

	if (terminal_row >= VGA_HEIGHT) {
		for (size_t i = 0; i < VGA_WIDTH; ++i) {
			for (size_t j = 0; j < VGA_HEIGHT - 1; ++j) {
				terminal_putrawentryat(terminal_getrawentryat(i, j + 1), i, j);
			}
		}
		for (size_t i = 0; i < VGA_WIDTH; ++i) {
			terminal_putentryat(' ', terminal_color, i, VGA_HEIGHT - 1);
		}
		terminal_row = VGA_HEIGHT - 1;
	}

	if (c == '\n') {
		++terminal_row;
		terminal_column = 0;
	} else {
		terminal_putentryat(c, terminal_color, terminal_column, terminal_row);
		++terminal_column;
	}
}
 
void terminal_write(const char* data, size_t size) 
{
	for (size_t i = 0; i < size; i++)
		terminal_putchar(data[i]);
}
 
void terminal_writestring(const char* data) 
{
	terminal_write(data, strlen(data));
}
 
void kernel_main(void) 
{
	/* Initialize terminal interface */
	terminal_initialize();
 
	/* Newline support is left as an exercise. */
	terminal_writestring("Hello, kernel World!\n");
	terminal_writestring("Newlines are working as expected.\n");
	terminal_writestring("This is a very very very very very very very very very very very very very very very very very very very very long line!\n");
	terminal_writestring("********************************************************************************");
	terminal_writestring("Hello again, kernel World!\n");
	terminal_writestring("********************************************************************************\n");
	terminal_writestring("Hello again, kernel World!\n");
	terminal_writestring("This is line 1.\n");
	terminal_writestring("This is line 2.\n");
	terminal_writestring("This is line 3.\n");
	terminal_writestring("This is line 4.\n");
	terminal_writestring("This is line 5.\n");
	terminal_writestring("This is line 6.\n");
	terminal_writestring("This is line 7.\n");
	terminal_writestring("This is line 8.\n");
	terminal_writestring("This is line 9.\n");
	terminal_writestring("This is line 10.\n");
	terminal_writestring("This is line 11.\n");
	terminal_writestring("This is line 12.\n");
	terminal_writestring("This is line 13.\n");
	terminal_writestring("This is line 14.\n");
	terminal_writestring("This is line 15.\n");
	terminal_writestring("This is line 16.\n");
	terminal_writestring("Scrolling is working as expected.\n");
	terminal_writestring("But is it?\n");
	terminal_writestring("Yes, it is!\n");
	terminal_writestring("********************************************************************************");
	terminal_writestring("Hello yet once again, kernel World!\n");
	terminal_writestring("********************************************************************************\n");
	terminal_writestring("Hello yet once again, kernel World!\n");

	terminal_setcolor(vga_entry_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK));
	terminal_writestring("SUCCESS!!!");
}
