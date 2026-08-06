([printf]):use`..printf;
.t.e:{if[0;-2 "t)",x];$[1b~value x;;'x]}

/ Integers
t)"42\n"~printf("%d\n"; 42)                        // simple integer
t)"   42\n"~printf("%5d\n"; 42)                    // width > length
t)"00042\n"~printf("%05d\n"; 42)                   // zero-padding
t)"42   \n"~printf("%-5d\n"; 42)                   // left-align
t)"  +42\n"~printf("%+5d\n"; 42)                   // plus sign
t)"   42\n"~printf("% 5d\n"; 42)                   // space sign

/ Floats
t)"3.141590\n"~printf("%f\n"; 3.14159)             // simple float
t)"    3.14\n"~printf("%8.2f\n"; 3.14159)          // width and precision
t)"00003.14\n"~printf("%08.2f\n"; 3.14159)         // zero-padding with float
t)"3.14    \n"~printf("%-8.2f\n"; 3.14159)         // left-align float
t)"   +3.14\n"~printf("%+8.2f\n"; 3.14159)         // plus sign with float

/ Hex / Octal
t)"ff\n"~printf("%x\n"; 255)                       // hex lowercase
t)"FF\n"~printf("%X\n"; 255)                       // hex uppercase
t)"   ff\n"~printf("%5x\n"; 255)                   // width with hex
t)"000ff\n"~printf("%05x\n"; 255)                  // zero-padding hex
t)"   FF\n"~printf("%5X\n"; 255)                   // width with hex
t)"000FF\n"~printf("%05X\n"; 255)                  // zero-padding hex
t)"377\n"~printf("%o\n"; 255)                      // octal
t)"  377\n"~printf("%5o\n"; 255)                   // width octal
t)"00377\n"~printf("%05o\n"; 255)                  // zero-padding octal

/ Strings / repr
t)"hello world\n"~printf("%s\n"; "hello world")    // string
t)"      hi\n"~printf("%8s\n"; "hi")               // string width
t)"hi      \n"~printf("%-8s\n"; "hi")              // left-align string
t)"3\n"~printf("%r\n"; 1+2)                        // repr

/ Literal percent
t)"%\n"~printf("%%\n")                             // prints %

/ Thousands grouping
t)"1,000\n"~printf("%'d\n"; 1000)                  // grouped integer
t)"1,234,567\n"~printf("%'d\n"; 1234567)           // multiple groups
t)"123\n"~printf("%'d\n"; 123)                     // shorter than a group
t)"-1,234,567\n"~printf("%'d\n"; -1234567)         // separator after sign
t)"-123\n"~printf("%'d\n"; -123)                   // sign is not a digit
t)"-123,456\n"~printf("%'d\n"; -123456)            // sign at a group boundary
t)"      1,234,567\n"~printf("%'15d\n"; 1234567)   // separators count toward width
t)"0000001,234,567\n"~printf("%'015d\n"; 1234567)  // pad zeros are not grouped
t)"1,234,567      \n"~printf("%'-15d\n"; 1234567)  // left-align
t)"+000001,234,567\n"~printf("%'+015d\n"; 1234567) // sign outside zero fill
t)"+123,456\n"~printf("%'+d\n"; 123456)            // plus at a group boundary
t)"0001,234,567\n"~printf("%'012d\n"; 1234567)     // narrower zero pad
t)"1,234,567.89\n"~printf("%'.2f\n"; 1234567.891)  // integer part only
t)"1,234,567.891000\n"~printf("%'f\n"; 1234567.891) // fraction never grouped
t)"0001,234,567.89\n"~printf("%'015.2f\n"; 1234567.891) // grouped float, zero padded
t)"1,234.50\n"~printf("%'8.2f\n"; 1234.5)          // width tighter than result

/ ' is ignored where there is no base 10 integer part to group
t)(printf("%x\n"; 255))~printf("%'x\n"; 255)       // not base 10
t)(printf("%X\n"; 255))~printf("%'X\n"; 255)       // not base 10
t)(printf("%o\n"; 255))~printf("%'o\n"; 255)       // not base 10
t)(printf("%s\n"; "hi"))~printf("%'s\n"; "hi")     // not numeric
t)(printf("%r\n"; 1+2))~printf("%'r\n"; 1+2)       // not numeric

exit 0;
