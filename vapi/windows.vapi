/*
 * windows.vapi - Windows API bindings for Vala
 * Generated from Windows SDK 10.0.10240.0
 * 
 * Copyright (c) 2025 taozuhong
 * Licensed under MIT License
 */

[CCode (lower_case_cprefix = "", cheader_filename = "windows.h")]
namespace Windows {
    // Basic Types
    [CCode (cname = "ATOM")]
    [SimpleType]
    public struct ATOM : uint16 {}

    [CCode (cname = "BOOL")]
    [SimpleType]
    public struct BOOL : int32 {}

    [CCode (cname = "BOOLEAN")]
    [SimpleType]
    public struct BOOLEAN : uint8 {}

    [CCode (cname = "BYTE")]
    [SimpleType]
    public struct BYTE : uint8 {}

    [CCode (cname = "CHAR")]
    [SimpleType]
    public struct CHAR : char {}

    [CCode (cname = "COLORREF")]
    [SimpleType]
    public struct COLORREF : uint32 {}

    [CCode (cname = "DWORD")]
    [SimpleType]
    public struct DWORD : uint32 {}

    [CCode (cname = "DWORDLONG")]
    [SimpleType]
    public struct DWORDLONG : uint64 {}

    [CCode (cname = "DWORD_PTR")]
    [SimpleType]
    public struct DWORD_PTR : size_t {}

    [CCode (cname = "DWORD32")]
    [SimpleType]
    public struct DWORD32 : uint32 {}

    [CCode (cname = "DWORD64")]
    [SimpleType]
    public struct DWORD64 : uint64 {}

    [CCode (cname = "FLOAT")]
    [SimpleType]
    public struct FLOAT : float {}

    [CCode (cname = "HACCEL")]
    [SimpleType]
    public struct HACCEL : Handle {}

    [CCode (cname = "HALF_PTR")]
    [SimpleType]
    public struct HALF_PTR : int32 {}

    [CCode (cname = "HBITMAP")]
    [SimpleType]
    public struct HBITMAP : Handle {}

    [CCode (cname = "HBRUSH")]
    [SimpleType]
    public struct HBRUSH : Handle {}

    [CCode (cname = "HCOLORSPACE")]
    [SimpleType]
    public struct HCOLORSPACE : Handle {}

    [CCode (cname = "HCONV")]
    [SimpleType]
    public struct HCONV : Handle {}

    [CCode (cname = "HCONVLIST")]
    [SimpleType]
    public struct HCONVLIST : Handle {}

    [CCode (cname = "HCURSOR")]
    [SimpleType]
    public struct HCURSOR : Handle {}

    [CCode (cname = "HDC")]
    [SimpleType]
    public struct HDC : Handle {}

    [CCode (cname = "HDDEDATA")]
    [SimpleType]
    public struct HDDEDATA : Handle {}

    [CCode (cname = "HDESK")]
    [SimpleType]
    public struct HDESK : Handle {}

    [CCode (cname = "HDROP")]
    [SimpleType]
    public struct HDROP : Handle {}

    [CCode (cname = "HDWP")]
    [SimpleType]
    public struct HDWP : Handle {}

    [CCode (cname = "HENHMETAFILE")]
    [SimpleType]
    public struct HENHMETAFILE : Handle {}

    [CCode (cname = "HFILE")]
    [SimpleType]
    public struct HFILE : int32 {}

    [CCode (cname = "HFONT")]
    [SimpleType]
    public struct HFONT : Handle {}

    [CCode (cname = "HGDIOBJ")]
    [SimpleType]
    public struct HGDIOBJ : Handle {}

    [CCode (cname = "HGLOBAL")]
    [SimpleType]
    public struct HGLOBAL : Handle {}

    [CCode (cname = "HHOOK")]
    [SimpleType]
    public struct HHOOK : Handle {}

    [CCode (cname = "HICON")]
    [SimpleType]
    public struct HICON : Handle {}

    [CCode (cname = "HINSTANCE")]
    [SimpleType]
    public struct HINSTANCE : Handle {}

    [CCode (cname = "HKEY")]
    [SimpleType]
    public struct HKEY : Handle {}

    [CCode (cname = "HKL")]
    [SimpleType]
    public struct HKL : Handle {}

    [CCode (cname = "HLOCAL")]
    [SimpleType]
    public struct HLOCAL : Handle {}

    [CCode (cname = "HMENU")]
    [SimpleType]
    public struct HMENU : Handle {}

    [CCode (cname = "HMETAFILE")]
    [SimpleType]
    public struct HMETAFILE : Handle {}

    [CCode (cname = "HMODULE")]
    [SimpleType]
    public struct HMODULE : HINSTANCE {}

    [CCode (cname = "HMONITOR")]
    [SimpleType]
    public struct HMONITOR : Handle {}

    [CCode (cname = "HPALETTE")]
    [SimpleType]
    public struct HPALETTE : Handle {}

    [CCode (cname = "HPEN")]
    [SimpleType]
    public struct HPEN : Handle {}

    [CCode (cname = "HRESULT")]
    [SimpleType]
    public struct HRESULT : int32 {}

    [CCode (cname = "HRGN")]
    [SimpleType]
    public struct HRGN : Handle {}

    [CCode (cname = "HRSRC")]
    [SimpleType]
    public struct HRSRC : Handle {}

    [CCode (cname = "HSZ")]
    [SimpleType]
    public struct HSZ : Handle {}

