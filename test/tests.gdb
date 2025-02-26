# Test file for Lab3_bitManipulation


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

# Example test:
#test "PINA: 0x00, PINB: 0x00 => PORTC: 0"
# Set inputs
#setPINA 0x00
#setPINB 0x00
# Continue for several ticks
#continue 2
# Set expect values
#expectPORTC 0
# Check pass/fail
#checkResult

# Add tests below

test "PINA[7:0]: 0xA7, PORTB[7:0]:0x0A, PORTC[7:0]: 0x70"
setPINA 0xA7
continue 2
expectPORTB 0x0A
expectPORTC 0x70
checkResult

test "PINA[7:0]: 0xD6, PORTB[7:0]:0x0D, PORTC[7:0]: 0x60"
setPINA 0xD6
continue 2
expectPORTB 0x0D
expectPORTC 0x60
checkResult

test "PINA[7:0]: 0x11, PORTB[7:0]:0x01, PORTC[6:0]: 0x10"
setPINA 0x11
continue 2
expectPORTB 0x01
expectPORTC 0x10
checkResult

test "PINA[7:0]: 0x00, PORTB[7:0]:0x00, PORTC[6:0]: 0x00"
setPINA 0x00
continue 2
expectPORTB 0x00
expectPORTC 0x00
checkResult

test "PINA[7:0]: 0x54, PORTB[7:0]:0x05, PORTC[6:0]: 0x40"
setPINA 0x54
continue 2
expectPORTB 0x05
expectPORTC 0x40
checkResult

test "PINA[7:0]: 0xAA, PORTB[7:0]:0x0A, PORTC[6:0]: 0xA0"
setPINA 0xAA
continue 2
expectPORTB 0x0A
expectPORTC 0xA0
checkResult

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
