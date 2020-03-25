
#include "commonDefs.il"

.field public static string[] _ProgramArgs

.method static void .cctor()
{
    ldc.i4 2
    newarr string
    dup
    ldc.i4 0
    ldstr "_input"
    stelem string
    dup
    ldc.i4 1
    ldstr "_output"
    stelem string
    stsfld string[] _ProgramArgs
    ret
}

.line 0 "test06.pas"

.line 11
//================================================================================
// scope: init (level : 2)

.class @init
{
    // parameters
    .field public void** Pointer

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 16
//================================================================================
// scope: setValue (level : 2)

.class @setValue
{
    // parameters
    .field public void** Pointer
    .field public int32* Value

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 22
//================================================================================
// scope: free (level : 2)

.class @free
{
    // parameters
    .field public void** Pointer

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 4
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 i
    .field public static void* p
}

.line 11

.method static
void Init(void*& Pointer)
{
    .maxstack 32

    .locals init(class @init _F,
        void*& pinned $Pointer)
    
    newobj instance void @init::.ctor()
    stloc _F
    
    ldarg Pointer
    stloc $Pointer
    
    ldloc _F
    ldarg Pointer
    stfld void** @init::Pointer

L_Entry:
    .line 13
    .line 13
    ldloc _F
    ldfld void** @init::Pointer
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stobj void*
    /* nop */

L_Epilogue:
    ret
}

.line 16

.method static
void SetValue(int32& Value, void*& Pointer)
{
    .maxstack 32

    .locals init(class @setValue _F,
        void*& pinned $Pointer,
        int32& pinned $Value)
    
    newobj instance void @setValue::.ctor()
    stloc _F
    
    ldarg Pointer
    stloc $Pointer
    
    ldloc _F
    ldarg Pointer
    stfld void** @setValue::Pointer
    
    ldarg Value
    stloc $Value
    
    ldloc _F
    ldarg Value
    stfld int32* @setValue::Value

L_Entry:
    .line 18
    ldc.i4 12345
    stsfld int32 _G::i
    .line 19
    ldloc _F
    ldfld void** @setValue::Pointer
    ldobj void*
    ldloc _F
    ldfld int32* @setValue::Value
    ldobj int32
    stobj int32
    /* nop */

L_Epilogue:
    ret
}

.line 22

.method static
void Free(void*& Pointer)
{
    .maxstack 32

    .locals init(class @free _F,
        void*& pinned $Pointer)
    
    newobj instance void @free::.ctor()
    stloc _F
    
    ldarg Pointer
    stloc $Pointer
    
    ldloc _F
    ldarg Pointer
    stfld void** @free::Pointer

L_Entry:
    .line 24
    ldloc _F
    ldfld void** @free::Pointer
    ldobj void*
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 24
    ldloc _F
    ldfld void** @free::Pointer
    ldnull
    stobj void*
    /* nop */

L_Epilogue:
    ret
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 4

.method static
void _Program()
{
    .maxstack 32

    .locals init()

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    .line 28
    ldsflda void* _G::p
    call void Init(void*& Pointer)
    .line 30
    ldsflda int32 _G::i
    ldsflda void* _G::p
    call void SetValue(int32& Value, void*& Pointer)
    .line 32
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "i = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 33
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "p^ = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld void* _G::p
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 35
    ldsflda void* _G::p
    call void Free(void*& Pointer)
    .line 37
    ldsfld void* _G::p
    ldnull
    ceq
    brfalse L_else_1
    .line 38
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "ok"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_2
L_else_1:
    .line 40
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "FAILED!"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_2:
    /* nop */
    leave L_Epilogue

L_Epilogue:
    ret

.try L_Entry to L_Epilogue finally
{
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::Close()

    endfinally
}

}
