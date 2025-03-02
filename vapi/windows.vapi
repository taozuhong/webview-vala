/*
* Copyright(C) Taozuhong(https://github.com/taozuhong)
* Important:
*   These functions are a part of the Kangaroo tool suite;
*   Copyright(C) 2019-present Taozuhong. All rights reserved.
*
* Author:    taozuhong
* Created:   2.20.2020
*/

[CCode (cprefix = "", lower_case_cprefix = "", cheader_filename = "windows.h")]
namespace Windows {
	public uint CREATE_NO_WINDOW;
	public uint DETACHED_PROCESS;
	public uint CREATE_NEW_CONSOLE;
	public uint INFINITE;
	public uint NORMAL_PRIORITY_CLASS;
	public uint FILE_ATTRIBUTE_HIDDEN;

	public struct FILETIME {
		public uint dwLowDateTime;
		public uint dwHighDateTime;
	}
	
	[CCode (cname = "SECURITY_ATTRIBUTES", has_type_id = false)]
	public struct SecurityAttributes {
		public uint     nLength;
		public void*   lpSecurityDescriptor;
		public int     bInheritHandle;
	}

	[CCode (cname = "STARTUPINFOA", has_type_id = false)]
	public struct StartupInfo {
		public ulong  	cb;
		public void*  	lpReserved;
		public void*  	lpDesktop;
		public void*  	lpTitle;
		public ulong	dwX;
		public ulong	dwY;
		public ulong	dwXSize;
		public ulong	dwYSize;
		public ulong	dwXCountChars;
		public ulong	dwYCountChars;
		public ulong	dwFillAttribute;
		public ulong	dwFlags;
		public ushort	wShowWindow;
		public ushort 	cbReserved2;
		public void*  	lpReserved2;
		public void* 	hStdInput;
		public void* 	hStdOutput;
		public void* 	hStdError;
	}

	[CCode (cname = "PROCESS_INFORMATION", has_type_id = false)]
	public struct ProcessInformation {
		public void* 	hProcess;
		public void* 	hThread;
		public ulong  	dwProcessId;
		public ulong  	dwThreadId;
	}

	[CCode (cname = "LASTINPUTINFO", has_type_id = false)]
	public struct LASTINPUTINFO {
		uint32	cbSize;
		ulong 	dwTime;
	}

	[CCode (cname = "SHELLEXECUTEINFOA", destroy_function = "", has_type_id = false)]
	public struct ShellExecuteInfo {
		public ulong 	cbSize;
		public ulong	fMask;
		public void*	hwnd;
		public string	lpVerb;
		public string	lpFile;
		public string	lpParameters;
		public string	lpDirectory;
		public int		nShow;
		public void*	hInstApp;
		public void*	lpIDList;
		public string	lpClass;
		public void*	hkeyClass;
		public ulong	dwHotKey;
		[CCode (cname = "DUMMYUNIONNAME.hIcon")]
		public void* 	hIcon;
		[CCode (cname = "DUMMYUNIONNAME.hMonitor")]
		public void*	hMonitor;
		public void*	hProcess;
	}

	[CCode (cname = "unsigned long", cprefix = "COINIT_", has_type_id = false)]
	public enum COINIT {
		APARTMENTTHREADED,
		MULTITHREADED,
		DISABLE_OLE1DDE,
		SPEED_OVER_MEMORY
	}

	public int _dup(int fd);
	public int _dup2(int fd1, int fd2);
	public int _close(int fd);
	public void* _get_osfhandle(int fd);
	public int _pipe(int[] fds, int textmode);

	public void exit(int rc);
	public int waitpid(int pid);

	public int CloseHandle(void* hObject);
	public ulong WaitForSingleObject(void* hHandle, ulong dwMilliseconds);

	public uint GetLastError();
	public uint FormatMessage(uint dwFlags, string lpSource, uint dwMessageId, uint dwLanguageId, uint8[] lpBuffer, va_list Arguments);

	public void* WSACreateEvent();
	public bool WSAResetEvent(void* hEventObject);
	public int WSAEventSelect(int socket, void* hEventObject, long lNetworkEvents);

	[CCode (cname = "CreateProcessA")]
	public int CreateProcess(
		string? 			lpApplicationName,
		string? 			lpCommandLine,
		SecurityAttributes* lpProcessAttributes,
		SecurityAttributes* lpThreadAttributes,
		int					bInheritHandles,
		ulong				dwCreationFlags,
		void*               lpEnvironment,
		void*               lpCurrentDirectory,
		StartupInfo*        lpStartupInfo,
		ProcessInformation* lpProcessInformation
	);

	public ulong GetTickCount();
	public bool GetLastInputInfo(out LASTINPUTINFO lii);

	[CCode (cname = "CoInitializeEx")]
	public void* CoInitializeEx(void* pvReserved, ulong dwCoInit);

	[CCode (cname = "CoUninitialize")]
	public void CoUninitialize();
	
	[CCode (cname = "ShellExecuteExA")]
	public int ShellExecuteEx(ShellExecuteInfo* pExecInfo);

	[CCode (cname = "SetFileAttributesA")]
	public int SetFileAttributes(string lpFileName, ulong  dwFileAttributes);

	[CCode (cname = "CreatePipe")]
	public bool CreatePipe(size_t* hReadPipe, size_t* hWritePipe, SecurityAttributes *lpPipeAttributes, ulong nSize);

