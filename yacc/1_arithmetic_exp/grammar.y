%{
	#include <stdio.h>	
	#include <stdlib.h>
%}

%token INTEGER
%left '+' '-'
%left '*' '/'

%%

program:
		program statement '\n'
		|
		;

statement:
		expr	{ printf("%d\n", $1); }
		;

expr:
		INTEGER
		| expr '+' expr 	{ $$ = $1 + $3; }
		| expr '-' expr     { $$ = $1 - $3; }
		| expr '*' expr     { $$ = $1 * $3; }
		| expr '/' expr     { $$ = $1 / $3; }
		| '(' expr ')'		{ $$ = $2; }
		;
%%

yyerror() {
	printf("Error");
	exit(1);
}

int main() {
	yyparse();
	return 0;
}
	    
