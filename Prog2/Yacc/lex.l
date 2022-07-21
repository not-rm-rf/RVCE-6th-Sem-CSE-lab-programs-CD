%{
#include "y.tab.h"
extern int yylval;
%}

%%
[0-9]+ {yylval=atoi(yytext); return Num;}
[a-zA-Z]+ {return id;}
. return yytext[0];
\n {return 0;}
%%
