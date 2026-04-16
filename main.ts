/**
 * solder:bit segment
 */
//% block="solder:bit Segment" weight=100 color=#000000 icon="\uf10b"
namespace solderbit_segment {
    const PCF8574AT_I2C_ADDR: number = 0x38;
    const PCF8574N_I2C_ADDR: number = 0x20;

    const NXP_74HC595_DATA_PIN: DigitalPin = DigitalPin.P0;
    const NXP_74HC595_CLOCK_PIN: DigitalPin = DigitalPin.P1;
    const NXP_74HC595_LATCH_PIN: DigitalPin = DigitalPin.P2;
    
    const i2cBasedSymbolToPinsMap: {[id: string]: {bitsForSymbol: number}} = {
        ["0"] : {bitsForSymbol: 0xC0},
        ["1"] : {bitsForSymbol: 0xF9},
        ["2"] : {bitsForSymbol: 0xA4},
        ["3"] : {bitsForSymbol: 0xB0},
        ["4"] : {bitsForSymbol: 0x99},
        ["5"] : {bitsForSymbol: 0x92},
        ["6"] : {bitsForSymbol: 0x82},
        ["7"] : {bitsForSymbol: 0xF8},
        ["8"] : {bitsForSymbol: 0x80},
        ["9"] : {bitsForSymbol: 0x90},
        ["-"] : {bitsForSymbol: 0xBF},
        ["."] : {bitsForSymbol: 0x7F},
        [""] :  {bitsForSymbol: 0xFF}
    };

    const shiftBasedSymbolToPinsMap: {[id: string]: {bitsForSymbol: number}} = {
        ["0"] : {bitsForSymbol: 0b11111100},
        ["1"] : {bitsForSymbol: 0b01100000},
        ["2"] : {bitsForSymbol: 0b11011010},
        ["3"] : {bitsForSymbol: 0b11110010},
        ["4"] : {bitsForSymbol: 0b01100110},
        ["5"] : {bitsForSymbol: 0b10110110},
        ["6"] : {bitsForSymbol: 0b10111110},
        ["7"] : {bitsForSymbol: 0b11100000},
        ["8"] : {bitsForSymbol: 0b11111110},
        ["9"] : {bitsForSymbol: 0b11110110},
        ["-"] : {bitsForSymbol: 0b00000010},
        ["."] : {bitsForSymbol: 0b00000001},
        [""] :  {bitsForSymbol: 0b00000000}
    };

    function sendSymbol(symbolToLookup: string) {
        // I2C:
        [PCF8574AT_I2C_ADDR, PCF8574N_I2C_ADDR].forEach(i2cAddr =>
            pins.i2cWriteNumber(
                i2cAddr,
                i2cBasedSymbolToPinsMap[symbolToLookup].bitsForSymbol,
                NumberFormat.Int8LE,
                false
            )
        )

        // Shift register:
        const bits: number = shiftBasedSymbolToPinsMap[symbolToLookup].bitsForSymbol;
        pins.digitalWritePin(NXP_74HC595_LATCH_PIN, 0)
        for (let i = 0; i < 8; i++) {
            pins.digitalWritePin(NXP_74HC595_DATA_PIN, (bits & (1 << i)))
            pins.digitalWritePin(NXP_74HC595_CLOCK_PIN, 1)
            pins.digitalWritePin(NXP_74HC595_CLOCK_PIN, 0)
        }
        pins.digitalWritePin(NXP_74HC595_LATCH_PIN, 1)
    };

    /**
     * Sequentially display all the digits of the number onto the VDMO10A0 display.
    * Clears the display at the end.
    * Works with floating point values.
    * @param digit from the Digit enum
    * @param perDigitWaitTimeMS between each digit; ideally >250ms
    */
    //% block="show a single digit $digit"
    //% digit.defl=0
    //% blockId=solderbit_segment_show_digit
    //% weight=100
    export function showDigit(digit: number): void {
        if (digit < 0 || digit > 9) {
            throw "solderbit_segment.showDigit: digit must be between 0 and 9 inclusive. Use showNumber for longer values."
        } else {
            sendSymbol(""+digit)
        }
    }


    /**
     * Sequentially display all the digits of the number onto the VDMO10A0 display.
    * @param num can be integer or floating point, with many digits
    * @param perDigitWaitTimeMS between each digit; ideally >250ms
    */
    //% block="show multi-digit number $num"
    //% num.defl=0.0
    //% blockId=solderbit_segment_show_number
    //% weight=99
    export function showNumber(num: number, perDigitWaitTimeMS?: number): void {
        perDigitWaitTimeMS = perDigitWaitTimeMS || 1000;
        const numAsString: string = num.toString();
        for (let i = 0; i < numAsString.length; i++) {
            sendSymbol(numAsString[i])
            // Don't do the 'turn display off briefly effect' if perDigitWaitTimeMS is too low
            const offFlashTimeMS = 250;
            if (perDigitWaitTimeMS <= offFlashTimeMS) {
                basic.pause(perDigitWaitTimeMS)
            } else { // Turn the display off for offFlashTimeMS
                basic.pause(perDigitWaitTimeMS - offFlashTimeMS)

                if (i == numAsString.length - 1) {
                    clear();
                }
                basic.pause(offFlashTimeMS)
            }
        }
    }

    /**
     * Turn all LEDs off on the VDMO10A0 display
     */
    //% block="clear display"
    //% blockId=solderbit_segment_clear
    //% weight=98
    export function clear(): void {
        sendSymbol("");
    }
}
