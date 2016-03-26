%{
    #include "y.tab.h"
%}

%%

[ab\n]      { return *yytext; }

%%

int yywrap() { return 1; }
