%{
	#include <stdio.h>
	#include <stdlib.h>
%}

%%

statement:
		statement S '\n'  { printf("Valid\n"); }
		|
		;

S:	'a' S 'b'
	| 'a' 'b'
	| 
	;

%%

yyerror() {
	printf("Invalid\n");
	exit(1);
}

int main() {
	yyparse();
	return 0;
}
