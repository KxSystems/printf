([printf]):use`..printf;
/ Integers
1 printf("%d\n"; 42);                  / simple integer
1 printf("%5d\n"; 42);                 / width > length
1 printf("%05d\n"; 42);                / zero-padding
1 printf("%-5d\n"; 42);                / left-align
1 printf("%+5d\n"; 42);                / plus sign
1 printf("% 5d\n"; 42);                / space sign

/ Floats
1 printf("%f\n"; 3.14159);              / simple float
1 printf("%8.2f\n"; 3.14159);           / width and precision
1 printf("%08.2f\n"; 3.14159);          / zero-padding with float
1 printf("%-8.2f\n"; 3.14159);          / left-align float
1 printf("%+8.2f\n"; 3.14159);          / plus sign with float

/ Hex / Octal
1 printf("%x\n"; 255);                  / hex lowercase
1 printf("%X\n"; 255);                  / hex uppercase
1 printf("%5x\n"; 255);                 / width with hex
1 printf("%05x\n"; 255);                / zero-padding hex
1 printf("%5X\n"; 255);                 / width with hex
1 printf("%05X\n"; 255);                / zero-padding hex
1 printf("%o\n"; 255);                  / octal
1 printf("%5o\n"; 255);                 / width octal
1 printf("%05o\n"; 255);                / zero-padding octal

/ Strings / repr
1 printf("%s\n"; "hello world");        / string
1 printf("%8s\n"; "hi");                / string width
1 printf("%-8s\n"; "hi");               / left-align string
1 printf("%r\n"; 1+2);                  / repr

/ Literal percent
1 printf("%%\n");                        / prints %
exit 0;