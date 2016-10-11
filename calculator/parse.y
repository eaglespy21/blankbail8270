%{
#include<iostream>
#include "ast.h"
extern int yylex();
extern int yylval;
void yyerror(const char* msg);
void yyerror(const char* msg, const char ch);
%}

%token CR 
%token <d> NUMBER
%left PLUS MINUS
%left MULT DIV

%union {
  Ast* ast;
  double d;
}

%type <ast> expr


%%
lines	: lines expr CR
	  { std::cout << $2 <<std::endl; }
	| lines CR
	|
	;
expr	: expr PLUS expr  {$$ = new AstNode('+', $1, $3);}
	| expr MINUS expr {$$ = new AstNode('-', $1, $3);}
	| expr MULT expr  {$$ = new AstNode('*', $1, $3);}
	| expr DIV expr   {$$ = new AstNode('/', $1, $3);}
	| NUMBER	  {$$ = new AstNumber('K', $1);}
	;
%%
void yyerror(const char* msg){ std::cout <<msg <<std::endl;}
void yyerror(const char* msg, const char ch){std::cout<<msg<<ch<<std::endl;}
