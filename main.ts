
/**
* Displayable digits for the 8 segment + decimal point VDMO10A0 display.
* 0 to 9 and the decimal point
*/
enum DisplayableSymbols {
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

  function i2cSendDataByte(data: number) {
    [IO_Expander.PCF8574AT, IO_Expander.PCF8574N].forEach(i2cAddr =>
      pins.i2cWriteNumber(
        i2cAddr,
        data,
        NumberFormat.Int8LE,
        false
      )
    )
  }


  /**
  * Sequentially display all the digits of the number onto the VDMO10A0 display.
  * Clears the display at the end.
  * Works with floating point values.
  * @param digit from the Digit enum
  * @param perDigitWaitTimeMS between each digit; ideally >250ms
  */
  //% block="show a single digit &digit"
  //% digit.defl=0
  //% blockId=solderbit_segment_show_digit
  //% weight=100
  export function showDigit(digit: number): void {
    if (digit < 0 || digit > 9) {
      throw "solderbit_segment.showDigit: digit must be between 0 and 9 inclusive. Use showNumber for longer values."
    } else
      i2cSendDataByte(digit)
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
  //% weight=99
  export function showNumber(num: number, perDigitWaitTimeMS: number = 1000): void {
    const numAsString: string = num.toString();
    for (let i = 0; i < numAsString.length; i++) {
      i2cSendDataByte(+digitLookup(numAsString[i]))

      // Don't do the 'turn display off briefly effect' if perDigitWaitTimeMS is too low
      const offFlashTimeMS = 250;
      if (perDigitWaitTimeMS <= offFlashTimeMS) {
        basic.pause(perDigitWaitTimeMS)
      } else { // Turn the display off for offFlashTimeMS
        basic.pause(Math.max(perDigitWaitTimeMS - offFlashTimeMS, offFlashTimeMS))

        if (i != numAsString.length - 1) {
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
    i2cSendDataByte(0xFF);
  }
}
