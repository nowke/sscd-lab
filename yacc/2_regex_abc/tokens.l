%{
    #include "y.tab.h"
%}
%%
[abc\n]     { return *yytext; }
%%

int yywrap() { return 1; }

