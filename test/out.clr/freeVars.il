
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

// "freeVars.pas"

// line 11
//================================================================================
// scope: foo_bar1 (level : 3)

.class @foo_bar1
{
    // slink
    .field public class @foo _slink

    // parameters
    .field public int32 i

    // local variables
    .field public int32 Bar1V

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 22
//================================================================================
// scope: foo_bar2_moo (level : 4)

.class @foo_bar2_moo
{
    // slink
    .field public class @foo_bar2 _slink

    // local variables
    .field public int32 MooV

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 19
//================================================================================
// scope: foo_bar2 (level : 3)

.class @foo_bar2
{
    // slink
    .field public class @foo _slink

    // parameters
    .field public int32 i

    // local variables
    .field public int32 Bar2V

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 22

    .method public
    void Moo()
    {
        .maxstack 32
    
        .locals init(class @foo_bar2_moo _F)
        
        newobj instance void @foo_bar2_moo::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @foo_bar2 @foo_bar2_moo::_slink
    
    L_Entry:
        // line 25
        ldloc _F
        ldc.i4 100
        stfld int32 @foo_bar2_moo::MooV
        // line 26
        ldloc _F
        ldfld class @foo_bar2 @foo_bar2_moo::_slink
        ldfld class @foo @foo_bar2::_slink
        ldc.i4 2
        call instance void @foo::Bar1(int32 i)
        // line 27
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldloc _F
        ldfld int32 @foo_bar2_moo::MooV
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldloc _F
        ldfld class @foo_bar2 @foo_bar2_moo::_slink
        ldfld int32 @foo_bar2::Bar2V
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldloc _F
        ldfld class @foo_bar2 @foo_bar2_moo::_slink
        ldfld int32 @foo_bar2::i
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldloc _F
        ldfld class @foo_bar2 @foo_bar2_moo::_slink
        ldfld class @foo @foo_bar2::_slink
        ldfld int32 @foo::FooV
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldsfld int32 _G::v
        call instance void [lpcRuntime]LPC.File::Write(int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 8
//================================================================================
// scope: foo (level : 2)

.class @foo
{
    // local variables
    .field public int32 FooV

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 11

    .method public
    void Bar1(int32 i)
    {
        .maxstack 32
    
        .locals init(class @foo_bar1 _F)
        
        newobj instance void @foo_bar1::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @foo @foo_bar1::_slink
        
        ldloc _F
        ldarg i
        stfld int32 @foo_bar1::i
    
    L_Entry:
        // line 14
        ldloc _F
        ldloc _F
        ldfld int32 @foo_bar1::i
        stfld int32 @foo_bar1::Bar1V
        // line 15
        ldloc _F
        ldfld int32 @foo_bar1::i
        ldc.i4 3
        clt
        brfalse L_if_end_1
        // line 15
        ldloc _F
        ldfld class @foo @foo_bar1::_slink
        ldloc _F
        ldfld int32 @foo_bar1::i
        ldc.i4 1
        add
        call instance void @foo::Bar1(int32 i)
    L_if_end_1:
        // line 16
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldloc _F
        ldfld int32 @foo_bar1::Bar1V
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldloc _F
        ldfld class @foo @foo_bar1::_slink
        ldfld int32 @foo::FooV
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldsfld int32 _G::v
        call instance void [lpcRuntime]LPC.File::Write(int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 19

    .method public
    void Bar2(int32 i)
    {
        .maxstack 32
    
        .locals init(class @foo_bar2 _F)
        
        newobj instance void @foo_bar2::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @foo @foo_bar2::_slink
        
        ldloc _F
        ldarg i
        stfld int32 @foo_bar2::i
    
    L_Entry:
        // line 31
        ldloc _F
        ldloc _F
        ldfld int32 @foo_bar2::i
        stfld int32 @foo_bar2::Bar2V
        // line 32
        ldloc _F
        ldfld class @foo @foo_bar2::_slink
        ldc.i4 1
        call instance void @foo::Bar1(int32 i)
        // line 33
        ldloc _F
        call instance void @foo_bar2::Moo()
        // line 34
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldloc _F
        ldfld int32 @foo_bar2::Bar2V
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldloc _F
        ldfld class @foo @foo_bar2::_slink
        ldfld int32 @foo::FooV
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldsfld int32 _G::v
        call instance void [lpcRuntime]LPC.File::Write(int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 4
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 v
}

// line 8

.method static
void Foo()
{
    .maxstack 32

    .locals init(class @foo _F)
    
    newobj instance void @foo::.ctor()
    stloc _F

L_Entry:
    // line 38
    ldloc _F
    ldc.i4 0
    call instance void @foo::Bar1(int32 i)
    // line 39
    ldloc _F
    ldc.i4 1000
    call instance void @foo::Bar2(int32 i)
    // line 40
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldloc _F
    ldfld int32 @foo::FooV
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int32 _G::v
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
    ret
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 4

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
    // line 44
    call void Foo()
    // line 45
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::v
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
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
