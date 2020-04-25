
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

S:
  | value {
    printf("VALIDO\n");
    exit(0);
  }
  ;

value: object
     | Str
     | Num
     | array
     ;

object: Chave_esq Chave_dir
      | Chave_esq members Chave_dir
      ;

members: member
       | members Virg member
       ;

member: Str Colon value
      ;

array: Colc_esq Colc_dir
     | Colc_esq values Colc_dir
     ;

values: value
      | values Virg value
      ;

%%

void yyerror(char *s) {
  printf("INVALIDO\n");
}

int main() {
  yyparse();
    return 0;

}