    [CCode (cname = "HWINSTA")]
    [SimpleType]
    public struct HWINSTA : Handle {}

    [CCode (cname = "HWND")]
    [SimpleType]
    public struct HWND : Handle {}

    [CCode (cname = "INT")]
    [SimpleType]
    public struct INT : int32 {}

    [CCode (cname = "INT_PTR")]
    [SimpleType]
    public struct INT_PTR : int64 {}

    [CCode (cname = "INT8")]
    [SimpleType]
    public struct INT8 : int8 {}

    [CCode (cname = "INT16")]
    [SimpleType]
    public struct INT16 : int16 {}

    [CCode (cname = "INT32")]
    [SimpleType]
    public struct INT32 : int32 {}

    [CCode (cname = "INT64")]
    [SimpleType]
    public struct INT64 : int64 {}

    [CCode (cname = "LANGID")]
    [SimpleType]
    public struct LANGID : uint16 {}

    [CCode (cname = "LCID")]
    [SimpleType]
    public struct LCID : uint32 {}

    [CCode (cname = "LCTYPE")]
    [SimpleType]
    public struct LCTYPE : uint32 {}

    [CCode (cname = "LGRPID")]
    [SimpleType]
    public struct LGRPID : uint32 {}

    [CCode (cname = "LONG")]
    [SimpleType]
    public struct LONG : int32 {}

    [CCode (cname = "LONGLONG")]
    [SimpleType]
    public struct LONGLONG : int64 {}

    [CCode (cname = "LONG_PTR")]
    [SimpleType]
    public struct LONG_PTR : int64 {}

    [CCode (cname = "LONG32")]
    [SimpleType]
    public struct LONG32 : int32 {}

    [CCode (cname = "LONG64")]
    [SimpleType]
    public struct LONG64 : int64 {}

    [CCode (cname = "LPARAM")]
    [SimpleType]
    public struct LPARAM : LONG_PTR {}

    [CCode (cname = "LPBOOL")]
    [SimpleType]
    public struct LPBOOL {}

    [CCode (cname = "LPBYTE")]
    [SimpleType]
    public struct LPBYTE {}

    [CCode (cname = "LPCOLORREF")]
    [SimpleType]
    public struct LPCOLORREF {}

    [CCode (cname = "LPCSTR")]
    [SimpleType]
    public struct LPCSTR {}

    [CCode (cname = "LPCTSTR")]
    [SimpleType]
    public struct LPCTSTR {}

    [CCode (cname = "LPCVOID")]
    [SimpleType]
    public struct LPCVOID {}

    [CCode (cname = "LPCWSTR")]
    [SimpleType]
    public struct LPCWSTR {}

    [CCode (cname = "LPDWORD")]
    [SimpleType]
    public struct LPDWORD {}

    [CCode (cname = "LPHANDLE")]
    [SimpleType]
    public struct LPHANDLE {}

    [CCode (cname = "LPINT")]
    [SimpleType]
    public struct LPINT {}

    [CCode (cname = "LPLONG")]
    [SimpleType]
    public struct LPLONG {}

    [CCode (cname = "LPSTR")]
    [SimpleType]
    public struct LPSTR {}

    [CCode (cname = "LPTSTR")]
    [SimpleType]
    public struct LPTSTR {}

    [CCode (cname = "LPVOID")]
    [SimpleType]
    public struct LPVOID {}

    [CCode (cname = "LPWORD")]
    [SimpleType]
    public struct LPWORD {}

    [CCode (cname = "LPWSTR")]
    [SimpleType]
    public struct LPWSTR {}

    [CCode (cname = "LRESULT")]
    [SimpleType]
    public struct LRESULT : LONG_PTR {}

    [CCode (cname = "PBOOL")]
    [SimpleType]
    public struct PBOOL {}

    [CCode (cname = "PBOOLEAN")]
    [SimpleType]
    public struct PBOOLEAN {}

    [CCode (cname = "PBYTE")]
    [SimpleType]
    public struct PBYTE {}

    [CCode (cname = "PCHAR")]
    [SimpleType]
    public struct PCHAR {}

    [CCode (cname = "PCSTR")]
    [SimpleType]
    public struct PCSTR {}

    [CCode (cname = "PCTSTR")]
    [SimpleType]
    public struct PCTSTR {}

    [CCode (cname = "PCWSTR")]
    [SimpleType]
    public struct PCWSTR {}

    [CCode (cname = "PDWORD")]
    [SimpleType]
    public struct PDWORD {}

    [CCode (cname = "PDWORDLONG")]
    [SimpleType]
    public struct PDWORDLONG {}

    [CCode (cname = "PDWORD_PTR")]
    [SimpleType]
    public struct PDWORD_PTR {}

    [CCode (cname = "PDWORD32")]
    [SimpleType]
    public struct PDWORD32 {}

    [CCode (cname = "PDWORD64")]
    [SimpleType]
    public struct PDWORD64 {}

    [CCode (cname = "PFLOAT")]
    [SimpleType]
    public struct PFLOAT {}

    [CCode (cname = "PHALF_PTR")]
    [SimpleType]
    public struct PHALF_PTR {}

    [CCode (cname = "PHANDLE")]
    [SimpleType]
    public struct PHANDLE {}

    [CCode (cname = "PHKEY")]
    [SimpleType]
    public struct PHKEY {}

