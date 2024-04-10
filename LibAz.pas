unit LibAz;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs,StdCtrls;

//Centralize Label    
procedure CentLab(CLabel:TLabel;CForm:TForm;Index:integer);

type
TDDSurfaceDesc=record 
i:integer;
end;

PDDSurfaceDesc=^TDDSurfaceDesc; 
PDDCaps=pointer;
IDirectDraw = interface (IUnknown)
['{6C14DB80-A733-11CE-A521-0020AF0BE560}']
(*** IDirectDraw methods ***) 
function Compact: HResult; stdcall;
function CreateClipper (dwFlags: DWORD;
out lplpDDClipper: pointer;
pUnkOuter: IUnknown) : HResult; stdcall;
function CreatePalette (dwFlags: DWORD; lpColorTable: pointer;
out lplpDDPalette: pointer;
pUnkOuter: IUnknown) : HResult; stdcall;
function CreateSurface (var lpDDSurfaceDesc: TDDSurfaceDesc;
out lplpDDSurface: pointer;
pUnkOuter: IUnknown) : HResult; stdcall;
function DuplicateSurface (lpDDSurface: pointer;
out lplpDupDDSurface: pointer) : HResult; stdcall;
function EnumDisplayModes (dwFlags: DWORD;
lpDDSurfaceDesc: PDDSurfaceDesc; lpContext: Pointer;
lpEnumModesCallback: pointer) : HResult; stdcall;
function EnumSurfaces (dwFlags: DWORD; const lpDDSD: TDDSurfaceDesc;
lpContext: Pointer; lpEnumCallback: pointer):HResult; stdcall;
function FlipToGDISurface: HResult; stdcall; 
function GetCaps (lpDDDriverCaps: PDDCaps; lpDDHELCaps: PDDCaps) : HResult; stdcall;
function GetDisplayMode (out lpDDSurfaceDesc: TDDSurfaceDesc) : HResult; stdcall; 
function GetFourCCCodes (var lpNumCodes: DWORD; lpCodes: PDWORD) : HResult; stdcall; 
function GetGDISurface (out lplpGDIDDSSurface: pointer):HResult; stdcall;
function GetMonitorFrequency (out lpdwFrequency: DWORD) : HResult; stdcall; 
function GetScanLine (out lpdwScanLine: DWORD) : HResult; stdcall;
function GetVerticalBlankStatus (out lpbIsInVB: BOOL) : HResult; stdcall; 
function Initialize (lpGUID: PGUID) : HResult; stdcall; 
function RestoreDisplayMode: HResult; stdcall; 
function SetCooperativeLevel (hWnd: HWND; dwFlags: DWORD) : HResult; stdcall; 
function SetDisplayMode (dwWidth: DWORD; dwHeight: DWORD;dwBpp: DWORD) : HResult; stdcall;
function WaitForVerticalBlank (dwFlags: DWORD; hEvent: THandle): HResult; stdcall;
end;

//procedure SetMode(CForm:TForm;Width:integer;Heigth:integer;Bits:integer);

var
  DDrawCreate : function (lpGUID: PGUID; out lplpDD: IDirectDraw; pUnkOuter: IUnknown) : HResult; stdcall;
  DDrawDLL : HMODULE = 0;
  D:IDirectDraw;

implementation

procedure CentLab(CLabel:TLabel;CForm:TForm;index:integer);
begin
case index of
1:CLabel.Left:=(CForm.ClientWidth div 2)-(CLabel.Width div 2);
2:CLabel.Top:=(CForm.ClientHeight div 2)-(CLabel.Height div 2);
3:
begin

CLabel.Left:=(CForm.ClientWidth div 2)-(CLabel.Width div 2);
CLabel.Top:=(CForm.ClientHeight div 2)-(CLabel.Height div 2);
end;
end;
end;

end.
 