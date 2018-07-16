
// Copyright 2018 Google LLC
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     https://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Flex++ lexer definition
//
// NOTE: the scanner must be generated using -i (case insensitive)


%header{

#include "_parser.h"
#include "compilationContext.h"

%}


%{

#include <assert.h>


// we need to forcefully cast yytext to "char*" since the lexer
// may use "unsigned char*" internally (to handle 8bit characters)
//
#define CTEXT     (reinterpret_cast<char*>(yytext))


#define TOKEN(x)                                                \
    {                                                           \
        yylval.pToken = new Token(Parser::x, m_line);           \
        return Parser::x;                                       \
    }


#define ERR(m)                                                  \
    {                                                           \
        context()->error(m_line, "%s [%.*s]",                   \
            (m), strcspn(CTEXT, "\n\r"), yytext);               \
    }


// explicitly suppress a few warnings
//
#pragma warning(disable: 4127)  // conditional expression is constant
#pragma warning(disable: 4244)  // '=' : conversion from '__w64 int' to 'int', possible loss of data
#pragma warning(disable: 5033)  // 'register' is no longer a supported storage class


// simple function to fixup single quotes in string constants
//
// NOTE: it alters the buffer [s, s+len)
//   
//
static
const char* _fixupString(char* s, size_t len)
{
    char* dst = s + len;
    char* src = dst;
    
    // we should have at least the closing '
    //
    assert(len > 0);
    assert(*dst == 0);
    
    // get rid of the closing '
    //
    --src;
    assert(*src == '\'');
    
    // 'compact' the string going backward...
    //
    while(src > s)
    {
        *--dst = *--src;

        // skip one of the double ''
        //
        if(*src == '\'')
        {
            --src;

            assert(*src == '\'');
            assert(src >= s);
        }
    }
    
    // dst will now point to the fixed string
    //
    return dst;
}


%}


///////////////////////////////////////////////////////////////////////////////
//
%name Lexer

%define INPUT_PURE

%define MEMBERS                                                     \
                                                                    \
    virtual void _pushInput(const char* filename) = 0;              \
    virtual bool _popInput() = 0;                                   \
                                                                    \
    int m_line;
    

%define CONSTRUCTOR_CODE    m_line = 0;
%define LEX_PARAM           YY_Parser_STYPE& yylval


///////////////////////////////////////////////////////////////////////////////
//
%x COMMENT
%x STRING

ALPHA       [a-z]
ALPHANUM    [a-z0-9]
DIGIT       [0-9]
EOL         \r\n|\r|\n
ANYTHING    [^\r\n]
WSPACE      [ \n\r\t\v\f]

ID          {ALPHA}{ALPHANUM}*
INT         {DIGIT}+

EXP         e("+"|"-")?{DIGIT}+
REAL        ({DIGIT}+"."{DIGIT}+{EXP}?)|({DIGIT}+{EXP})

UPARROW     "^"|"@"
LBRACKET    "["|"(."
RBRACKET    "]"|".)"
LBRACE      "{"|"(*"
RBRACE      "}"|"*)"

///////////////////////////////////////////////////////////////////////////////
%%