    [CCode (cname = "PINT")]
    [SimpleType]
    public struct PINT {}

    [CCode (cname = "PINT_PTR")]
    [SimpleType]
    public struct PINT_PTR {}

    [CCode (cname = "PINT8")]
    [SimpleType]
    public struct PINT8 {}

    [CCode (cname = "PINT16")]
    [SimpleType]
    public struct PINT16 {}

    [CCode (cname = "PINT32")]
    [SimpleType]
    public struct PINT32 {}

    [CCode (cname = "PINT64")]
    [SimpleType]
    public struct PINT64 {}

    [CCode (cname = "PLCID")]
    [SimpleType]
    public struct PLCID {}

    [CCode (cname = "PLONG")]
    [SimpleType]
    public struct PLONG {}

    [CCode (cname = "PLONGLONG")]
    [SimpleType]
    public struct PLONGLONG {}

    [CCode (cname = "PLONG_PTR")]
    [SimpleType]
    public struct PLONG_PTR {}

    [CCode (cname = "PLONG32")]
    [SimpleType]
    public struct PLONG32 {}

    [CCode (cname = "PLONG64")]
    [SimpleType]
    public struct PLONG64 {}

    [CCode (cname = "POINTER_32")]
    [SimpleType]
    public struct POINTER_32 {}

    [CCode (cname = "POINTER_64")]
    [SimpleType]
    public struct POINTER_64 {}

    [CCode (cname = "POINTER_SIGNED")]
    [SimpleType]
    public struct POINTER_SIGNED {}

    [CCode (cname = "POINTER_UNSIGNED")]
    [SimpleType]
    public struct POINTER_UNSIGNED {}

    [CCode (cname = "PSHORT")]
    [SimpleType]
    public struct PSHORT {}

    [CCode (cname = "PSIZE_T")]
    [SimpleType]
    public struct PSIZE_T {}

    [CCode (cname = "PSSIZE_T")]
    [SimpleType]
    public struct PSSIZE_T {}

    [CCode (cname = "PSTR")]
    [SimpleType]
    public struct PSTR {}

    [CCode (cname = "PTBYTE")]
    [SimpleType]
    public struct PTBYTE {}

    [CCode (cname = "PTCHAR")]
    [SimpleType]
    public struct PTCHAR {}

    [CCode (cname = "PTSTR")]
    [SimpleType]
    public struct PTSTR {}

    [CCode (cname = "PUCHAR")]
    [SimpleType]
    public struct PUCHAR {}

    [CCode (cname = "PUHALF_PTR")]
    [SimpleType]
    public struct PUHALF_PTR {}

    [CCode (cname = "PUINT")]
    [SimpleType]
    public struct PUINT {}

    [CCode (cname = "PUINT_PTR")]
    [SimpleType]
    public struct PUINT_PTR {}

    [CCode (cname = "PUINT8")]
    [SimpleType]
    public struct PUINT8 {}

    [CCode (cname = "PUINT16")]
    [SimpleType]
    public struct PUINT16 {}

    [CCode (cname = "PUINT32")]
    [SimpleType]
    public struct PUINT32 {}

    [CCode (cname = "PUINT64")]
    [SimpleType]
    public struct PUINT64 {}

    [CCode (cname = "PULONG")]
    [SimpleType]
    public struct PULONG {}

    [CCode (cname = "PULONGLONG")]
    [SimpleType]
    public struct PULONGLONG {}

    [CCode (cname = "PULONG_PTR")]
    [SimpleType]
    public struct PULONG_PTR {}

    [CCode (cname = "PULONG32")]
    [SimpleType]
    public struct PULONG32 {}

    [CCode (cname = "PULONG64")]
    [SimpleType]
    public struct PULONG64 {}

    [CCode (cname = "PUSHORT")]
    [SimpleType]
    public struct PUSHORT {}

    [CCode (cname = "PVOID")]
    [SimpleType]
    public struct PVOID {}

    [CCode (cname = "PWCHAR")]
    [SimpleType]
    public struct PWCHAR {}

    [CCode (cname = "PWORD")]
    [SimpleType]
    public struct PWORD {}

    [CCode (cname = "PWSTR")]
    [SimpleType]
    public struct PWSTR {}

    [CCode (cname = "QWORD")]
    [SimpleType]
    public struct QWORD : uint64 {}

    [CCode (cname = "SC_HANDLE")]
    [SimpleType]
    public struct SC_HANDLE : Handle {}

    [CCode (cname = "SC_LOCK")]
    [SimpleType]
    public struct SC_LOCK {}

    [CCode (cname = "SERVICE_STATUS_HANDLE")]
    [SimpleType]
    public struct SERVICE_STATUS_HANDLE : Handle {}

    [CCode (cname = "SHORT")]
    [SimpleType]
    public struct SHORT : int16 {}

    [CCode (cname = "SIZE_T")]
    [SimpleType]
    public struct SIZE_T : size_t {}

    [CCode (cname = "SSIZE_T")]
    [SimpleType]
    public struct SSIZE_T : ssize_t {}

    [CCode (cname = "TBYTE")]
    [SimpleType]
    public struct TBYTE : char {}

    [CCode (cname = "TCHAR")]
    [SimpleType]
    public struct TCHAR : char {}

    [CCode (cname = "UCHAR")]
    [SimpleType]
    public struct UCHAR : uint8 {}

