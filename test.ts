/*
 * Three basic tests for:
 *      clearing the display
 *      showing larger numbers (integer and floating points)
 * The tests display "T1S" (Test 1 start) on the uBit display
 * and then mirror the segment display output on the uBit matrix for verification.
 * At the end "T1E" (Test 1 end) is displayed.
 * 
 * ENSURE SOLDERBIT_SEGMENT_IO_EXPANDER is set appropriately.
 */
namespace __solderbit_segment_tests {
  /**
   * MAKE SURE TO SET THIS TO YOUR CORRECT IO_Expander
   */
  const SOLDERBIT_SEGMENT_IO_EXPANDER: IO_Expander = IO_Expander.PCF8574N;

  /**
   * Test the clear function
   */
  function test1() {
    basic.showString("T1S")
    basic.showNumber(3)
    solderbit_segment.showNumber(3)
    basic.pause(1000);

    basic.clearScreen()
    solderbit_segment.clear()
    basic.pause(1000);

    solderbit_segment.clear()
    solderbit_segment.clear()

    basic.showNumber(4)
    solderbit_segment.showNumber(4)

    basic.clearScreen()
    solderbit_segment.clear()
    basic.pause(1000);
    basic.showString("T1E")
  }


  /**
   * Test the show_number function
   */
  function test2() {
    basic.showString("T2S")

    basic.showNumber(1)
    solderbit_segment.showNumber(1)
    basic.pause(1000);

    basic.showNumber(9)
    solderbit_segment.showNumber(9)
    basic.pause(1000);

    basic.showNumber(587)
    solderbit_segment.showNumber(587)
    basic.pause(1000);

    basic.showNumber(12)
    solderbit_segment.showNumber(12)
    basic.pause(1000);

    basic.showNumber(1.2)
    solderbit_segment.showNumber(1.2)
    basic.pause(1000);

    basic.showNumber(3.14)
    solderbit_segment.showNumber(3.14)
    basic.pause(1000);

    basic.showNumber(1234567890)
    solderbit_segment.showNumber(1234567890)
    basic.pause(1000);

    basic.showString("T2E")
  }

  solderbit_segment.init(SOLDERBIT_SEGMENT_IO_EXPANDER)
  const tests = [test1, test2]
  tests.forEach(test => test())
}