"'"                         BEGIN(STRING);
<STRING>[^'\n\r]|"''"       { yymore(); }   /* ok string character */
<STRING>{EOL}               { ++m_line; ERR("End of line in string constant"); }
<STRING><<EOF>>             { ERR("End of file in string constant"); }

<STRING>"'"                 {
                                BEGIN(INITIAL);
                                yylval.pConstant = new obj::Constant(_fixupString(CTEXT, yyleng), m_line);
                                return Parser::T_STRING_CONST;
                            }

{LBRACE}                    BEGIN(COMMENT);
{RBRACE}                    { ERR("Unmatched end of comment"); }
<COMMENT>{RBRACE}           BEGIN(INITIAL);
<COMMENT>.
<COMMENT>{EOL}              { ++m_line; }
<COMMENT><<EOF>>            { ERR("End of file in comment"); }

{INT}{ID}                   { 
                                ERR("Identifier starting with a digit");
                                yylval.pIdentifier = new Identifier(CTEXT, m_line);
                                return Parser::T_ID;
                            }

"and"                       { TOKEN(T_AND); }
"array"                     { TOKEN(T_ARRAY); }
"begin"                     { TOKEN(T_BEGIN); }
"case"                      { TOKEN(T_CASE); }
"const"                     { TOKEN(T_CONST); }
"div"                       { TOKEN(T_DIV); }
"do"                        { TOKEN(T_DO); }
"downto"                    { TOKEN(T_DOWNTO); }
"else"                      { TOKEN(T_ELSE); }
"end"                       { TOKEN(T_END); }
"file"                      { TOKEN(T_FILE); }
"for"                       { TOKEN(T_FOR); }
"forward"                   { TOKEN(T_FORWARD); }
"function"                  { TOKEN(T_FUNCTION); }
"goto"                      { TOKEN(T_GOTO); }
"if"                        { TOKEN(T_IF); }
"in"                        { TOKEN(T_IN); }
"label"                     { TOKEN(T_LABEL); }
"mod"                       { TOKEN(T_MOD); }
"not"                       { TOKEN(T_NOT); }
"of"                        { TOKEN(T_OF); }
"or"                        { TOKEN(T_OR); }
"packed"                    { TOKEN(T_PACKED); }
"procedure"                 { TOKEN(T_PROCEDURE); }
"program"                   { TOKEN(T_PROGRAM); }
"record"                    { TOKEN(T_RECORD); }
"repeat"                    { TOKEN(T_REPEAT); }
"set"                       { TOKEN(T_SET); }
"then"                      { TOKEN(T_THEN); }
"to"                        { TOKEN(T_TO); }
"type"                      { TOKEN(T_TYPE); }
"until"                     { TOKEN(T_UNTIL); }
"var"                       { TOKEN(T_VAR); }
"while"                     { TOKEN(T_WHILE); }
"with"                      { TOKEN(T_WITH); }

{ID}                        {
                                yylval.pIdentifier = new Identifier(CTEXT, m_line);
                                return Parser::T_ID;
                            }

{INT}                       {
                                yylval.pConstant = new obj::Constant(atoi(CTEXT), m_line);
                                return Parser::T_INT_CONST;
                            }

{REAL}                      {
                                yylval.pConstant = new obj::Constant(atof(CTEXT), m_line);
                                if(errno != 0)
                                    ERR("invalid real constant");
                                return Parser::T_REAL_CONST;
                            }

"+"                         { TOKEN(T_PLUS); }
"-"                         { TOKEN(T_MINUS); }
"*"                         { TOKEN(T_STAR); }
"/"                         { TOKEN(T_SLASH); }
"="                         { TOKEN(T_EQ); }
"<"                         { TOKEN(T_LT); }
">"                         { TOKEN(T_GT); }
{LBRACKET}                  { TOKEN(T_LBRACKET); }
{RBRACKET}                  { TOKEN(T_RBRACKET); }
"."                         { TOKEN(T_DOT); }
","                         { TOKEN(T_COMMA); }
":"                         { TOKEN(T_COLON); }
";"                         { TOKEN(T_SEMICOLON); }
{UPARROW}                   { TOKEN(T_UPARROW); }
"("                         { TOKEN(T_LPAREN); }
")"                         { TOKEN(T_RPAREN); }
"<>"                        { TOKEN(T_NE); }
"<="                        { TOKEN(T_LE); }
">="                        { TOKEN(T_GE); }
":="                        { TOKEN(T_ASSIGN); }
".."                        { TOKEN(T_DOTDOT); }

{EOL}                       { ++m_line; }
{WSPACE}                    /* eat white space */
"//"{ANYTHING}*/{EOL}       /* C++ style comments */

.                           { ERR("Unexpected character"); }

<INITIAL><<EOF>>            { if(!_popInput()) yyterminate(); else BEGIN(INITIAL); }

%%


