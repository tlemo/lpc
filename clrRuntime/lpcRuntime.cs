
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

// LPC Runtime for MSIL/CLR code generation

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.IO;

#pragma warning disable CS0414 // field is assigned but never used

namespace LPC
{

///////////////////////////////////////////////////////////////////////////////
//
public class NonLocalGoto
{
    public NonLocalGoto(Int32 label)
    {
        this.label = label;
    }

    public Int32 label;
}


///////////////////////////////////////////////////////////////////////////////
//
public static class Helpers
{
    public static Int32 Mod(Int32 i, Int32 j)
    {
        Runtime.RTCheck(j > 0, "invalid divisor");
        return i >= 0 ? (i % j) : (j + (i % j));
    }

    public static void Halt()
    {
        Environment.Exit(2);
    }

    public static Int32 Trunc(Double d)
    {
        return (Int32)Math.Truncate(d);
    }

    public static Int32 Round(Double d)
    {
        return (Int32)Math.Round(d);
    }

    public static Double Sin(Double d)
    {
        return Math.Sin(d);
    }

    public static Double Cos(Double d)
    {
        return Math.Cos(d);
    }

    public static Double Exp(Double d)
    {
        return Math.Exp(d);
    }

    public static Double Ln(Double d)
    {
        return Math.Log(d);
    }

    public static Double Sqrt(Double d)
    {
        return Math.Sqrt(d);
    }

    public static Double Arctan(Double d)
    {
        return Math.Atan(d);
    }

    public static bool StrcmpEQ(string s1, string s2)
    {
        return String.Compare(s1, s2) == 0;
    }

    public static bool StrcmpNE(string s1, string s2)
    {
        return String.Compare(s1, s2) != 0;
    }

    public static bool StrcmpLT(string s1, string s2)
    {
        return String.Compare(s1, s2) < 0;
    }

    public static bool StrcmpGT(string s1, string s2)
    {
        return String.Compare(s1, s2) > 0;
    }

    public static bool StrcmpLE(string s1, string s2)
    {
        return String.Compare(s1, s2) <= 0;
    }