    [CCode (cname = "UHALF_PTR")]
    [SimpleType]
    public struct UHALF_PTR : uint32 {}

    [CCode (cname = "UINT")]
    [SimpleType]
    public struct UINT : uint32 {}

    [CCode (cname = "UINT_PTR")]
    [SimpleType]
    public struct UINT_PTR : uint64 {}

    [CCode (cname = "UINT8")]
    [SimpleType]
    public struct UINT8 : uint8 {}

    [CCode (cname = "UINT16")]
    [SimpleType]
    public struct UINT16 : uint16 {}

    [CCode (cname = "UINT32")]
    [SimpleType]
    public struct UINT32 : uint32 {}

    [CCode (cname = "UINT64")]
    [SimpleType]
    public struct UINT64 : uint64 {}

    [CCode (cname = "ULONG")]
    [SimpleType]
    public struct ULONG : uint32 {}

    [CCode (cname = "ULONGLONG")]
    [SimpleType]
    public struct ULONGLONG : uint64 {}

    [CCode (cname = "ULONG_PTR")]
    [SimpleType]
    public struct ULONG_PTR : size_t {}

    [CCode (cname = "ULONG32")]
    [SimpleType]
    public struct ULONG32 : uint32 {}

    [CCode (cname = "ULONG64")]
    [SimpleType]
    public struct ULONG64 : uint64 {}

    [CCode (cname = "USHORT")]
    [SimpleType]
    public struct USHORT : uint16 {}

    [CCode (cname = "USN")]
    [SimpleType]
    public struct USN : LONGLONG {}

    [CCode (cname = "VOID")]
    [SimpleType]
    public struct VOID {}

    [CCode (cname = "WCHAR")]
    [SimpleType]
    public struct WCHAR : uint16 {}

    [CCode (cname = "WORD")]
    [SimpleType]
    public struct WORD : uint16 {}

    [CCode (cname = "WPARAM")]
    [SimpleType]
    public struct WPARAM : UINT_PTR {}

    // 基础句柄类型定义
    [CCode (cname = "HANDLE")]
    [SimpleType]
    public struct Handle {}

    // 窗口相关结构体
    [CCode (cname = "RECT", has_type_id = false)]
    public struct RECT {
        public LONG left;
        public LONG top;
        public LONG right;
        public LONG bottom;
    }

    [CCode (cname = "POINT", has_type_id = false)]
    public struct POINT {
        public LONG x;
        public LONG y;
    }

    [CCode (cname = "SIZE", has_type_id = false)]
    public struct SIZE {
        public LONG cx;
        public LONG cy;
    }

    // COM 基础接口
    [CCode (cname = "IUnknown", cheader_filename = "Unknwn.h")]
    public interface IUnknown {
        [CCode (cname = "QueryInterface")]
        public virtual HRESULT QueryInterface(REFIID riid, void** ppvObject);

        [CCode (cname = "AddRef")]
        public virtual ULONG AddRef();

        [CCode (cname = "Release")]
        public virtual ULONG Release();
    }

    [CCode (cname = "IClassFactory", cheader_filename = "objbase.h")]
    public interface IClassFactory : IUnknown {
        [CCode (cname = "CreateInstance")]
        public virtual HRESULT CreateInstance(
            IUnknown pUnkOuter,
            REFIID riid,
            void** ppvObject
        );

        [CCode (cname = "LockServer")]
        public virtual HRESULT LockServer(bool fLock);
    }

    // GUID 结构体
    [CCode (cname = "GUID", has_type_id = false)]
    public struct GUID {
        public uint32 Data1;
        public uint16 Data2;
        public uint16 Data3;
        public uint8 Data4[8];
    }

    [CCode (cname = "IID")]
    [SimpleType]
    public struct IID : GUID {}

    [CCode (cname = "CLSID")]
    [SimpleType]
    public struct CLSID : GUID {}

    [CCode (cname = "REFIID")]
    [SimpleType]
    public struct REFIID {}

    [CCode (cname = "REFCLSID")]
    [SimpleType]
    public struct REFCLSID {}

    // 字符串缓冲区相关结构体
    [CCode (cname = "STRRET", has_type_id = false)]
    public struct STRRET {
        public UINT uType;
        [CCode (cname = "DUMMYUNIONNAME.pOleStr")]
        public LPWSTR dummy_pOleStr;
        [CCode (cname = "DUMMYUNIONNAME.uOffset")]
        public UINT dummy_uOffset;
        [CCode (cname = "DUMMYUNIONNAME.cStr")]
        public char dummy_cStr[260];
    }

    // 系统时间相关结构体
    [CCode (cname = "SYSTEMTIME", has_type_id = false)]
    public struct SYSTEMTIME {
        public WORD wYear;
        public WORD wMonth;
        public WORD wDayOfWeek;
        public WORD wDay;
        public WORD wHour;
        public WORD wMinute;
        public WORD wSecond;
        public WORD wMilliseconds;
    }

    [CCode (cname = "FILETIME", has_type_id = false)]
    public struct FILETIME {
        public DWORD dwLowDateTime;
        public DWORD dwHighDateTime;
    }

    // 安全相关结构体
    [CCode (cname = "SECURITY_ATTRIBUTES", has_type_id = false)]
    public struct SECURITY_ATTRIBUTES {
        public DWORD nLength;
        public LPVOID lpSecurityDescriptor;
        public BOOL bInheritHandle;
    }

