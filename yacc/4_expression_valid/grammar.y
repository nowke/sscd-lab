%{
	#include <stdio.h>
	#include <stdlib.h>
%}

%token ID DIGIT OP
%left '+' '-'
%left '*' '/'

%%

program:
	 	program statement '\n'
		|
		;

statement:
		expr	{ printf("Valid\n"); }
		;

expr:
		DIGIT
		| ID
		| expr OP expr
		| '(' expr ')'
		;

%%

yyerror() {
	printf("Error\n");
	exit(1);
}

int main() {
	yyparse();
	return 0;
}
