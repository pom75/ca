%{
  #include <stdio.h>
 %}
blancs[\t]+
chiffre[0-9]
entier{chiffre}+
reel{entier}("."{entier})?

%
{blancs}{}
"\n" return(FIN)
"+" return(plus)
"*" return(fois)
"(" return(PG)
")" return(PD)
{reel} {yyval = atof(yytext);
  return(Nombre)

