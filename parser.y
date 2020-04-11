
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

// Bison++ parser definition


%header{

#include <stdio.h>
#include <assert.h>

#include "compilationContext.h"
#include "ast.h"
#include "symbols.h"
#include "types.h"

%}


%{

#include <malloc.h>

// explicitly suppress a few warnings
//
#pragma warning(disable: 4244)  // '=' : conversion from '__w64 int' to 'int', possible loss of data
#pragma warning(disable: 4701)  // local variable 'xxx' may be used without having been initialized
#pragma warning(disable: 4267)  // '+=' : conversion from 'size_t' to 'int', possible loss of data
#pragma warning(disable: 5033)  // 'register' is no longer a supported storage class

#define CURRENT_SCOPE   context()->symbolTable()->currentScope()

%}


///////////////////////////////////////////////////////////////////////////////
//
%name Parser

// debug switches
//
%define DEBUG 1
%define ERROR_VERBOSE 1

// code generation macros
//
%define LEX_BODY        = 0
%define ERROR_BODY      = 0


///////////////////////////////////////////////////////////////////////////////
//
%union
{
    const void*             pNone;
    Token*                  pToken;
    Identifier*             pIdentifier;
    IdList*                 pIdList;
    obj::Subroutine*        pSubroutine;
    ast::Stm*               pStm;
    ast::CompoundStm*       pCompoundStm;
    ast::Expr*              pExpr;
    ast::ExprList*          pExprList;
    ast::CaseList*          pCaseList;
    ast::Case*              pCaseCase;
    obj::Constant*          pConstant;
    obj::ConstList*         pConstList;
    ts::Type*               pType;
    ts::TypeList*           pTypeList;
    ts::RecordFields*       pRecordFields;
    ts::FixedFieldList*     pFixedFieldList;
    ts::FieldSet*           pFieldSet;
    ts::VariableFields*     pVariableFields;
    ts::VariantSelector*    pVariantSelector;
    ts::VariantFieldList*   pVariantFieldList;
    ts::VariantSection*     pVariantSection;
    ts::ParamSet*           pParamSet;
    ts::ParamSetList*       pParamSetList;
}


%type<pNone>                labelsDef constsDef typesDef varsDef optSemicolon
%type<pConstList>           constList
%type<pVariantSection>      variantSection
%type<pVariantFieldList>    variantList
%type<pVariantSelector>     variantSelector
%type<pVariableFields>      variableFields
%type<pFieldSet>            fieldSetDef
%type<pFixedFieldList>      fixedFields
%type<pRecordFields>        fieldList
%type<pTypeList>            simpleTypeList
%type<pType>                type typeId simpleType pointerType structuredType 
%type<pType>                arrayType fileType setType recordType
%type<pConstant>            constValue optLabel
%type<pIdList>              idList programArguments
%type<pParamSet>            paramSetDef funcParameter
%type<pParamSetList>        parameterList parametersDef
%type<pSubroutine>          subroutineHeading
%type<pStm>                 block blockStatements statement stm
%type<pStm>                 assignmentStm procCallStm ifStm caseStm whileStm
%type<pStm>                 repeatStm forStm withStm gotoStm compoundStm
%type<pCompoundStm>         statementList
%type<pExpr>                expr objAccess argExpr simpleExpr term factor
%type<pExpr>                unsignedConstValue fnCall setConstructor setElem
%type<pExprList>            exprList setElemList argList
%type<pCaseList>            caseList
%type<pCaseCase>            caseCase
%type<pToken>               relOp numSign addingOp multOp forDirection


///////////////////////////////////////////////////////////////////////////////
//
%token T_INVALID_TOKEN

%token<pIdentifier> T_ID
%token<pConstant>   T_INT_CONST
%token<pConstant>   T_STRING_CONST
%token<pConstant>   T_REAL_CONST

%token<pToken> T_AND
%token<pToken> T_ARRAY
%token<pToken> T_BEGIN
%token<pToken> T_CASE
%token<pToken> T_CONST
%token<pToken> T_DIV
%token<pToken> T_DO
%token<pToken> T_DOWNTO
%token<pToken> T_ELSE
%token<pToken> T_END
%token<pToken> T_FILE
%token<pToken> T_FOR
%token<pToken> T_FORWARD
%token<pToken> T_FUNCTION
%token<pToken> T_GOTO
%token<pToken> T_IF
%token<pToken> T_IN
%token<pToken> T_LABEL
%token<pToken> T_MOD
%token<pToken> T_NOT
%token<pToken> T_OF
%token<pToken> T_OR
%token<pToken> T_PACKED
%token<pToken> T_PROCEDURE
%token<pToken> T_PROGRAM
%token<pToken> T_RECORD
%token<pToken> T_REPEAT
%token<pToken> T_SET
%token<pToken> T_THEN
%token<pToken> T_TO
%token<pToken> T_TYPE
%token<pToken> T_UNTIL
%token<pToken> T_VAR
%token<pToken> T_WHILE
%token<pToken> T_WITH