	[CCode (cname = "SHELLEXECUTEINFOA", destroy_function = "", has_type_id = false)]
	public struct SHELLEXECUTEINFO {
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

    [CCode (cname = "STARTUPINFO", has_type_id = false)]
    public struct STARTUPINFO {
        public uint32 cb;
        public string? lpReserved;
        public string? lpDesktop;
        public string? lpTitle;
        public uint32 dwX;
        public uint32 dwY;
        public uint32 dwXSize;
        public uint32 dwYSize;
        public uint32 dwXCountChars;
        public uint32 dwYCountChars;
        public uint32 dwFillAttribute;
        public uint32 dwFlags;
        public uint16 wShowWindow;
        public uint16 cbReserved2;
        public void* lpReserved2;
        public Handle hStdInput;
        public Handle hStdOutput;
        public Handle hStdError;
    }

    [CCode (cname = "PROCESS_INFORMATION", has_type_id = false)]
    public struct PROCESS_INFORMATION {
        public Handle hProcess;
        public Handle hThread;
        public uint32 dwProcessId;
        public uint32 dwThreadId;
    }

    // 版本信息相关结构体
    [CCode (cname = "VS_FIXEDFILEINFO", has_type_id = false)]
    public struct VS_FIXEDFILEINFO {
        public DWORD dwSignature;
        public DWORD dwStrucVersion;
        public DWORD dwFileVersionMS;
        public DWORD dwFileVersionLS;
        public DWORD dwProductVersionMS;
        public DWORD dwProductVersionLS;
        public DWORD dwFileFlagsMask;
        public DWORD dwFileFlags;
        public DWORD dwFileOS;
        public DWORD dwFileType;
        public DWORD dwFileSubtype;
        public DWORD dwFileDateMS;
        public DWORD dwFileDateLS;
    }

    [CCode (cname = "MSG")]
    public struct MSG {
        public HWND hwnd;
        public UINT message;
        public WPARAM wParam;
        public LPARAM lParam;
        public DWORD time;
        public POINT pt;
    }

    // Window Class Structure
    [CCode (cname = "WNDCLASSEX")]
    public struct WNDCLASSEX {
        public UINT cbSize;
        public UINT style;
        public WndProc lpfnWndProc;
        public int cbClsExtra;
        public int cbWndExtra;
        public HINSTANCE hInstance;
        public HICON hIcon;
        public HCURSOR hCursor;
        public HBRUSH hbrBackground;
        public string lpszMenuName;
        public string lpszClassName;
        public HICON hIconSm;
    }

    // Callback Definitions
    [CCode (has_target = false)]
    public delegate LRESULT WndProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);

    // 常用的错误代码常量
    public const DWORD ERROR_SUCCESS;
    public const DWORD ERROR_INVALID_FUNCTION;
    public const DWORD ERROR_FILE_NOT_FOUND;
    public const DWORD ERROR_PATH_NOT_FOUND;
    public const DWORD ERROR_ACCESS_DENIED;
    public const DWORD ERROR_INVALID_HANDLE;
    public const DWORD ERROR_NOT_ENOUGH_MEMORY;
    public const DWORD ERROR_INVALID_DATA;
    public const DWORD ERROR_OUTOFMEMORY;
    public const DWORD ERROR_NO_MORE_FILES;
    public const DWORD ERROR_WRITE_PROTECT;
    public const DWORD ERROR_BAD_UNIT;
    public const DWORD ERROR_NOT_READY;
    public const DWORD ERROR_SHARING_VIOLATION;
    public const DWORD ERROR_LOCK_VIOLATION;

    // 格式化消息常量
    public const uint32 FORMAT_MESSAGE_ALLOCATE_BUFFER;
    public const uint32 FORMAT_MESSAGE_IGNORE_INSERTS;
    public const uint32 FORMAT_MESSAGE_FROM_STRING;
    public const uint32 FORMAT_MESSAGE_FROM_HMODULE;
    public const uint32 FORMAT_MESSAGE_FROM_SYSTEM;
    public const uint32 FORMAT_MESSAGE_ARGUMENT_ARRAY;
    public const uint32 FORMAT_MESSAGE_MAX_WIDTH_MASK;

    // Window Messages
    public const uint WM_NULL;
    public const uint WM_CREATE;
    public const uint WM_DESTROY;
    public const uint WM_MOVE;
    public const uint WM_SIZE;
    public const uint WM_ACTIVATE;
    public const uint WM_SETFOCUS;
    public const uint WM_KILLFOCUS;
    public const uint WM_ENABLE;
    public const uint WM_SETREDRAW;
    public const uint WM_SETTEXT;
    public const uint WM_GETTEXT;
    public const uint WM_GETTEXTLENGTH;
    public const uint WM_PAINT;
    public const uint WM_CLOSE;
    public const uint WM_QUERYENDSESSION;
    public const uint WM_QUIT;
    public const uint WM_QUERYOPEN;
    public const uint WM_ERASEBKGND;
    public const uint WM_SYSCOLORCHANGE;
    public const uint WM_ENDSESSION;
    public const uint WM_SYSTEMERROR;
    public const uint WM_SHOWWINDOW;
    public const uint WM_CTLCOLOR;
    public const uint WM_WININICHANGE;
    public const uint WM_SETTINGCHANGE;
    public const uint WM_DEVMODECHANGE;
    public const uint WM_ACTIVATEAPP;
    public const uint WM_FONTCHANGE;
    public const uint WM_TIMECHANGE;
    public const uint WM_CANCELMODE;
    public const uint WM_SETCURSOR;
    public const uint WM_MOUSEACTIVATE;
    public const uint WM_CHILDACTIVATE;
    public const uint WM_QUEUESYNC;
    public const uint WM_GETMINMAXINFO;

