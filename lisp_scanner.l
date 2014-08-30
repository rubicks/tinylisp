/* tinylisp/lisp_scanner.l */

%{
/* lisp_scanner.l code block begin */
#include "parser.h"
/* lisp_scanner.l code block end */
%}


/* flex options section */
%option noyywrap
%option header-file="lisp_scanner.h"
%option outfile="lisp_scanner.c"


digit   [0-9]
blank   [ \t]
name1   [A-Za-z]
name2   [A-Za-z_0-9]

%%

{name1}{name2}*         { return SYMBOL; }


"(" {return OPENING_BRACE;}
")" {return CLOSING_BRACE;}

"\n"                    { }
			
{blank}+                ;
%%
