
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%

"{" { return Chave_esq; }
"}" { return Chave_dir; }
"[" { return Colc_esq; }
"]" { return Colc_dir; }
";" { return Pont_virg; }
"," { return Virg; }
":" { return Colon; }
[ \t\r\n]+ { } // Lida com os espaços em branco

\"[^"]*\" { return Str; }

[1-9]+\.?[0-9]* { return Num; }

. { yyerror("INVALIDO\n "); }


%%

int yywrap() {
  return 1;
}
