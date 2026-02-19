
/**
* Displayable digits for the 8 segment + decimal point VDMO10A0 display.
* 0 to 9 and the decimal point
*/
enum Digit {
  Zero = 0xC0,        // 0: A B C D E F on, G off
  //% block="one"
  One = 0xF9,         // 1: B C on
  //% block="two"
  Two = 0xA4,         // 2: A B D E G on
  //% block="three"
  Three = 0xB0,       // 3: A B C D G on
  //% block="four"
  Four = 0x99,        // 4: B C F G on
  //% block="five"
  Five = 0x92,        // 5: A C D F G on
  //% block="six"
  Six = 0x82,         // 6: A C D E F G on
  //% block="seven"
  Seven = 0xF8,       // 7: A B C on
  //% block="eight"
  Eight = 0x80,       // 8: all segments on (except D.P)
  //% block="nine"
  Nine = 0x90,        // 9: A B C D F G onxq
  //% block="decimal point"
  Point = 0x7F        // .: A B C D E F G off, D.P. on
}

/**
* Which IO Expander is soldered down?
* The SO-16 PCF8574AT (has I2C address 0x20) or the DIP-16 PCF8574N (has I2C address 0x18)?
* You must invoke solderbit_segment.setup(IO_Expander) with your config to use this extension.
* Otherwise you will get an error since IO_Expander.NONE will is used by default.
*/
enum IO_Expander {
  //% block="NONE"
  NONE,
  //% block="PCF8574AT"
  PCF8574AT = 0x38,
  //% block="PCF8574N"
  PCF8574N = 0x20
}

/**
 * solder:bit segment
 */
//% block="solder:bit Segment" weight=100 color=#000000 icon="\uf10b"
namespace solderbit_segment {
  let selectedI2CAddr: IO_Expander = IO_Expander.NONE;

  /**
   * You must invoke this before using show or clear.
   * Which IO_Expander are you using?
   * This is important because they have different i2c addresses.
   * @param ioExpander component from the IO_Expander enum
   */
  //% block="initialise Solderbit Segment with $ioExpander IO expander"
  //% blockId=solderbit_segment_init
  //% weight=100
  export function init(ioExpander: IO_Expander): void {
    selectedI2CAddr = ioExpander;
    // Set all 8 pins of the IO Expander to output.
    // This isn't strictly necessary in our case.
    pins.i2cWriteNumber(
      selectedI2CAddr,
      0b00000000,
      NumberFormat.Int8LE,
      false
    )
    clear();
  }

  /*
   * Internal lookup function to convert a single digit into the Digit enum.
   * Unfortunately this switch is the best way to do this on account of STS enum constraints.
   * Used by show_number
   * @throws error if single_digit_num is not a single digit.
   */
  function digitLookup(single_digit_num: string): Digit {
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
  * Sequentially display all the digits of the number onto the VDMO10A0 display.
  * Clears the display at the end.
  * Works with floating point values.
  * @param digit from the Digit enum
  * @param perDigitWaitTimeMS between each digit; ideally >250ms
  */
  //% block="show $num waiting %perDigitWaitTimeMS ms between each digit"
  //% perDigitWaitTimeMS.defl=1000
  //% blockId=solderbit_segment_show_number
  //% weight=98
  export function showNumber(num: number, perDigitWaitTimeMS: number = 1000): void {
    if (selectedI2CAddr == IO_Expander.NONE) {
      throw "solderbit_segment: You haven't selected an IO_Expander and ensure it is not NONE. Please invoke solderbit_segment.init(IO_Expander)."
    } else {
      const numAsString: string = num.toString();
      for (let i = 0; i < numAsString.length; i++) {
        pins.i2cWriteNumber(
          selectedI2CAddr,
          +digitLookup(numAsString[i]),
          NumberFormat.Int8LE,
          false
        )

        // Don't do the 'turn display off briefly effect' if perDigitWaitTimeMS is too low
        const offFlashTimeMS = 250;
        if (perDigitWaitTimeMS <= offFlashTimeMS) {
          basic.pause(perDigitWaitTimeMS)
        } else { // Turn the display off for offFlashTimeMS
          basic.pause(Math.max(perDigitWaitTimeMS - offFlashTimeMS, offFlashTimeMS))
          clear();
          basic.pause(offFlashTimeMS)
        }
      }
    }
    clear();
  }

  /**
   * Turn all LEDs off on the VDMO10A0 display
   */
  //% block="Clear display"
  //% blockId=solderbit_segment_clear
  //% weight=97
  export function clear(): void {
    if (selectedI2CAddr == IO_Expander.NONE) {
      throw "solderbit_segment: You haven't selected an IO_Expander and ensure it is not NONE. Please invoke solderbit_segment.init(IO_Expander)."
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
