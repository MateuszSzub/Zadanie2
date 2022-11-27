grammar Calculator;

expression: multiplyingExpression ((PLUS | MINUS) multiplyingExpression)*;
multiplyingExpression: powExpression ((TIMES | DIV) powExpression)*;
powExpression: integralExpression (POW integralExpression)*;
integralExpression: NUMBER | MINUS NUMBER;

NUMBER: ('0' .. '9') + ('.' ('0' .. '9') +)?;
TIMES: '*' ;
DIV: '/' ;
PLUS: '+' ;
MINUS: '-' ;
POW: '^';
WS : [ \t\r\n]+ -> skip ;