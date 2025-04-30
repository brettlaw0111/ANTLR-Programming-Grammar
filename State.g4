//This is my grammar, State.
//It's built off of the sample grammar given in the ANTLR lab.

grammar State; //Grammar and file name must match

program
    : stat+ EOF  //stat is a single statement. EOF is the end of file.

stat: ID '=' expr ';'   //This is how variables are assigned a value. It's the ID followed by an expression.
    | expr ';'          //This is a standalone expression. This allows for expressions that don't assign a value to a variable.
    | PRINT '(' expr ')' ';'
    ;

expr: ID
    | INT
    | '(' expr ')'
    | expr op=(ADD|SUB) expr
    | expr op=(MUL|DIV) expr
    | op=('-'|'+') expr                 //For signed integers. Allows integers to be negative.
    | expr op=(LESS|LESSEQ) expr
    | expr op=(GREATER|GREATEREQ) expr
    | expr EQEXPR expr
    ;

//Lexer rules. These are tokens that are recognized in the input.
//These are for defining syntax.

AND : 'and' ;   //And operator.
OR : 'or' ;     //Or operator.
NOT : 'not' ;   //Not operator.
EQ : '=' ;      //Assignment operator.
COMMA : ',' ;   //Comma operator for multiple values.
SEMI : ';' ;    //Semicolon for end of statements.
LPAREN : '(' ;  //Parenthesis
RPAREN : ')' ;

ADD :   '+' ;   //Arithmetic operators.
SUB :   '-' ;
MUL :   '*' ;   
DIV :   '/' ;

LESS :  '<' ;   //Comparison operators.
LESSEQ : '<=' ;
GREATER : '>' ;
GREATEREQ : '>=' ;
EQEXPR : '==' ;

PRINT : 'print' ;   //Print.

INT : [0-9]+ ;                  // Rule for integer literals. Allows for digits 1-9, and allows for multiple digits.

ID: [a-zA-Z_][a-zA-Z_0-9]* ;    // Rule for identifiers. The first character must be a letter or underscore, followed by 0 or more characters consisting of letters, numbers or underscores.

WS: [ \t\n\r\f]+ -> skip ;      // WS stands for whitespace. Ensures that the parser skips spaces, tabs, newline, etc.