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

test "PINA[3:0]: 0x01, PORTC[6:0]: 0x60"
setPINA 0x01
continue 2
expectPORTC 0x60
checkResult

test "PINA[3:0]: 0x03, PORTC[6:0]: 0x70"
setPINA 0x03
continue 2
expectPORTC 0x70
checkResult

test "PINA[3:0]: 0x05, PORTC[6:0]: 0x38"
setPINA 0x05
continue 2
expectPORTC 0x38
checkResult

test "PINA[3:0]: 0x08, PORTC[6:0]: 0x3C"
setPINA 0x08
continue 2
expectPORTC 0x3C
checkResult

test "PINA[3:0]: 0x0B, PORTC[6:0]: 0x3E"
setPINA 0x0B
continue 2
expectPORTC 0x3E
checkResult

test "PINA[3:0]: 0x0F, PORTC[6:0]: 0x3F"
setPINA 0x0F
continue 2
expectPORTC 0x3F
checkResult

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
