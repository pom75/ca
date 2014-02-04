%{
  #include <stdio.h>
  #include "yacc.tab.h"
  #include <math.h>
%}


blancs [ \t]+
chiffre [0-9]
entier {chiffre}+
reel {entier}("."{entier})?

%%

{blancs} { }
{reel} {
  yylval=atoi(yytext);
  return(NOMBRE);
  }

"\n" return(FIN);
"+" return(PLUS);
"*" return(FOIS);
"(" return(PG);
")" return(PD);
%%
int yywrap(void) {
    return 1;
}
