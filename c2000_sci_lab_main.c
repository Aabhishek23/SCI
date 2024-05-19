

#include "driverlib.h"
#include "device.h"
#include "board.h"


//
// Globals
/*
    char* msg;                // Message sent through terminal window
    char receivedChar;        // Variable used to track input from the terminal window
    uint16_t rxStatus = 0U;   // Variable used to store the status of the SCI RX Register

// Function Prototypes
//
 *
 */

__interrupt void INT_myCPUTIMER0_ISR(void);

//
// Main
//
void main(void)
{

    //
    // CPU Initialization
    //

    Device_init();
    Interrupt_initModule();
    Interrupt_initVectorTable();

    //
    // Configure GPIO pins
    //
    Device_initGPIO();

    //
    // Initialize the SCI and Timer Modules
    //
    Board_init();

    //
    // Enable global interrupts and real-time debug
    //
    EINT;
    ERTM;

    //
    // Start CPU Timer 0
    //
    CPUTimer_startTimer(myCPUTIMER0_BASE);

    //
    // Define local variables
    //

    //
    // Send starting message.
    //


/*
    msg = "\r\n\n\nHello World! Enter a number 0-9 to change the LED blink rate.\0";
    SCI_writeCharArray(mySCIA_BASE, (uint16_t*)msg, 65);
*/
    for(;;)
        {

        /**


            msg = "\r\nEnter a number 0-9: \0";
            SCI_writeCharArray(mySCIA_BASE, (uint16_t*)msg, 24);

            //
            // Read a character from the FIFO.
            //
            receivedChar = SCI_readCharBlockingFIFO(mySCIA_BASE);



            rxStatus = SCI_getRxStatus(mySCIA_BASE);
            if((rxStatus & SCI_RXSTATUS_ERROR) != 0)
            {
                //
                //If Execution stops here there is some error
                //Analyze SCI_getRxStatus() API return value
                //
                ESTOP0;
            }


            //
            // Echo back the character.
            //
            msg = "\r\nLED set to blink rate \0";
            SCI_writeCharArray(mySCIA_BASE, (uint16_t*)msg, 25);
            SCI_writeCharBlockingNonFIFO(mySCIA_BASE, receivedChar);



**/

       // SCI_writeCharArray(mySCIA_BASE, (uint16_t*)msg, 65);


        }
}

//
// ISR for CPUTIMER0 to change LED blink rate based on input to delayCount
//
__interrupt void INT_myCPUTIMER0_ISR(void)
{


        GPIO_togglePin(myBoardLED0_GPIO);

    //    SCI_writeCharArray(mySCIA_BASE, (uint16_t*)msg, 65);

    //
    // Acknowledge this interrupt to receive more interrupts from group 1
    //
    Interrupt_clearACKGroup(INT_myCPUTIMER0_INTERRUPT_ACK_GROUP);
}

//
// End of File
//