%token<pToken> T_PLUS
%token<pToken> T_MINUS
%token<pToken> T_STAR
%token<pToken> T_SLASH
%token<pToken> T_EQ
%token<pToken> T_LT
%token<pToken> T_GT
%token<pToken> T_LBRACKET
%token<pToken> T_RBRACKET
%token<pToken> T_DOT
%token<pToken> T_COMMA
%token<pToken> T_COLON
%token<pToken> T_SEMICOLON
%token<pToken> T_UPARROW
%token<pToken> T_LPAREN
%token<pToken> T_RPAREN
%token<pToken> T_NE
%token<pToken> T_LE
%token<pToken> T_GE
%token<pToken> T_ASSIGN
%token<pToken> T_DOTDOT

%left P_IF
%nonassoc T_ELSE


///////////////////////////////////////////////////////////////////////////////
//
%%

program
    : T_PROGRAM T_ID programArguments T_SEMICOLON
        {
            $<pSubroutine>$ = declareProgram($2);
            context()->symbolTable()->beginProgramScope($<pSubroutine>$);
            declareProgramArgs($3, $2->line);
        }
        block
        {
            context()->symbolTable()->endProgramScope($<pSubroutine>5);
        }
        T_DOT
        {
            $<pSubroutine>5->pBody = $6;
        }
    ;

programArguments
    : T_LPAREN idList T_RPAREN
        { $$ = $2; }
    | /* empty */
        { $$ = nullptr; }
    ;
    
idList
    : T_ID
        { $$ = new IdList(); $$->push_back($1); }
    | idList T_COMMA T_ID
        { $$ = $1; $$->push_back($3); }
    ;
    
block
    : labelsDef constsDef typesDef
        {
            context()->symbolTable()->resolveTypes();
        }
        varsDef subroutinesDef blockStatements
        {
            $$ = $7;
        }
    ;
    
labelsDef
    : T_LABEL labelList T_SEMICOLON
        { $$ = nullptr; }
    | /* empty */
        { $$ = nullptr; }
    ;

label
    : T_INT_CONST
        { declareLabel($1, $1->line); }
    ;

labelList
    : label
    | label T_COMMA labelList
    ;
    
constsDef
    : T_CONST constDefList
        { $$ = nullptr; }
    | /* empty */
        { $$ = nullptr; }
    ;
    
constDefList
    : singleConstDef
    | singleConstDef constDefList
    ;
    
singleConstDef
    : T_ID T_EQ constValue T_SEMICOLON
        { declareConst($1, $3); }
    ;

constValue
    : T_ID
        { $$ = lookupConstant($1, false); }
    | T_MINUS T_ID
        { $$ = lookupConstant($2, true); }
    | T_PLUS T_ID
        { $$ = lookupConstant($2, false); }
    | T_INT_CONST
        { $$ = $1; }
    | T_MINUS T_INT_CONST
        { $$ = new obj::Constant(-$2->intValue, $2->line); }
    | T_PLUS T_INT_CONST
        { $$ = $2; }
    | T_REAL_CONST
        { $$ = $1; }
    | T_MINUS T_REAL_CONST
        { $$ = new obj::Constant(-$2->intValue, $2->line); }
    | T_PLUS T_REAL_CONST
        { $$ = $2; }
    | T_STRING_CONST
        { $$ = $1; }
    ;

typesDef
    : T_TYPE typeDefList
        { $$ = nullptr; }
    | /* empty */
        { $$ = nullptr; }
    ;

typeDefList
    : singleTypeDef
    | singleTypeDef typeDefList
    ;
    
singleTypeDef
    : T_ID T_EQ type T_SEMICOLON
        { declareType($1, $3); }
    | T_ID error T_SEMICOLON
        { declareType($1, new ts::DummyType($1->line)); yyerrok; }
    ;

