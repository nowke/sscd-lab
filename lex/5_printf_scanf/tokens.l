%{
	#include <stdio.h>
	
	int pf=0, sf=0;
%}

%%
printf	{ fprintf(yyout, "writef"); pf++; }
scanf   { fprintf(yyout, "readf");  sf++; }
%%

int main(int argc, char* argv[]) {
	if (argc < 3) {
		printf("Usage: ./run input.c output.c\n");
		return 1;
	}
	
	yyin = fopen(argv[1], "r");
	yyout = fopen(argv[2], "w+");
	yylex();

	printf("\nNo.of scanf: %d\nNo.of printf: %d\n", sf, pf);

	return 0;
}

int yywrap() { return 1; }
