# C Program comments
> Write a LEX program to count the number of Comment lines in a given C program. Also eliminate
> them and copy that program into a separate file

## Compile Manually
```bash
$ lex tokens.l
$ cc lex.yy.c -o run
```

## Or Use `compile`
```bash
$ ./compile
````

## Test Input file `input.c`
```c
#include <stdio.h>
// Single line comment
int k=0;
main() {
	/* Prints value 
		of k */
	printf("k = %d", k); // Output
	/* End of
	 * program
     */
}
```

## Run the script
```bash
$ ./run input.c output.c
No. of comment lines: 7

$ cat output.c
#include <stdio.h>

int k=0;
main() {
	
	printf("k = %d", k); 
	
}
```
