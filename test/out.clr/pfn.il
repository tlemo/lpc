
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

.line 0 "pfn.pas"

.line 11
//================================================================================
// scope: foo_testPfn (level : 3)

.class @foo_testPfn
{
    // slink
    .field public class @foo _slink

    // parameters
    .field public int32 i

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 17
//================================================================================
// scope: foo_bar1 (level : 3)

.line 0xfeefee

// TYPE subroutine_1 = function^;
.class sealed T_foo_subroutine_1 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 i) runtime managed {}
}

.class @foo_bar1
{
    // slink
    .field public class @foo _slink

    // parameters
    .field public int32 i
    .field public class T_foo_subroutine_1 Pfn

    // local variables
    .field public int32 Bar1V
    .field public int32 Tmp

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 32
//================================================================================
// scope: foo_bar2_moo (level : 4)

.line 0xfeefee

// TYPE subroutine_2 = function^;
.class sealed T_foo_bar2_subroutine_2 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 i) runtime managed {}
}

.class @foo_bar2_moo
{
    // slink
    .field public class @foo_bar2 _slink

    // parameters
    .field public class T_foo_bar2_subroutine_2 Pfn

    // local variables
    .field public int32 MooV
    .field public int32 Tmp

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 44
//================================================================================
// scope: foo_bar2_testPfn (level : 4)

.class @foo_bar2_testPfn
{
    // slink
    .field public class @foo_bar2 _slink

    // parameters
    .field public int32 i

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 29
//================================================================================
// scope: foo_bar2 (level : 3)

.line 0xfeefee

// TYPE subroutine_3 = procedure^;
.class sealed T_foo_subroutine_3 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke(int32 i) runtime managed {}
}

.line 0xfeefee

// TYPE subroutine_4 = function^;
.class sealed T_foo_bar2_subroutine_4 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 i) runtime managed {}
}

.class @foo_bar2
{
    // slink
    .field public class @foo _slink

    // parameters
    .field public class T_foo_subroutine_3 Pfn

    // local variables
    .field public int32 Bar2V

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 32

    .method public
    void Moo(class T_foo_bar2_subroutine_2 Pfn)
    {
        .maxstack 32
    
        .locals init(class @foo_bar2_moo _F)
        
        newobj instance void @foo_bar2_moo::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @foo_bar2 @foo_bar2_moo::_slink
        
        ldloc _F
        ldarg Pfn
        stfld class T_foo_bar2_subroutine_2 @foo_bar2_moo::Pfn
    
    L_Entry:
        .line 36
        ldloc _F
        ldloc _F
        ldfld class T_foo_bar2_subroutine_2 @foo_bar2_moo::Pfn
        ldc.i4 100
        call instance int32 T_foo_bar2_subroutine_2::Invoke(int32 i)
        stfld int32 @foo_bar2_moo::MooV
        .line 37
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "foo.bar2.moo"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 38
        ldloc _F
        ldloc _F
        ldfld class T_foo_bar2_subroutine_2 @foo_bar2_moo::Pfn
        ldloc _F
        ldfld class @foo_bar2 @foo_bar2_moo::_slink
        ldfld class @foo @foo_bar2::_slink
        ldfld int32 @foo::FooV
        call instance int32 T_foo_bar2_subroutine_2::Invoke(int32 i)
        stfld int32 @foo_bar2_moo::Tmp
        .line 39
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "pfn = "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld int32 @foo_bar2_moo::Tmp
        call instance void [lpcRuntime]LPC.File::Write(int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 40
        ldloc _F
        ldfld class @foo_bar2 @foo_bar2_moo::_slink
        ldfld class @foo @foo_bar2::_slink
        ldc.i4 2
        ldloc _F
        ldfld class T_foo_bar2_subroutine_2 @foo_bar2_moo::Pfn
        call instance void @foo::Bar1(int32 i, class T_foo_subroutine_1 Pfn)
        .line 41
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

.line 44

    .method public
    int32 TestPfn(int32 i)
    {
        .maxstack 32
    
        .locals init(class @foo_bar2_testPfn _F)
        
        newobj instance void @foo_bar2_testPfn::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @foo_bar2 @foo_bar2_testPfn::_slink
        
        ldloc _F
        ldarg i
        stfld int32 @foo_bar2_testPfn::i
    
    L_Entry:
        .line 46
        ldloc _F
        ldloc _F
        ldfld int32 @foo_bar2_testPfn::i
        ldc.i4 100
        mul
        ldloc _F
        ldfld class @foo_bar2 @foo_bar2_testPfn::_slink
        ldfld class @foo @foo_bar2::_slink
        ldfld int32 @foo::FooV
        add
        stfld int32 @foo_bar2_testPfn::_fnvalue
        .line 47
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "foo.bar2.testPfn("
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld int32 @foo_bar2_testPfn::i
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 41 // ')'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @foo_bar2_testPfn::_fnvalue
        ret
    }
}


.line 59
//================================================================================
// scope: foo_procPfn (level : 3)

.class @foo_procPfn
{
    // slink
    .field public class @foo _slink

    // parameters
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 8
//================================================================================
// scope: foo (level : 2)

.line 0xfeefee

// TYPE subroutine_5 = function^;
.class sealed T_foo_subroutine_5 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 i) runtime managed {}
}

.line 0xfeefee

// TYPE subroutine_6 = procedure^;
.class sealed T_foo_subroutine_6 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke(int32 i) runtime managed {}
}

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

