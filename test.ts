/*
 * Three basic tests for:
 *      showing a digit
 *      clearing the display
 *      showing larger numbers (integer and floating points)
 * The tests display "T1S" (Test 1 start) on the uBit display
 * and then mirror the segment display output on the uBit matrix for verification.
 * At the end "T1E" (Test 1 end) is displayed.
 */
namespace __solderbit_segment_tests {
  const __RUN_SOLDERBIT_SEGMENT_TESTS__: boolean = false;

  /**
   * Test the show_digit function
   */
  function test1() {
    basic.showString("T1S")
    const digits: Digit[] = [
      Digit.Zero, Digit.One,
      Digit.Two, Digit.Three,
      Digit.Four, Digit.Five,
      Digit.Six, Digit.Seven,
      Digit.Eight, Digit.Nine,
      Digit.Point
    ]

    digits.forEach((digit, i) => {
      basic.showString(digit != Digit.Point ? "" + i : ".")
      solderbit_segment.show_digit(digit)
      basic.pause(1000);
    })
    basic.showString("T1E")
  }


  /**
   * Test the clear function
   */
  function test2() {
    basic.showString("T2S")
    basic.showNumber(3)
    solderbit_segment.show_digit(Digit.Three)
    basic.pause(1000);

    basic.clearScreen()
    solderbit_segment.clear()
    basic.pause(1000);

    solderbit_segment.clear()
    solderbit_segment.clear()

    basic.showNumber(4)
    solderbit_segment.show_digit(Digit.Three)

    basic.clearScreen()
    solderbit_segment.clear()
    basic.pause(1000);
    basic.showString("T2E")
  }


  /**
   * Test the show_number function
   */
  function test3() {
    basic.showString("T3S")

    basic.showNumber(1)
    solderbit_segment.show_number(1)
    basic.pause(1000);

    basic.showNumber(9)
    solderbit_segment.show_number(9)
    basic.pause(1000);

    basic.showNumber(587)
    solderbit_segment.show_number(587)
    basic.pause(1000);

    basic.showNumber(12)
    solderbit_segment.show_number(12)
    basic.pause(1000);

    basic.showNumber(1.2)
    solderbit_segment.show_number(1.2)
    basic.pause(1000);

    basic.showNumber(3.14)
    solderbit_segment.show_number(3.14)
    basic.pause(1000);

    basic.showNumber(1234567890)
    solderbit_segment.show_number(1234567890)
    basic.pause(1000);

    basic.showString("T3E")
  }

  if (__RUN_SOLDERBIT_SEGMENT_TESTS__) {
    solderbit_segment.init(IO_Expander.PCF8754AT, pins.P0)
    const tests = [test1, test2, test3]
    tests.forEach(test => test())
  }
}