varsDef
    : T_VAR varDefList
        { $$ = nullptr; }
    | /* empty */
        { $$ = nullptr; }
    ;

varDefList
    : varSetDef
    | varSetDef varDefList
    ;
    
varSetDef
    : idList T_COLON type T_SEMICOLON
        { declareVars($1, $3); }
    ;

subroutinesDef
    : subroutinesDef subroutine
    | /* empty */
    ;

subroutine
    : subroutineHeading T_SEMICOLON
        {
            context()->symbolTable()->beginSubroutineScope($1);
            declareParams($1);
        }
        block
        {
            context()->symbolTable()->endSubroutineScope($1);
        }
        T_SEMICOLON
        {
            $1->pBody = $4;
        }

    | subroutineHeading T_SEMICOLON T_FORWARD T_SEMICOLON
        {
        }

    ;

subroutineHeading
    : T_PROCEDURE T_ID parametersDef
        { $$ = declareSubroutine($2, $3, nullptr, false); }
    | T_FUNCTION T_ID parametersDef T_COLON typeId
        { $$ = declareSubroutine($2, $3, $5, true); }
    | T_FUNCTION T_ID
        { $$ = declareSubroutine($2, nullptr, nullptr, true); }
    ;

parametersDef
    : T_LPAREN parameterList T_RPAREN
        { $$ = $2; }
    | /* empty */
        { $$ = nullptr; }
    ;
    
parameterList
    : paramSetDef
        { $$ = new ts::ParamSetList(); $$->push_back($1); }
    | parameterList T_SEMICOLON paramSetDef
        { $$ = $1; $$->push_back($3); }
    ;

paramSetDef
    : idList T_COLON typeId
        { $$ = new ts::ParamSet($1, $3, false); }
    | T_VAR idList T_COLON typeId
        { $$ = new ts::ParamSet($2, $4, true); }
    | funcParameter
        { $$ = $1; }
    ;

funcParameter
    : T_PROCEDURE T_ID parametersDef
        { $$ = new ts::ParamSet($2, new ts::SubroutineType($3, nullptr, CURRENT_SCOPE, $2->line)); }
    | T_FUNCTION T_ID parametersDef T_COLON typeId
        { $$ = new ts::ParamSet($2, new ts::SubroutineType($3, $5, CURRENT_SCOPE, $2->line)); }
    ;

blockStatements
    : T_BEGIN statementList T_END
        { $$ = $2; }
    | T_BEGIN error T_END
        { $$ = new ast::DummyStm($1->line); yyerrok; }
    ;

typeId
    : T_ID
        { $$ = context()->symbolTable()->findType($1); }
    ;

type
    : simpleType
        { $$ = $1; }
    | pointerType
        { $$ = $1; }
    | structuredType
        { $$ = $1; }
    | T_PACKED structuredType
        { $$ = $2; }
    ;

simpleType
    : typeId
        { $$ = $1; }
    | T_LPAREN idList T_RPAREN
        { $$ = new ts::EnumType($2, CURRENT_SCOPE, $1->line); }
    | constValue T_DOTDOT constValue
        { $$ = new ts::RangeType($1, $3, CURRENT_SCOPE, $1->line); }
    ;
    
pointerType
    : T_UPARROW T_ID
        { $$ = new ts::PointerType($2, CURRENT_SCOPE, $1->line); }
    ;
    
structuredType
    : arrayType
    | fileType
    | setType
    | recordType
    ;
    
arrayType
    : T_ARRAY T_LBRACKET simpleTypeList T_RBRACKET T_OF type
        { $$ = new ts::ArrayType($3, $6, CURRENT_SCOPE, $1->line); }
    ;
    
simpleTypeList
    : simpleType
        { $$ = new ts::TypeList(); $$->push_back($1); }
    | simpleTypeList T_COMMA simpleType
        { $$ = $1; $$->push_back($3); }
    ;
    
fileType
    : T_FILE T_OF type
        { $$ = new ts::FileType($3, CURRENT_SCOPE, $1->line); }
    ;
    
setType
    : T_SET T_OF simpleType
        { $$ = new ts::SetType($3, CURRENT_SCOPE, $1->line); }
    ;
    
recordType
    : T_RECORD fieldList T_END
        { $$ = new ts::RecordType($2, CURRENT_SCOPE, $1->line); }
    | T_RECORD error T_END
        { $$ = new ts::DummyType($1->line); yyerrok; }
    ;
    