.line 11

    .method public
    int32 TestPfn(int32 i)
    {
        .maxstack 32
    
        .locals init(class @foo_testPfn _F)
        
        newobj instance void @foo_testPfn::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @foo @foo_testPfn::_slink
        
        ldloc _F
        ldarg i
        stfld int32 @foo_testPfn::i
    
    L_Entry:
        .line 13
        ldloc _F
        ldloc _F
        ldfld int32 @foo_testPfn::i
        ldc.i4 1000
        mul
        ldloc _F
        ldfld class @foo @foo_testPfn::_slink
        ldfld int32 @foo::FooV
        add
        stfld int32 @foo_testPfn::_fnvalue
        .line 14
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "foo.testPfn("
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld int32 @foo_testPfn::i
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 41 // ')'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @foo_testPfn::_fnvalue
        ret
    }

.line 17

    .method public
    void Bar1(int32 i, class T_foo_subroutine_1 Pfn)
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
        
        ldloc _F
        ldarg Pfn
        stfld class T_foo_subroutine_1 @foo_bar1::Pfn
    
    L_Entry:
        .line 21
        ldloc _F
        ldloc _F
        ldfld int32 @foo_bar1::i
        stfld int32 @foo_bar1::Bar1V
        .line 22
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "foo.bar1"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 23
        ldloc _F
        ldloc _F
        ldfld class T_foo_subroutine_1 @foo_bar1::Pfn
        ldloc _F
        ldfld int32 @foo_bar1::i
        call instance int32 T_foo_subroutine_1::Invoke(int32 i)
        stfld int32 @foo_bar1::Tmp
        .line 24
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "pfn = "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld int32 @foo_bar1::Tmp
        call instance void [lpcRuntime]LPC.File::Write(int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 25
        ldloc _F
        ldfld int32 @foo_bar1::i
        ldc.i4 3
        clt
        brfalse L_if_end_1
        .line 25
        ldloc _F
        ldfld class @foo @foo_bar1::_slink
        ldloc _F
        ldfld int32 @foo_bar1::i
        ldc.i4 1
        add
        ldloc _F
        ldfld class T_foo_subroutine_1 @foo_bar1::Pfn
        call instance void @foo::Bar1(int32 i, class T_foo_subroutine_1 Pfn)
    L_if_end_1:
        .line 26
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

.line 29

    .method public
    void Bar2(class T_foo_subroutine_3 Pfn)
    {
        .maxstack 32
    
        .locals init(class @foo_bar2 _F)
        
        newobj instance void @foo_bar2::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @foo @foo_bar2::_slink
        
        ldloc _F
        ldarg Pfn
        stfld class T_foo_subroutine_3 @foo_bar2::Pfn
    
    L_Entry:
        .line 51
        ldloc _F
        ldc.i4 1000
        stfld int32 @foo_bar2::Bar2V
        .line 52
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "foo.bar2"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 53
        ldloc _F
        ldfld class T_foo_subroutine_3 @foo_bar2::Pfn
        ldloc _F
        ldfld class @foo @foo_bar2::_slink
        ldfld int32 @foo::FooV
        call instance void T_foo_subroutine_3::Invoke(int32 i)
        .line 54
        ldloc _F
        ldfld class @foo @foo_bar2::_slink
        ldc.i4 1
        ldloc _F
        ldftn instance int32 @foo_bar2::TestPfn(int32 i)
        newobj instance void T_foo_bar2_subroutine_4::.ctor(object, native uint)
        call instance void @foo::Bar1(int32 i, class T_foo_subroutine_1 Pfn)
        .line 55
        ldloc _F
        ldloc _F
        ldftn instance int32 @foo_bar2::TestPfn(int32 i)
        newobj instance void T_foo_bar2_subroutine_4::.ctor(object, native uint)
        call instance void @foo_bar2::Moo(class T_foo_bar2_subroutine_2 Pfn)
        .line 56
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

.line 59

    .method public
    void ProcPfn(int32 i)
    {
        .maxstack 32
    
        .locals init(class @foo_procPfn _F)
        
        newobj instance void @foo_procPfn::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @foo @foo_procPfn::_slink
        
        ldloc _F
        ldarg i
        stfld int32 @foo_procPfn::i
    
    L_Entry:
        .line 61
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "foo.procPfn("
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld int32 @foo_procPfn::i
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 41 // ')'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    
    L_Epilogue:
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
    .field public static int32 v
}

.line 8

.method static
void Foo()
{
    .maxstack 32

    .locals init(class @foo _F)
    
    newobj instance void @foo::.ctor()
    stloc _F

L_Entry:
    .line 65
    ldloc _F
    ldc.i4 123
    stfld int32 @foo::FooV
    .line 66
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "foo"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 67
    ldloc _F
    ldc.i4 0
    ldloc _F
    ldftn instance int32 @foo::TestPfn(int32 i)
    newobj instance void T_foo_subroutine_5::.ctor(object, native uint)
    call instance void @foo::Bar1(int32 i, class T_foo_subroutine_1 Pfn)
    .line 68
    ldloc _F
    ldloc _F
    ldftn instance void @foo::ProcPfn(int32 i)
    newobj instance void T_foo_subroutine_6::.ctor(object, native uint)
    call instance void @foo::Bar2(class T_foo_subroutine_3 Pfn)
    .line 69
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
    .line 73
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "main"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 74
    call void Foo()
    .line 75
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
