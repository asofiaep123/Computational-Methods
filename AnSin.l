%{
#include "y.tab.h"
%}

%%

90|180|270|360   { yylval = atoi(yytext); return NUM_DEGREES; }
[0-9]+           { yylval = atoi(yytext); return NUM_BLOCKS; }

"Robot"          { return ROBOT; }
"please"         { return PLEASE; }
"move"           { return MOVE; }
"blocks"         { return BLOCKS; }
"ahead"          { return AHEAD; }
"and"            { return AND; }
"then"           { return THEN; }
"turn"           { return TURN; }
"degrees"        { return DEGREES; }
","              { return COMMA; }

.                ; /* Ignorar cualquier otro carácter */

%%