    public static bool StrcmpGE(string s1, string s2)
    {
        return String.Compare(s1, s2) >= 0;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// A *very* basic heap implementation
//
public unsafe static class Heap
{
    const int HEAP_SIZE = 128 * 1024; // 128kb
    const UInt32 HEAP_MAGIC = 0xc5d4e3f2;

    struct FreeBlock
    {
        public int Start;
        public int Size;

        public FreeBlock(int Start, int Size)
        {
            Debug.Assert(Start >= 0 && Start < HEAP_SIZE);
            Debug.Assert(Size > 0 && Start + Size <= HEAP_SIZE);

            this.Start = Start;
            this.Size = Size;
        }
    }

    struct Header
    {
        public UInt32 Magic;
        public Int32 Size;
    }

    struct Buffer
    {
        public fixed byte Mem[HEAP_SIZE];
    }

    static Buffer m_buffer = new Buffer();
    static List<FreeBlock> m_freeBlocks = new List<FreeBlock>();

    static Heap()
    {
        m_freeBlocks.Add(new FreeBlock(0, HEAP_SIZE));
    }

    public static void* Malloc(Int32 size)
    {
        fixed(byte* basePtr = m_buffer.Mem)
        {
            // minimum allocation size is 4 bytes
            //
            int realSize = sizeof(Header) + Math.Max(size, 4);

            // sort the free blocks by size for a "best-fit" allocation
            //
            m_freeBlocks.Sort((a, b) => a.Size.CompareTo(a.Size));

            // find a free block that will fit the requested size
            //
            int index = m_freeBlocks.FindIndex(a => a.Size >= realSize);
            Runtime.RTCheck(index >= 0, "out of heap memory");

            var freeBlock = m_freeBlocks[index];

            // remove the free block and add back the rest of the block if any
            //
            m_freeBlocks.RemoveAt(index);

            if(freeBlock.Size > realSize)
            {
                m_freeBlocks.Add(new FreeBlock(freeBlock.Start + realSize, freeBlock.Size - realSize));
            }

            // setup the newly allocated chunk and return it...
            //
            Header* pHeader = (Header*)(basePtr + freeBlock.Start);
            pHeader->Magic = HEAP_MAGIC;
            pHeader->Size = realSize;

            return (byte*)(pHeader + 1);
        }
    }

    public static void Free(void* p)
    {
        fixed(byte* basePtr = m_buffer.Mem)
        {
            Header* pHeader = (Header*)p - 1;
            var offset = (byte*)pHeader - basePtr;

            Runtime.RTCheck(offset >= 0 && offset < HEAP_SIZE, "disposing an invalid pointer");
            Runtime.RTCheck(pHeader->Magic == HEAP_MAGIC, "corrupted heap block");

            var realSize = pHeader->Size;

            Runtime.RTCheck(offset + realSize <= HEAP_SIZE, "heap overflow");

            Memset((byte*)pHeader, realSize);
            m_freeBlocks.Add(new FreeBlock((int)offset, realSize));
        }
    }

    static void Memset(byte* p, int size)
    {
        for(int i = 0; i < size; ++i)
            p[i] = 0;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// set operations
//
public unsafe struct Set
{
    // CONSIDER: generate inline code
    //
    public static bool Contains(byte* bits, Int32 size, Int32 value)
    {
        if(value < 0 || value >= size * 8)
            return false;

        return (bits[value / 8] & (1 << (value % 8))) != 0;
    }

    // CONSIDER: generate inline code
    //
    public static bool Equal(byte* bits1, byte* bits2, Int32 size)
    {
        for(int i = 0; i < size; ++i)
            if(bits1[i] != bits2[i])
                return false;

        return true;
    }

    // s1 included in s2?
    //
    // CONSIDER: generate inline code
    //
    public static bool IsSubset(byte* bits1, byte* bits2, Int32 size)
    {
        for(int i = 0; i < size; ++i)
        {
            if((bits1[i] & bits2[i]) != bits1[i])
                return false;
        }

        return true;
    }

    // s1 | s2
    //
    public static void Union(byte* bits1, byte* bits2, byte* resultBits, Int32 size)
    {
        for(int i = 0; i < size; ++i)
        {
            resultBits[i] = (byte)(bits1[i] | bits2[i]);
        }
    }

    // s1 - s2
    //
    public static void Difference(byte* bits1, byte* bits2, byte* resultBits, Int32 size)
    {
        for(int i = 0; i < size; ++i)
        {
            resultBits[i] = (byte)(bits1[i] & ~bits2[i]);
        }
    }

    // s1 & s2
    //
    public static void Intersection(byte* bits1, byte* bits2, byte* resultBits, Int32 size)
    {
        for(int i = 0; i < size; ++i)
        {
            resultBits[i] = (byte)(bits1[i] & bits2[i]);
        }
    }

    // checks that the set elements are in the [min, max] range
    //
    public static void RTCheck(byte* bits, Int32 size, Int32 min, Int32 max)
    {
        Debug.Assert(min <= max);
        Debug.Assert(min >= 0 && max < size * 8);

        for(int i = 0; i < min; ++i)
        {
            if((bits[i / 8] & (1 << (i % 8))) != 0)
                Runtime.RTError("set overflow");
        }

        for(int i = max + 1; i < size * 8; ++i)
        {
            if((bits[i / 8] & (1 << (i % 8))) != 0)
                Runtime.RTError("set overflow");
        }
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// an internal abstraction for an indirect mapping of integer ids to "class objects"
//
struct Handle<T>
    where T : IDisposable
{
    static Dictionary<uint, T> m_resources = new Dictionary<uint,T>();
    static uint m_nextId = 1;
    static Queue<uint> m_freeList = new Queue<uint>();

    uint m_id;

    public bool IsNull()
    {
        return m_id == 0;
    }

    public bool Equal(Handle<T> h)
    {
        return m_id == h.m_id;
    }

    public void AttachResource(T resource)
    {
        Debug.Assert(IsNull());

        if(m_freeList.Count > 0)
        {
            m_id = m_freeList.Dequeue();
        }
        else
        {
            Debug.Assert(m_nextId != 0);
            m_id = m_nextId++;
        }

        m_resources.Add(m_id, resource);
    }

    public T GetResource()
    {
        Debug.Assert(m_id != 0);
        return m_resources[m_id];
    }

    public void Close()
    {
        if(m_id != 0)
        {
            m_resources[m_id].Dispose();
            m_resources.Remove(m_id);
            m_freeList.Enqueue(m_id);
            m_id = 0;
        }
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// the underlying representation of the File type
//
class FileStreams : IDisposable
{
    // this can be null if the base stream is the console
    //
    public Stream BaseStream;

    // these fields are exclusive
    // (ie. only one of them is expected to be non-null)
    //
    // they can also be both null if reset/rewrite is not called
    // (ie. the file is in the "unknown" mode)
    //
    public TextReader Reader;
    public TextWriter Writer;

    public bool IsValid()
    {
        bool check1 = BaseStream != null || Reader != null || Writer != null;
        bool check2 = Reader == null || Writer == null;
        return check1 && check2;
    }

    public void Reset()
    {
        Debug.Assert(IsValid());

        Runtime.RTCheck(BaseStream != null, "reset() is not valid on the input file");

        if(Writer != null)
        {
            Writer.Flush();
            Writer = null;
        }

        if(Reader == null)
            Reader = new StreamReader(BaseStream);

        BaseStream.Seek(0, SeekOrigin.Begin);
    }

    public void Rewrite()
    {
        Debug.Assert(IsValid());
        Debug.Assert(BaseStream != null);

        Runtime.RTCheck(BaseStream != null, "rewrite() is not valid on the output file");

        if(Reader != null)
            Reader = null;

        if(Writer == null)
            Writer = new StreamWriter(BaseStream);

        BaseStream.Seek(0, SeekOrigin.Begin);
    }

    public void Dispose()
    {
        if(Writer != null)
            Writer.Dispose();
        else if(Reader != null)
            Reader.Dispose();
        else if(BaseStream != null)
            BaseStream.Dispose();
    }
}


///////////////////////////////////////////////////////////////////////////////
//
public struct File
{
    Handle<FileStreams> m_handle;

    enum Mode { Unknown = 0, Reading, Writting }

    const byte _MAX_CHAR = 127;

    FileStreams _Streams
    {
        get 
        {
            var streams = m_handle.GetResource();
            Debug.Assert(streams.IsValid());
            return streams;
        }
    }

    // the "file var" as defined by the Pascal language
    //
    public Byte FileVar;

    Mode _Mode
    {
        get
        {
            var streams = _Streams;

            if(streams.Reader != null)
                return Mode.Reading;
            else if(streams.Writer != null)
                return Mode.Writting;
            else
                return Mode.Unknown;
        }
    }

    public void Init(Int32 index)
    {
        Debug.Assert(m_handle.IsNull());
        Debug.Assert(FileVar == 0);

        var filename = Runtime.GetFileName(index);

        var streams = new FileStreams();
        m_handle.AttachResource(streams);

        if(index == Runtime.INPUT_FILE_IDX)
        {
            if(filename == null)
            {
                streams.Reader = Console.In;
            }
            else
            {
                // BaseStream is not set for input/output
                //
                streams.Reader = new StreamReader(new FileStream(filename, FileMode.Open));
            }
        }
        else if(index == Runtime.OUTPUT_FILE_IDX)
        {
            if(filename == null)
            {
                streams.Writer = Console.Out;
            }
            else
            {
                // BaseStream is not set for input/output
                //
                streams.Writer = new StreamWriter(new FileStream(filename, FileMode.Create));
            }
        }
        else
        {
            streams.BaseStream = new FileStream(filename, FileMode.OpenOrCreate);
        }

        _Invalidate();
    }

    public void Init(string name)
    {
        Debug.Assert(m_handle.IsNull());
        Debug.Assert(FileVar == 0);

        var streams = new FileStreams();
        streams.BaseStream = new MemoryStream();
        m_handle.AttachResource(streams);

        _Invalidate();
    }

    public void Close()
    {
        m_handle.Close();
    }

    public bool Eof()
    {
        Runtime.RTCheck(_Mode == Mode.Reading, "eof() used on non-reading file");

        return _Streams.Reader.Peek() == -1;
    }

    bool _IsEoln(int c)
    {
        return c == '\n' || c == '\r';
    }

    public bool Eoln()
    {
        _SyncFileVar(); 
        return _IsEoln(FileVar);
    }

    public void Rewrite()
    {
        if(m_handle.IsNull())
        {
            Init("tmp");
        }

        _Streams.Rewrite();
        _Invalidate();
    }

    public void Reset()
    {
        _Streams.Reset();
        _Invalidate();
    }

    void _Invalidate()
    {
        FileVar = 0;
    }

    void _WriteString(string s)
    {
        Runtime.RTCheck(_Mode == Mode.Writting, "file is not in writeable mode");

        foreach(var c in s)
            _WriteChar(c);

        _Invalidate();
    }

    void _WriteChar(char c)
    {
        Debug.Assert(_Mode == Mode.Writting);

        var writer = _Streams.Writer;

        // normalize output end-of-line markers
        //
        if(_IsEoln(c))
            writer.WriteLine();
        else
            writer.Write(c);
    }

    void _SyncFileVar()
    {
        Debug.Assert(_Mode == Mode.Reading);

        if(FileVar != 0)
        {
            Runtime.RTCheck(FileVar > 0 && FileVar <= _MAX_CHAR, "invalid file var value");
            return;
        }

        var c = _Streams.Reader.Peek();
        Runtime.RTCheck(c != -1, "attempting to read past the end of the file");

        if(_IsEoln(c))
            FileVar = _CharToByte('\r');
        else
            FileVar = _CharToByte(c);
    }

    // called by the generated code when the file variable is about to be read
    //
    public void VarRead()
    {
        if(FileVar == 0)
            _SyncFileVar();
    }

    public void Put()
    {
        Runtime.RTCheck(_Mode == Mode.Writting, "put() used on non-writing file");
        Runtime.RTCheck(FileVar != 0, "file var is not set before put");
        Runtime.RTCheck(FileVar > 0 && FileVar <= _MAX_CHAR, "invalid file var value");

        _WriteChar(_ByteToChar(FileVar));
        _Invalidate();
    }

    public void Get()
    {
        Runtime.RTCheck(_Mode == Mode.Reading, "get() used on non-reading file");
        
        var reader = _Streams.Reader;

        // normalize input end-of-line markers
        //
        if(_IsEoln(reader.Peek()))
        {
            reader.ReadLine();
        }
        else
        {
            var c = reader.Read();
            Runtime.RTCheck(c != -1, "attempting to read past the end of the file");
        }

        _Invalidate();
    }

    public void Page()
    {
        FileVar = _CharToByte('\r');
        Put();
    }

    public void WriteLn()
    {
        FileVar = _CharToByte('\r');
        Put();
    }

    public void Write(Byte c)
    {
        Format(0, 0, c);
    }

    public void Write(Int32 i)
    {
        Format(0, 0, i);
    }

    public void Write(Double d)
    {
        Format(0, 0, d);
    }

    public void Write(string s)
    {
        Format(0, 0, s);
    }

    // 'char'
    //
    public void Format(Int32 width, Int32 precision, Byte c)
    {
        Runtime.RTCheck(precision == 0, "precision is only valid for 'real' numbers");

        if(width == 0)
            width = 1;

        var format = String.Format("{{0,{0}}}", width);
        var str = String.Format(format, _ByteToChar(c));
        _WriteString(str);
    }

    public void Format(Int32 width, Int32 precision, Int32 i)
    {
        Runtime.RTCheck(precision == 0, "precision is only valid for 'real' numbers");

        if(width == 0)
            width = 1;

        var format = String.Format("{{0,{0}}}", width);
        var str = String.Format(format, i);
        _WriteString(str);
    }

    public void Format(Int32 width, Int32 precision, Double d)
    {
        Runtime.RTCheck(width >= 0, "invalid write() field width");
        Runtime.RTCheck(precision >= 0, "invalid write() field precision");

        if(width == 0)
            width = 10;

        string format;

        if(precision == 0)
            format = String.Format("{{0,{0}}}", width);
        else
            format = String.Format("{{0,{0}:f{1}}}", width, precision);

        var str = String.Format(format, d);
        _WriteString(str);
    }

    public void Format(Int32 width, Int32 precision, string s)
    {
        Runtime.RTCheck(precision == 0, "precision is only valid for 'real' numbers");

        if(width == 0)
        {
            _WriteString(s);
        }
        else
        {
            string format = String.Format("{{0,{0}:{1}}}", width, width);
            var str = String.Format(format, s);
            _WriteString(str);
        }
    }

    public void ReadLn()
    {
        Runtime.RTCheck(_Mode == Mode.Reading, "file is not in readable mode");

        _Streams.Reader.ReadLine();
        _Invalidate();
    }

    // "string"
    //
    unsafe
    public void Read(Byte* str, Int32 length)
    {
        Runtime.RTCheck(_Mode == Mode.Reading, "file is not in readable mode");
        Runtime.RTCheck(length > 0, "invalid string length");

        var reader = _Streams.Reader;
        bool reachedEnd = false;

        // skip whitespaces (including newlines)
        //
        for(;;)
        {
            var c = reader.Peek();

            if(c == -1 || !Char.IsWhiteSpace((char)c))
                break;

            reader.Read();
        }

        // read the string
        //
        for(int i = 0; i < length; ++i)
        {
            if(!reachedEnd)
            {
                var c = reader.Peek();

                if(c == -1 || _IsEoln(c))
                    reachedEnd = true;
            }

            str[i] = _CharToByte(reachedEnd ? ' ' : reader.Read());
        }

        _Invalidate();
    }

    string _GetNumber(bool realNumber)
    {
        Runtime.RTCheck(_Mode == Mode.Reading, "file is not in readable mode");

        var token = "";
        var reader = _Streams.Reader;

        // manually match: [ws*][sign]digits[.digits]
        //
        while(Char.IsWhiteSpace((char)reader.Peek()))
            reader.Read();

        if(reader.Peek() == '+' || reader.Peek() == '-')
            token += (char)reader.Read();

        while(Char.IsDigit((char)reader.Peek()))
            token += (char)reader.Read();

        if(realNumber)
        {
            if(reader.Peek() == '.')
                token += (char)reader.Read();

            while(Char.IsDigit((char)reader.Peek()))
                token += (char)reader.Read();
        }

        _Invalidate();

        return token;
    }

    unsafe
    public void Read(Int32* p, Int32 min, Int32 max)
    {
        var token = _GetNumber(false);
        var value = Int32.Parse(token);
        Runtime.RTCheckRange(value, min, max);
        *p = value;
    }

    unsafe
    public void Read(Int16* p, Int32 min, Int32 max)
    {
        var token = _GetNumber(false);
        var value = Int16.Parse(token);
        Runtime.RTCheckRange(value, min, max);
        *p = value;
    }

    unsafe
    public void Read(UInt16* p, Int32 min, Int32 max)
    {
        var token = _GetNumber(false);
        var value = UInt16.Parse(token);
        Runtime.RTCheckRange(value, min, max);
        *p = value;
    }

    unsafe
    public void Read(SByte* p, Int32 min, Int32 max)
    {
        var token = _GetNumber(false);
        var value = SByte.Parse(token);
        Runtime.RTCheckRange(value, min, max);
        *p = value;
    }

    unsafe
    public void Read(Byte* p, Int32 min, Int32 max)
    {
        var token = _GetNumber(false);
        var value = Byte.Parse(token);
        Runtime.RTCheckRange(value, min, max);
        *p = value;
    }

    unsafe
    public void Read(Double* p)
    {
        var token = _GetNumber(true);
        *p = Double.Parse(token);
    }

    // "char"
    //
    unsafe
    public void ReadChar(Byte* p, Int32 min, Int32 max)
    {
        Runtime.RTCheck(_Mode == Mode.Reading, "file is not in readable mode");

        _SyncFileVar();

        var value = FileVar;

        // cap the char range to [1..127]
        //
        min = Math.Max(min, 1);
        max = Math.Min(max, 127);

        Runtime.RTCheckRange(value, min, max);
        *p = value;

        Get();
    }

    unsafe
    public void Read(Boolean* p, Int32 min, Int32 max)
    {
        Runtime.RTError("reading boolean values from text files is not supported");
    }

    static byte _CharToByte(int c)
    {
        Runtime.RTCheck(c > 0 && c <= _MAX_CHAR, "invalid character");
        return (byte)c;
    }

    static char _ByteToChar(byte c)
    {
        Runtime.RTCheck(c > 0 && c <= _MAX_CHAR, "invalid character");
        var str = Char.ConvertFromUtf32(c);
        return str[0];
    }
}


///////////////////////////////////////////////////////////////////////////////
//
public class ArgMapEntry
{
    public string ArgName;
    public string FileName;

    public ArgMapEntry(string argName)
    {
        this.ArgName = argName;
        this.FileName = null;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
public static class Runtime
{
    public const int INPUT_FILE_IDX = 0;
    public const int OUTPUT_FILE_IDX = 1;
    public const int FIRST_ARG_FILE_IDX = 2;

    static ArgMapEntry[] m_argMap;

    static bool _HandleArg(string arg, string opt, int idx)
    {
        if(!arg.StartsWith(opt))
        {
            return false;
        }

        string fileName = arg.Substring(opt.Length);

        if(fileName == "")
        {
            _PrintHelp();
            RTError("missing argument value for {0}", opt);
        }

        if(m_argMap[idx].FileName != null)
        {
            _PrintHelp();
            RTError("{0} was already specified", opt);
        }

        m_argMap[idx].FileName = fileName;
        return true;
    }

    static void _PrintHelp()
    {
        Console.Write("\nCommand line arguments: ");

        for (int i = FIRST_ARG_FILE_IDX; i < m_argMap.Length; ++i)
        {
            Console.Write("<{0}> ", m_argMap[i].ArgName);
        }

        Console.Write("[-input=<filename>] [-output=<filename>]\n");
    }

    public static void RTError(string msg, params object[] list)
    {
        Console.Write("\nRuntime Error: ");
        Console.WriteLine(msg, list);
        Environment.Exit(1);
    }

    public static void RTCheck(Boolean expr, String message)
    {
        if(!expr)
            RTError(message);
    }

    // checks that value is in [min, max] range
    //
    public static void RTCheckRange(Int32 value, Int32 min, Int32 max)
    {
        Debug.Assert(min <= max);

        if(value < min || value > max)
            RTError("value outside range");
    }

    public static string GetFileName(int index)
    {
        RTCheck(index >= 0 && index < m_argMap.Length, "invalid file index");
        return m_argMap[index].FileName;
    }

    public static void ParseCmdLine(string[] args, string[] programArgs)
    {
        Debug.Assert(m_argMap == null);

        // init the arg map
        //
        m_argMap = new ArgMapEntry[programArgs.Length];

        for(int i = 0; i < programArgs.Length; ++i)
        {
            m_argMap[i] = new ArgMapEntry(programArgs[i]);
        }

        // for each command line arg...
        //
        int idx = FIRST_ARG_FILE_IDX;

        foreach (var arg in args)
        {
            if(arg == "-debug")
            {
                Debugger.Launch();
            }
            else if(_HandleArg(arg, "-input=", INPUT_FILE_IDX))
            {
                continue;
            }
            else if(_HandleArg(arg, "-output=", OUTPUT_FILE_IDX))
            {
                continue;
            }
            else
            {
                if(idx >= m_argMap.Length)
                {
                    _PrintHelp();
                    RTError("too many command line arguments");
                }

                Debug.Assert(m_argMap[idx].FileName == null);
                m_argMap[idx++].FileName = arg;
            }
        }

        if(idx != m_argMap.Length)
        {
            _PrintHelp();
            RTError("missing required command line arguments");
        }
    }
}

}
 