    // 继续窗口消息常量
    public const uint32 WM_NOTIFY;
    public const uint32 WM_INPUTLANGCHANGEREQUEST;
    public const uint32 WM_INPUTLANGCHANGE;
    public const uint32 WM_TCARD;
    public const uint32 WM_HELP;
    public const uint32 WM_USERCHANGED;
    public const uint32 WM_NOTIFYFORMAT;
    public const uint32 WM_CONTEXTMENU;
    public const uint32 WM_STYLECHANGING;
    public const uint32 WM_STYLECHANGED;
    public const uint32 WM_DISPLAYCHANGE;
    public const uint32 WM_GETICON;
    public const uint32 WM_SETICON;

    // 键盘输入消息
    public const uint32 WM_KEYDOWN;
    public const uint32 WM_KEYUP;
    public const uint32 WM_CHAR;
    public const uint32 WM_DEADCHAR;
    public const uint32 WM_SYSKEYDOWN;
    public const uint32 WM_SYSKEYUP;
    public const uint32 WM_SYSCHAR;
    public const uint32 WM_SYSDEADCHAR;
    public const uint32 WM_UNICHAR;
    public const uint32 WM_KEYLAST;

    // 鼠标输入消息
    public const uint32 WM_MOUSEMOVE;
    public const uint32 WM_LBUTTONDOWN;
    public const uint32 WM_LBUTTONUP;
    public const uint32 WM_LBUTTONDBLCLK;
    public const uint32 WM_RBUTTONDOWN;
    public const uint32 WM_RBUTTONUP;
    public const uint32 WM_RBUTTONDBLCLK;
    public const uint32 WM_MBUTTONDOWN;
    public const uint32 WM_MBUTTONUP;
    public const uint32 WM_MBUTTONDBLCLK;
    public const uint32 WM_MOUSEWHEEL;
    public const uint32 WM_XBUTTONDOWN;
    public const uint32 WM_XBUTTONUP;
    public const uint32 WM_XBUTTONDBLCLK;

    // Window Styles
    public const uint WS_OVERLAPPED;
    public const uint WS_POPUP;
    public const uint WS_CHILD;
    public const uint WS_MINIMIZE;
    public const uint WS_VISIBLE;
    public const uint WS_DISABLED;
    public const uint WS_CLIPSIBLINGS;
    public const uint WS_CLIPCHILDREN;
    public const uint WS_MAXIMIZE;
    public const uint WS_CAPTION;
    public const uint WS_BORDER;
    public const uint WS_DLGFRAME;
    public const uint WS_VSCROLL;
    public const uint WS_HSCROLL;
    public const uint WS_SYSMENU;
    public const uint WS_THICKFRAME;
    public const uint WS_GROUP;
    public const uint WS_TABSTOP;
    public const uint WS_MINIMIZEBOX;
    public const uint WS_MAXIMIZEBOX;
    public const uint WS_OVERLAPPEDWINDOW;

    // Extended Window Styles
    public const uint WS_EX_DLGMODALFRAME;
    public const uint WS_EX_NOPARENTNOTIFY;
    public const uint WS_EX_TOPMOST;
    public const uint WS_EX_ACCEPTFILES;
    public const uint WS_EX_TRANSPARENT;
    public const uint WS_EX_MDICHILD;
    public const uint WS_EX_TOOLWINDOW;
    public const uint WS_EX_WINDOWEDGE;
    public const uint WS_EX_CLIENTEDGE;
    public const uint WS_EX_CONTEXTHELP;

    // Show Window Commands
    public const int SW_HIDE;
    public const int SW_SHOWNORMAL;
    public const int SW_NORMAL;
    public const int SW_SHOWMINIMIZED;
    public const int SW_SHOWMAXIMIZED;
    public const int SW_MAXIMIZE;
    public const int SW_SHOWNOACTIVATE;
    public const int SW_SHOW;
    public const int SW_MINIMIZE;
    public const int SW_SHOWMINNOACTIVE;
    public const int SW_SHOWNA;
    public const int SW_RESTORE;
    public const int SW_SHOWDEFAULT;
    public const int SW_FORCEMINIMIZE;

    public const uint32 INFINITE;
    public const uint32 WAIT_ABANDONED;
    public const uint32 WAIT_OBJECT_0;
    public const uint32 WAIT_TIMEOUT;
    public const uint32 WAIT_FAILED;

    // COM 初始化标志
    public const DWORD COINIT_APARTMENTTHREADED;
    public const DWORD COINIT_MULTITHREADED;
    public const DWORD COINIT_DISABLE_OLE1DDE;
    public const DWORD COINIT_SPEED_OVER_MEMORY;

    // COM 错误码
    public const HRESULT S_OK;
    public const HRESULT S_FALSE;
    public const HRESULT E_NOINTERFACE;
    public const HRESULT E_NOTIMPL;
    public const HRESULT E_OUTOFMEMORY;
    public const HRESULT E_INVALIDARG;
    public const HRESULT E_UNEXPECTED;

