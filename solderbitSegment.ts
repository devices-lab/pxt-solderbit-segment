
/**
* Displayable digits for the 8 segment + decimal point ADMO10A0 display.
* 0 to 9 and the decimal point
*/
enum Digit {
    //% block="zero"
    Zero = 0xC0,        // 0: A B C D E F on, G off
    //% block="one"
    One = 0xF9,         // 1: B C on
    //% block="two"
    Two = 0xA4,         // 2: A B D E G on
    //% block="three"
    Three = 0xB0,       // 3: A B C D G on
    //% block="four"
    Four = 0x99,        // 4: B C F G on
    //% block="give"
    Five = 0x92,        // 5: A C D F G on
    //% block="six"
    Six = 0x82,         // 6: A C D E F G on
    //% block="seven"
    Seven = 0xF8,       // 7: A B C on
    //% block="eight"
    Eight = 0x80,       // 8: all segments on (except D.P)
    //% block="nine"
    Nine = 0x90,        // 9: A B C D F G on
    //% block="decimal point"
    Point = 0x7F        // .: A B C D E F G off, D.P. on
}

/**
* Which IO Expander is soldered down?
* The SO-16 PCF8754AT (has I2C address 0x20) or the DIP-16 PCF8754N (has I2C address 0x18)?
* You must invoke solderbit_segment.setup(IO_Expander) with your config to use this extension.
* Otherwise you will get an error since IO_Expander.NONE will is used by default.
*/
//% block="solderbit_segment IO_Expander"
//% blockId=solderbit_segment_io_expander
//% weight=96
enum IO_Expander {
    //% block="NONE"
    NONE,
    //% block="PCF8754AT"
    PCF8754AT = 0x20,
    //% block="PCF8754N"
    PCF8754N = 0x18,
}

/**
 * Custom blocks
 */
//% block="Solderbit Segment"
//% color=#0fbc11 icon=""
namespace solderbit_segment {
    let selectedI2CAddr: IO_Expander = IO_Expander.NONE;

    /**
     * You must invoke this before using show or clear.
     * Which IO_Expander are you using?
     * This is important because they have different i2c addresses.
     * @param io_expander component from the IO_Expander enum
     * @param interrptPin is active high, last pin on the Solderbit Segment header.
     */
    //% block="Initialise device for $ioExpander and $interruptPin"
    //% blockId=solderbit_segment_init
    //% weight=100
    export function init(ioExpander: IO_Expander, interrptPin: PwmPin): void {
        selectedI2CAddr = ioExpander;
        interrptPin.digitalWrite(true)
    }

    /**
     * Display a digit on the ADMO10A0 display
     * @param digit from the Digit enum
     */
    //% block="Show $digit"
    //% blockId=solderbit_segment_show_digit
    //% weight=99
    export function show_digit(digit: Digit): void {
        if (selectedI2CAddr == IO_Expander.NONE) {
            throw "solderbit_segment: You haven't selected an IO_Expander. Please invoke solderbit_segment.init(IO_Expander)."
        } else {
            pins.i2cWriteNumber(
                selectedI2CAddr,
                +digit,
                NumberFormat.Int8LE,
                false
            )
            basic.pause(0)
        }
    }

    /**
     * Internal lookup function to convert a single digit into the Digit enum.
     * Unfortunately this switch is the best way to do this on account of STS enum constraints.
     * Used by show_number
     * @throws error if single_digit_num is not a single digit.
     */
    function digit_lookup(single_digit_num: string): Digit {
        switch (single_digit_num) {
            case "0": return Digit.Zero;
            case "1": return Digit.One;
            case "2": return Digit.Two;
            case "3": return Digit.Three;
            case "4": return Digit.Four;
            case "5": return Digit.Five;
            case "6": return Digit.Six;
            case "7": return Digit.Seven;
            case "8": return Digit.Eight;
            case "9": return Digit.Nine;
            case ".": return Digit.Point;
            default: throw "solderbit_segment internal fn digit_lookup: error parsing single digit " + single_digit_num
        }
    }

    /**
     * Sequentially display all the digits of the number onto the ADMO10A0 display.
     * 
     * Works with floating point values.
     * @param digit from the Digit enum
     */
    //% block="Show $num with %perDigitWaitTimeMS"
    //% blockId=solderbit_segment_show_number
    //% weight=98
    export function show_number(num: number, perDigitWaitTimeMS: number=1000): void {
        if (selectedI2CAddr == IO_Expander.NONE) {
            throw "solderbit_segment: You haven't selected an IO_Expander. Please invoke solderbit_segment.init(IO_Expander)."
        } else {
            const numAsString: string = num.toString();
            for (let i = 0; i < numAsString.length; i++) {
                pins.i2cWriteNumber(
                    selectedI2CAddr,
                    +digit_lookup(numAsString[i]),
                    NumberFormat.Int8LE,
                    false
                )
                basic.pause(perDigitWaitTimeMS)
            }
        }
    }

    /**
     * Turn all LEDs off on the ADMO10A0 display
     */
    //% block="Clear display"
    //% blockId=solderbit_segment_clear
    //% weight=97
    export function clear(): void {
        if (selectedI2CAddr == IO_Expander.NONE) {
            throw "solderbit_segment: You haven't selected an IO_Expander. Please invoke solderbit_segment.init(IO_Expander)."
        } else {
            pins.i2cWriteNumber(
                selectedI2CAddr,
                0xFF,                   // 0xFF to clear all.
                NumberFormat.Int8LE,
                false
            )
            basic.pause(0)
        }
    }
}
