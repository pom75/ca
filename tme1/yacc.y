%{ 
#include <math.h>
#include <stdio.h> 
%}


%token NOMBRE PLUS MOINS FOIS DIVISE PUISSANCE
%token FIN
%token PD PG
%left PLUS MOINS
%left FOIS DIVISE
%right PUISSANCE
%start Input
%%

Input: /*.vide.*/ 
    |Input Ligne
;
Ligne: FIN
|Exp FIN {printf("REP: %f\n",$1);}
;
Exp: NOMBRE {$$=$1;}
|Exp PLUS Exp{$$=$1+$3;}
|Exp MOINS Exp{$$=$1+$3;}
|Exp FOIS Exp{$$=$1*$3;}
|Exp DIVISE Exp{$$=$1/$3;}
;
%%

int yyerror(char *s){
  printf("Error");
}

int main(void){
  yyparse();
}
