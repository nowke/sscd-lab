%{
	#include "y.tab.h"
%}

%%
[0-9]+	{
			yylval = atoi(yytext);
			return INTEGER;
		}

[-+()=/*\n]  {
			return *yytext;
		}

[ \t]	;
%%

int yywrap() { return 1; }
