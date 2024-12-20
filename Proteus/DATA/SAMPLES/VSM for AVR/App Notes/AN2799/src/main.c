/*
 * Petitfs Example code
 *
 * Created: 02-Jun-16 9:18:01 AM
 * Author : elizabeth.roy
 */

#include "config/clock_config.h"
#include <avr/io.h>
#include "petitfs/pff.h"
#include "petitfs/diskio.h"

#define EXAMPLE_FILENAME "EXAMPLE.TXT"  //"example.txt"

#define MINI_BOARD false

/* LED0 = PB4 */
#define LEDPORT PORTB
#if MINI_BOARD == true
#define LED0PIN (1 << 7)
#else
#define LED0PIN (1 << 4)
#endif
#define LED_OFF() (LEDPORT.OUTSET = LED0PIN)
#define LED_ON() (LEDPORT.OUTCLR = LED0PIN)
#define LED_IS_ON() !(LEDPORT.OUT & LED0PIN)

// Add LED_OK 
#define LED_OK_PIN (1 << 0)
#define LED_OK_OFF() (LEDPORT.OUTSET = LED_OK_PIN)
#define LED_OK_ON() (LEDPORT.OUTCLR = LED_OK_PIN)

#define BUFFER_SIZE 10

FATFS file_system;

uint8_t write_buffer[BUFFER_SIZE] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
uint8_t read_buffer[BUFFER_SIZE]  = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
UINT    byte_counter              = 0;

void init_sd_card(void);

int main(void)
{
	/* Set clock to known value, e.g. 5MHz */
	_PROTECTED_WRITE(CLKCTRL_MCLKCTRLB, (CLKCTRL_PEN_bm | CLKCTRL_PDIV_4X_gc));

    LED_OFF();
    LED_OK_OFF();
    PORTB.DIR = LED0PIN | LED_OK_PIN;
    
	/* Initialize card */
	init_sd_card();

	/* Set file pointer to beginning of file */
	pf_lseek(0);

	/* Write buffer */
	pf_write(write_buffer, BUFFER_SIZE, &byte_counter);
	if (byte_counter < BUFFER_SIZE) {
		/* End of file */
	}

	/* Finalize write */
	pf_write(0, 0, &byte_counter);

	/* Reset file pointer to beginning of file */
	pf_lseek(0);

	/* Read back the same bytes */
	pf_read(read_buffer, BUFFER_SIZE, &byte_counter);

	/* Check they're the same */
	while (byte_counter) {
		byte_counter--;
		if (write_buffer[byte_counter] != read_buffer[byte_counter]) {
			/* ERROR! */
			LED_ON();
			while (1)
				;
		}
	}
	/* SUCCESS! */
    LED_OK_ON();
	while (1)
		;
}

void init_sd_card(void)
{
	DSTATUS status;
	FRESULT result;

	/* Initialize physical drive */
	do {
		status = disk_initialize();
		if (status != 0) {
			LED_ON();
		} else {
			LED_OFF();
			/* Set SPI clock faster after initialization */
			SPI0.CTRLA = (SPI_MASTER_bm | SPI_CLK2X_bm | SPI_PRESC_DIV4_gc | SPI_ENABLE_bm);
		}
		/* The application will continue to try and initialize the card.
		 * If the LED is on, try taking out the SD card and putting
		 * it back in again.  After an operation has been interrupted this is
		 * sometimes necessary.
		 */
	} while (LED_IS_ON());

	/* Mount volume */
	result = pf_mount(&file_system);
	if (result != FR_OK)
		LED_ON();

	/* Open file */
	result = pf_open(EXAMPLE_FILENAME);
	if (result != FR_OK)
		LED_ON();
}