	public void LoadLibraryA(
		string lpLibFileName
	);

	public int FreeLibrary(
		void* hLibModule
	);

	public void* GetModuleHandleA(
		string? lpModuleName
	);

	public void* GetProcAddress(
		void* hModule,
		string lpProcName
	);

    public void* CreateWindowExA (
        uint dwExStyle,
        string lpClassName,
        string lpWindowName,
        uint dwStyle,
        int X,
        int Y,
        int nWidth,
        int nHeight,
        void* hWndParent,
        void* hMenu,
        void* hInstance,
        void* lpParam
    );
	public int SetWindowPos(void* hWnd, void* hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags);

	[CCode (cprefix = "", lower_case_cprefix = "", cheader_filename = "windows.h,wincred.h")]
	namespace Credential {
		[CCode (cprefix = "CRED_TYPE_")]
		public enum CredentialType
		{
			GENERIC = 1,
			DOMAIN_PASSWORD,
			DOMAIN_CERTIFICATE,
			DOMAIN_VISIBLE_PASSWORD,
			GENERIC_CERTIFICATE,
			DOMAIN_EXTENDED,
			MAXIMUM,
			MAXIMUM_EX = MAXIMUM + 1000,
		}

		public struct ATTRIBUTEA {
			string  Keyword;
			uint  Flags;
			uint  ValueSize;
			uint8[] Value;
		}

		[Compact]
		[CCode (cname = "struct _CREDENTIALA", has_type_id = false, has_destroy_function = false)]
		public struct CREDENTIALA
		{
			public uint Flags;
			public CredentialType Type;
			public string TargetName;
			public string Comment;
			public FILETIME LastWritten;
			// public uint CredentialBlobSize;
			[CCode (array_length_cname = "CredentialBlobSize", array_length_pos = "4.1")]
			public uint8[] CredentialBlob;
			public uint Persist;
			public uint AttributeCount;
			public void* Attributes;
			public string TargetAlias;
			public string UserName;
		}

		public int CredReadA(string target, CredentialType type, int reservedFlag, out void* pCredential);

		public int CredWriteA(ref CREDENTIALA userCredential, uint32 flags);

		public int CredDeleteA(string TargetName, CredentialType Type, uint Flags);

		public int CredEnumerateA(string filter, int flag, out int count, out void** pCredentials);

		public int CredFree(void* cred);
	}

	[CCode (cprefix = "", lower_case_cprefix = "", cheader_filename = "windows.h,dbghelp.h")]
	namespace DbgHelp {
		public enum AddressMode {
			AM1616 = 0,
			AM1632,
			Real,
			Flat
		}

		[CCode (cname = "IMAGEHLP_LINE64")]
		public struct ImageHelpLine {
			uint32 SizeOfStruct;
			void*  Key;
			uint32 LineNumber;
			string FileName;
			uint32 Address;
		}

		[CCode (cname = "IMAGEHLP_SYMBOL64")]
		public struct ImageHelpSymbol64 {
			uint32 SizeOfStruct;
			uint32 Address;
			uint32 Size;
			uint32 Flags;
			uint32 MaxNameLength;
			string Name;
		}

		public struct ADDRESS {
			uint32 Offset;
			uint16 Segment;
			AddressMode Mode;
		}

		public struct KDHELP {
			uint32 Thread;
			uint32 ThCallbackStack;
			uint32 NextCallback;
			uint32 FramePointer;
			uint32 KiCallUserMode;
			uint32 KeUserCallbackDispatcher;
			uint32 SystemRangeStart;
			uint32 ThCallbackBStore;
			uint32 KiUserExceptionDispatcher;
			uint32 StackBase;
			uint32 StackLimit;
			uint32[] Reserved;
		}

		public struct STACKFRAME64 {
			ADDRESS AddrPC;
			ADDRESS AddrReturn;
			ADDRESS AddrFrame;
			ADDRESS AddrStack;
			void*   FuncTableEntry;
			uint32[] Params;
			int Far;
			int Virtual;
			uint32[]   Reserved;
			KDHELP  KdHelp;
			ADDRESS AddrBStore;
		}

		public int SymInitialize(
			void* hProcess,
			string UserSearchPath,
			int fInvadeProcess
		);

		public int SymCleanup(
			void* hProcess
		);

		public void* SymFunctionTableAccess64(
			void* hProcess,
			uint64 addrBase
		);

		public int SymGetLineFromAddr64(
			void* hProcess, 
			uint64 qwAddr, 
			out uint32 pdwDisplacement, 
			out ImageHelpLine line64
		);

		public uint64 SymGetModuleBase64(
			void*  hProcess, 
			uint64 qwAddr
		);

		public int SymGetSymFromAddr64(
			void* hProcess, 
			uint64 qwAddr, 
			out uint64 pdwDisplacement, 
			out ImageHelpSymbol64 Symbol
		);

		public uint64 SymLoadModule64(
			void* hProcess, 
			void*  hFile, 
			string ImageName, 
			string ModuleName,
			uint64 BaseOfDll,
			uint32 SizeOfDll
		);

		public int StackWalk64(
		uint32 MachineType,
		void* hProcess,
		void* hThread,
		STACKFRAME64 StackFrame,
		void* ContextRecord,
		void* ReadMemoryRoutine,
		void* FunctionTableAccessRoutine,
		void* GetModuleBaseRoutine,
		void* TranslateAddress
		);
	}
}