fieldList
    : fixedFields optSemicolon
        { $$ = new ts::RecordFields($1, nullptr); }
    | fixedFields T_SEMICOLON variableFields
        { $$ = new ts::RecordFields($1, $3); }
    | variableFields
        { $$ = new ts::RecordFields(nullptr, $1); }
    ;

optSemicolon
    : T_SEMICOLON
        { $$ = nullptr; }
    | /* empty */
        { $$ = nullptr; }
    ;

fixedFields
    : fieldSetDef
        { $$ = new ts::FixedFieldList(); $$->push_back($1); }
    | fixedFields T_SEMICOLON fieldSetDef
        { $$ = $1; $$->push_back($3); }
    ;
    
fieldSetDef
    : idList T_COLON type
        { $$ = new ts::FieldSet($1, $3); }
    ;
    
variableFields
    : T_CASE variantSelector T_OF variantList optSemicolon
        { $$ = new ts::VariableFields($2, $4); }
    ;

variantSelector
    : typeId
        { $$ = new ts::VariantSelector(nullptr, $1); }
    | T_ID T_COLON typeId
        { $$ = new ts::VariantSelector($1, $3); }
    ;

variantList
    : variantSection
        { $$ = new ts::VariantFieldList(); $$->push_back($1); }
    | variantList T_SEMICOLON variantSection
        { $$ = $1; $$->push_back($3); }
    ;

variantSection
    : constList T_COLON T_LPAREN fieldList T_RPAREN
        { $$ = new ts::VariantSection($1, $4); }
    | constList T_COLON T_LPAREN T_RPAREN
        { $$ = new ts::VariantSection($1, new ts::RecordFields(nullptr, nullptr)); }
    ;
    
constList
    : constValue
        { $$ = new obj::ConstList(); $$->push_back($1); }
    | constList T_COMMA constValue
        { $$ = $1; $$->push_back($3); }
    ;
    
statementList
    : statement
        { $$ = new ast::CompoundStm(); $$->appendStm($1); }
    | statementList T_SEMICOLON statement
        { $$ = $1; $$->appendStm($3); }
    ;

statement
    : optLabel stm
        { $$ = $2; $$->setLabel($1); }
    ;

optLabel
    : T_INT_CONST T_COLON
        { $$ = $1; }
    | /* empty */
        { $$ = nullptr; }
    ;
    
stm
    : assignmentStm
    | procCallStm
    | compoundStm
    | ifStm
    | caseStm
    | whileStm
    | repeatStm
    | forStm
    | withStm
    | gotoStm
    | /* empty */
        { $$ = new ast::NopStm(NO_LOCATION); }
    ;
    
assignmentStm
    : objAccess T_ASSIGN expr
        { $$ = new ast::AssignStm($1, $3, $1->line); }
    | objAccess T_EQ expr
        {
            context()->error($1->line, "parse error, did you use = instead of := for assignment?");
            $$ = new ast::AssignStm($1, $3, $1->line);
        }
    ;
    
procCallStm
    : T_ID
        { $$ = ast::newProcCall($1, nullptr, $1->line); }
    | T_ID T_LPAREN argList T_RPAREN
        { $$ = ast::newProcCall($1, $3, $1->line); }
    ;
    
argList
    : argExpr
        { $$ = new ast::ExprList(); $$->push_back($1); }
    | argList T_COMMA argExpr
        { $$ = $1; $$->push_back($3); }
    ;
    
argExpr
    : expr
    | expr T_COLON expr
        { $$ = new ast::WriteArgExpr($1, $3, nullptr, $2->line); }
    | expr T_COLON expr T_COLON expr
        { $$ = new ast::WriteArgExpr($1, $3, $5, $2->line); }
    ;
    
compoundStm
    : T_BEGIN statementList T_END
        { $$ = $2; }
    | T_BEGIN error T_END
        { $$ = new ast::DummyStm($1->line); yyerrok; }
    ;
    
ifStm
    : T_IF expr T_THEN statement %prec P_IF
        { $$ = new ast::IfStm($2, $4, nullptr, $1->line); }
    | T_IF expr T_THEN statement T_ELSE statement
        { $$ = new ast::IfStm($2, $4, $6, $1->line); }
    ;
    
caseStm
    : T_CASE expr T_OF caseList T_END
        { $$ = new ast::CaseStm($2, $4, $1->line); }
    ;
    
