
// Copyright 2018 LPC Authors
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

#include <assert.h>

#include "stringTable.h"
#include "_parser.h"


///////////////////////////////////////////////////////////////////////////////
//
const char* Token::name() const
{
    switch(token)
    {
    case Parser::T_PLUS:        return "+";
    case Parser::T_MINUS:       return "-";
    case Parser::T_STAR:        return "*";
    case Parser::T_SLASH:       return "/";
    case Parser::T_EQ:          return "=";
    case Parser::T_LT:          return "<";
    case Parser::T_GT:          return ">";
    case Parser::T_LBRACKET:    return "["; 
    case Parser::T_RBRACKET:    return "]"; 
    case Parser::T_DOT:         return "."; 
    case Parser::T_COMMA:       return ","; 
    case Parser::T_COLON:       return ":"; 
    case Parser::T_SEMICOLON:   return ";"; 
    case Parser::T_UPARROW:     return "^"; 
    case Parser::T_LPAREN:      return "("; 
    case Parser::T_RPAREN:      return ")"; 
    case Parser::T_NE:          return "<>"; 
    case Parser::T_LE:          return "<="; 
    case Parser::T_GE:          return ">="; 
    case Parser::T_ASSIGN:      return ":="; 
    case Parser::T_DOTDOT:      return "..";
    case Parser::T_NOT:         return "not";
    case Parser::T_DIV:         return "div";
    case Parser::T_MOD:         return "mod";
    case Parser::T_AND:         return "and";
    case Parser::T_OR:          return "or";
    case Parser::T_IN:          return "in";

    default:
        assert(!"unexpected token");
        return "???";
    }
}


