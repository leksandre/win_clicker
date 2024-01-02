unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    SpinEdit2: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure ClickOnForm(wnd: HWND; caption: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ClickOnForm(wnd: HWND; caption: string);
var
  TheChildHandle: HWND;
begin
  TheChildHandle := FindWindowEx(wnd, 0, nil, PChar(caption));
  SendMessage(TheChildHandle, WM_LButtonDown, 1, 1);
  SendMessage(TheChildHandle, WM_LButtonUP, 1, 1);
end;

procedure TForm1.Button1Click(Sender: TObject);
var I:integer;
  wnd: HWND;
  caption: string;
begin

wnd := FindWindow(nil, PAnsiChar(Edit1.text)); //wnd := GetTopWindow(0);

{repeat         пробег по всем окнам
    wnd := GetNextWindow(wnd, GW_HWNDNEXT);
  until wnd = 0;}


if wnd = 0 then  ShowMessage('Applikation not found') else
begin
 SetLength(caption, GetWindowtextLength(wnd));
    GetWindowText(wnd, @caption[1], length(caption) + 1);


for i:=1 to SpinEdit1.Value do Begin
  //  if (trim(caption) = 'Form caption') then
      ClickOnForm(wnd,edit2.Text);
      sleep(SpinEdit2.Value)
      end;

end;


end;
 

{function PressAbortAndReloadBtn: string;
var
  MenuHnd: THandle;
  //описатель меню
  ItemUint: UINT;
  //идентификатор пункта меню
  BtnHnd: THandle;
begin
  result := PRX_UNKNOWN_ERR;
  GetProcList;
  if Prx_MainWHnd <> 0 then
  begin
    BtnHnd := FindWindowEx(Prx_MainWHnd, 0, nil, PChar(PrxABtnName));
    SendMessage(BtnHnd, BM_CLICK, 0, 0);
    Sleep(100);
    MenuHnd := GetMenu(Prx_MainWHnd);
    if Menuhnd <> 0 then
    begin
      ItemUint := GetMenuItemID(Menuhnd, 4);
      if ItemUint <> 0 then
      begin
        SendMessage(Prx_MainWHnd, WM_COMMAND, ItemUint, 0);
        result := PRX_OK;
      end
      else
        result := PRX_ITEM_NOT_FOUND;
    end
    else
      result := PRX_MENU_NOT_FOUND;
  end
  else
    result := PRX_NOT_FOUND;
  if result <> PRX_OK then
    WriteLog(result);
end;  }





end.