caseList
    : caseCase
        { $$ = new ast::CaseList(); $$->push_back($1); }
    | caseList T_SEMICOLON caseCase
        { $$ = $1; $$->push_back($3); }
    ;
    
caseCase
    : constList T_COLON statement
        { $$ = new ast::Case($1, $3, $2->line); }
    | /* empty */
        { $$ = nullptr; }
    ;
    
whileStm
    : T_WHILE expr T_DO statement
        { $$ = new ast::WhileStm($2, $4, $1->line); }
    ;
    
repeatStm
    : T_REPEAT statementList T_UNTIL expr
        { $$ = new ast::RepeatStm($4, $2, $1->line); }
    ;
    
forStm
    : T_FOR T_ID T_ASSIGN expr forDirection expr T_DO statement
        { $$ = new ast::ForStm($2, $4, $5, $6, $8, $1->line); }
    ;
    
forDirection
    : T_TO
    | T_DOWNTO
    ;
    
withStm
    : T_WITH 
        {
            context()->symbolTable()->beginRecordScope($1->line);
        }
        objList T_DO statement
        {
            context()->symbolTable()->endRecordScope();
            $$ = $5;
        }
    ;
    
objList
    : objAccess
        { context()->symbolTable()->addScopeRecord($1); }
    | objList T_COMMA objAccess
        { context()->symbolTable()->addScopeRecord($3); }
    ;
    
gotoStm
    : T_GOTO T_INT_CONST
        { $$ = new ast::GotoStm($2, $1->line); }
    ;

expr
    : simpleExpr
    | simpleExpr relOp simpleExpr
        { $$ = new ast::BinaryOp($1, $2, $3, $1->line); }
    ;
    
relOp
    : T_EQ
    | T_NE
    | T_LT
    | T_GT
    | T_LE
    | T_GE
    | T_IN
    ;
    
simpleExpr
    : term
    | simpleExpr addingOp term
        { $$ = new ast::BinaryOp($1, $2, $3, $1->line); }
    ;
    
addingOp
    : T_PLUS
    | T_MINUS
    | T_OR
    ;
    
term
    : factor
    | term multOp factor
        { $$ = new ast::BinaryOp($1, $2, $3, $1->line); }
    ;

multOp
    : T_STAR
    | T_SLASH
    | T_DIV
    | T_MOD
    | T_AND
    ;    
    
factor
    : unsignedConstValue
    | objAccess
    | fnCall
    | T_LPAREN expr T_RPAREN
        { $$ = $2; }
    | numSign factor
        { $$ = new ast::UnaryOp($1, $2, $1->line); }
    | T_NOT factor
        { $$ = new ast::UnaryOp($1, $2, $1->line); }
    | setConstructor
    ;
    
numSign
    : T_PLUS
    | T_MINUS
    ;
    
unsignedConstValue
    : T_INT_CONST
        { $$ = new ast::ConstExpr($1, $1->line); }
    | T_REAL_CONST
        { $$ = new ast::ConstExpr($1, $1->line); }
    | T_STRING_CONST
        { $$ = new ast::ConstExpr($1, $1->line); }
    ;

objAccess
    : T_ID
        { $$ = lookupObject($1, true); }
    | objAccess T_LBRACKET exprList T_RBRACKET
        { $$ = new ast::ArrayIndex($1, $3, $1->line); }
    | objAccess T_DOT T_ID
        { $$ = new ast::FieldExpr($1, $3, $1->line); }
    | objAccess T_UPARROW
        { $$ = new ast::Indirection($1, $1->line); }
    ;
    
exprList
    : expr
        { $$ = new ast::ExprList(); $$->push_back($1); }
    | exprList T_COMMA expr
        { $$ = $1; $$->push_back($3); }
    ;

fnCall
    : T_ID T_LPAREN exprList T_RPAREN
        { $$ = ast::newFuncCall($1, $3, $1->line); }
    ;
    
setConstructor
    : T_LBRACKET setElemList T_RBRACKET
        { $$ = new ast::Set($2, $1->line); }
    | T_LBRACKET T_RBRACKET
        { $$ = new ast::Set(nullptr, $1->line); }
    ;
    
setElemList
    : setElem
        { $$ = new ast::ExprList(); $$->push_back($1); }
    | setElemList T_COMMA setElem
        { $$ = $1; $$->push_back($3); }
    ;
    
setElem
    : expr
    | expr T_DOTDOT expr
        { $$ = new ast::BinaryOp($1, $2, $3, $1->line); }
    ;

%%