    [CCode (cname = "CloseHandle")]
    public int CloseHandle(Handle hObject);

    [CCode (cname = "CreateProcessA")]
    public bool CreateProcess(
        string? lpApplicationName,
        string lpCommandLine,
        void* lpProcessAttributes,
        void* lpThreadAttributes,
        bool bInheritHandles,
        uint32 dwCreationFlags,
        void* lpEnvironment,
        string? lpCurrentDirectory,
        void* lpStartupInfo,
        void* lpProcessInformation
    );

    // Core Window Functions
    [CCode (cname = "CreateWindowExA")]
    public HWND? CreateWindowEx(
        DWORD dwExStyle,
        string lpClassName,
        string lpWindowName,
        DWORD dwStyle,
        int x,
        int y,
        int nWidth,
        int nHeight,
        HWND? hWndParent,
        HMENU? hMenu,
        HINSTANCE? hInstance,
        void* lpParam
    );

    // Paint Structure
    [CCode (cname = "PAINTSTRUCT")]
    public struct PAINTSTRUCT {
        public HDC hdc;
        public BOOL fErase;
        public RECT rcPaint;
        public BOOL fRestore;
        public BOOL fIncUpdate;
        public BYTE rgbReserved[32];
    }

    [CCode (cname = "DestroyWindow")]
    public BOOL DestroyWindow(HWND hWnd);

    [CCode (cname = "ShowWindow")]
    public BOOL ShowWindow(HWND hWnd, int nCmdShow);

    [CCode (cname = "UpdateWindow")]
    public BOOL UpdateWindow(HWND hWnd);

    [CCode (cname = "RegisterClassExA")]
    public ATOM RegisterClassEx(WNDCLASSEX* lpwcx);

    [CCode (cname = "UnregisterClassA")]
    public BOOL UnregisterClass(string lpClassName, HINSTANCE hInstance);

    [CCode (cname = "DefWindowProcA")]
    public LRESULT DefWindowProc(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam);

    // Message Functions
    [CCode (cname = "GetMessage")]
    public BOOL GetMessage(MSG* lpMsg, HWND? hWnd, UINT wMsgFilterMin, UINT wMsgFilterMax);

    [CCode (cname = "TranslateMessage")]
    public BOOL TranslateMessage(MSG* lpMsg);

    [CCode (cname = "DispatchMessage")]
    public LRESULT DispatchMessage(MSG* lpMsg);

    [CCode (cname = "PostQuitMessage")]
    public void PostQuitMessage(int nExitCode);

    [CCode (cname = "PostMessage")]
    public BOOL PostMessage(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam);

    [CCode (cname = "SendMessage")]
    public LRESULT SendMessage(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam);

    [CCode (cname = "GetWindowLongA")]
    public ssize_t GetWindowLong(Handle hWnd, int32 nIndex);

    [CCode (cname = "SetWindowLongA")]
    public ssize_t SetWindowLong(Handle hWnd, int32 nIndex, ssize_t dwNewLong);

    [CCode (cname = "GetWindowRect")]
    public bool GetWindowRect(Handle hWnd, out RECT lpRect);

    [CCode (cname = "SetWindowPos")]
    public bool SetWindowPos(
        Handle hWnd,
        Handle? hWndInsertAfter,
        int32 X,
        int32 Y,
        int32 cx,
        int32 cy,
        uint32 uFlags
    );

    [CCode (cname = "MoveWindow")]
    public int MoveWindow(HWND hWnd, int X, int Y, int nWidth, int nHeight, int bRepaint);

    // GDI Functions
    [CCode (cname = "GetDC")]
    public HDC GetDC(HWND hWnd);

    [CCode (cname = "ReleaseDC")]
    public int ReleaseDC(HWND hWnd, HDC hDC);

    [CCode (cname = "BeginPaint")]
    public HDC BeginPaint(HWND hWnd, PAINTSTRUCT* lpPaint);

    [CCode (cname = "EndPaint")]
    public BOOL EndPaint(HWND hWnd, PAINTSTRUCT* lpPaint);

    [CCode (cname = "InvalidateRect")]
    public bool InvalidateRect(Handle hWnd, RECT* lpRect, bool bErase);

    // Error Handling
    [CCode (cname = "GetLastError")]
    public DWORD GetLastError();

    [CCode (cname = "SetLastError")]
    public void SetLastError(DWORD dwErrCode);

    [CCode (cname = "FormatMessageA")]
    public uint32 FormatMessage(
        uint32 dwFlags,
        void* lpSource,
        uint32 dwMessageId,
        uint32 dwLanguageId,
        string lpBuffer,
        uint32 nSize,
        void* Arguments
    );

    // Module Functions
    [CCode (cname = "GetModuleHandle")]
    public HMODULE GetModuleHandle(string? lpModuleName);

    [CCode (cname = "GetModuleFileNameA")]
    public uint32 GetModuleFileName(
        Handle? hModule,
        string lpFilename,
        uint32 nSize
    );

    [CCode (cname = "LoadLibraryA")]
    public HMODULE LoadLibrary(string lpLibFileName);

    [CCode (cname = "FreeLibrary")]
    public BOOL FreeLibrary(HMODULE hLibModule);

    [CCode (cname = "GetProcAddress")]
    public void* GetProcAddress(HMODULE hModule, string lpProcName);

