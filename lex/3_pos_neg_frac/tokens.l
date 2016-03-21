%{
	#include <stdio.h>
	int pos_num=0, neg_num=0, pos_frac=0, neg_frac=0;
%}
%%

[\n\t]		;
([0-9]+)	{ pos_num++; }
-([0-9]+)   { neg_num++; }

([0-9]*\.[0-9]+)  	|
([0-9]+\/[0-9]+)	{ pos_frac++; }

-([0-9]*\.[0-9]+)	|
-([0-9]+\/[0-9]+)	{ neg_frac++; }

%%

int main() {
	yylex();
	printf("\nPositive Integers: %d\n", pos_num);
	printf("Negative Integers: %d\n", neg_num);
	printf("Positive Fractions: %d\n", pos_frac);
	printf("Negative Fractions: %d\n", neg_frac);
}

int yywrap() { return 1; }
