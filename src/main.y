
%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token Chave_esq Chave_dir Colc_esq Colc_dir Virg Pont_virg Colon
%token Str;
%token Num;

%%




%%

void yyerror(char *s) {
  printf("INVALIDO\n");
}

int main() {
  yyparse();
    return 0;

}
