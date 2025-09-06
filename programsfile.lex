1)**program is a keyword**

%{
#include<stdio.h>
%}

keyword auto|break|case|char|const|continue|default|double|else|enum|extan|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while  
%%
{keyword} {printf("%s is an keyword\n",yytext);}
%%
int main()
{
yylex();
}

## is not a keyword ##  

%{
#include<stdio.h>
%}
letter [a-zA-Z]
digit  [0-9]

keyword auto|break|case|char|const|continue|default|double|else|enum|extan|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while  
%%
{keyword} {printf("%s is an keyword\n",yytext);}
{letter}({letter}|{digit}) {printf("%s is an not a keyword\n",yytext);}
%%
int main()
{
yylex();
}