    // Common Controls
    [CCode (cname = "LoadCursor")]
    public HCURSOR LoadCursor(HINSTANCE hInstance, string lpCursorName);

    [CCode (cname = "LoadIcon")]
    public HICON LoadIcon(HINSTANCE hInstance, string lpIconName);

    // System Metrics
    [CCode (cname = "GetSystemMetrics")]
    public int GetSystemMetrics(int nIndex);

    // Common Dialog Boxes
    [CCode (cname = "MessageBoxA")]
    public int MessageBox(HWND hWnd, string lpText, string lpCaption, UINT uType);

    // Clipboard Functions
    [CCode (cname = "OpenClipboard")]
    public BOOL OpenClipboard(HWND hWndNewOwner);

    [CCode (cname = "CloseClipboard")]
    public BOOL CloseClipboard();

    [CCode (cname = "EmptyClipboard")]
    public BOOL EmptyClipboard();

    [CCode (cname = "GetClipboardData")]
    public Handle GetClipboardData(UINT uFormat);

    [CCode (cname = "SetClipboardData")]
    public Handle SetClipboardData(UINT uFormat, Handle hMem);

    // Memory Management
    [CCode (cname = "GlobalAlloc")]
    public Handle GlobalAlloc(UINT uFlags, size_t dwBytes);

    [CCode (cname = "GlobalFree")]
    public Handle GlobalFree(Handle hMem);

    [CCode (cname = "LocalAlloc")]
    public Handle LocalAlloc(uint32 uFlags, size_t uBytes);

    [CCode (cname = "LocalFree")]
    public Handle LocalFree(Handle hMem);

    [CCode (cname = "HeapAlloc")]
    public void* HeapAlloc(Handle hHeap, uint32 dwFlags, size_t dwBytes);

    [CCode (cname = "HeapFree")]
    public bool HeapFree(Handle hHeap, uint32 dwFlags, void* lpMem);

    [CCode (cname = "GlobalLock")]
    public void* GlobalLock(Handle hMem);

    [CCode (cname = "GlobalUnlock")]
    public BOOL GlobalUnlock(Handle hMem);

    [CCode (cname = "WaitForSingleObject")]
    public uint32 WaitForSingleObject(
        Handle hHandle,
        uint32 dwMilliseconds
    );

    [CCode (cname = "WaitForMultipleObjects")]
    public uint32 WaitForMultipleObjects(
        uint32 nCount,
        Handle* lpHandles,
        bool bWaitAll,
        uint32 dwMilliseconds
    );

    [CCode (cname = "CreateFileMappingA")]
    public Handle CreateFileMapping(
        Handle hFile,
        void* lpFileMappingAttributes,
        uint32 flProtect,
        uint32 dwMaximumSizeHigh,
        uint32 dwMaximumSizeLow,
        string? lpName
    );

    [CCode (cname = "MapViewOfFile")]
    public void* MapViewOfFile(
        Handle hFileMappingObject,
        uint32 dwDesiredAccess,
        uint32 dwFileOffsetHigh,
        uint32 dwFileOffsetLow,
        size_t dwNumberOfBytesToMap
    );

    [CCode (cname = "UnmapViewOfFile")]
    public bool UnmapViewOfFile(void* lpBaseAddress);
	
	[CCode (cname = "ShellExecuteExA")]
	public int ShellExecuteEx(SHELLEXECUTEINFO* pExecInfo);

    // COM 初始化和关闭函数
    [CCode (cname = "CoInitialize")]
    public HRESULT CoInitialize(void* pvReserved);

    [CCode (cname = "CoInitializeEx")]
    public HRESULT CoInitializeEx(void* pvReserved, DWORD dwCoInit);

    [CCode (cname = "CoUninitialize")]
    public void CoUninitialize();

    [CCode (cname = "CoGetCurrentProcess")]
    public DWORD CoGetCurrentProcess();

    // COM 对象创建和管理
    [CCode (cname = "CoCreateInstance")]
    public HRESULT CoCreateInstance(
        REFCLSID rclsid,
        IUnknown pUnkOuter,
        DWORD dwClsContext,
        REFIID riid,
        void** ppv
    );

    [CCode (cname = "CoCreateInstanceEx")]
    public HRESULT CoCreateInstanceEx(
        REFCLSID rclsid,
        IUnknown pUnkOuter,
        DWORD dwClsContext,
        void* pServerInfo,
        DWORD dwCount,
        void* pResults
    );

    // COM 字符串函数
    [CCode (cname = "CoTaskMemAlloc")]
    public void* CoTaskMemAlloc(size_t cb);

    [CCode (cname = "CoTaskMemFree")]
    public void CoTaskMemFree(void* pv);

    [CCode (cname = "CoTaskMemRealloc")]
    public void* CoTaskMemRealloc(void* pv, size_t cb);

    // GUID和CLSID相关函数
    [CCode (cname = "CLSIDFromString")]
    public HRESULT CLSIDFromString(string lpsz, out CLSID pclsid);

    [CCode (cname = "StringFromCLSID")]
    public HRESULT StringFromCLSID(REFCLSID rclsid, out string* lplpsz);

    [CCode (cname = "CLSIDFromProgID")]
    public HRESULT CLSIDFromProgID(string lpszProgID, out CLSID lpclsid);

    [CCode (cname = "ProgIDFromCLSID")]
    public HRESULT ProgIDFromCLSID(REFCLSID clsid, out string* lplpszProgID);
}