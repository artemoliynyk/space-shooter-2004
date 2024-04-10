unit strrs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm02 = class(TForm)
    a: TImage;
    b: TImage;
    l: TLabel;
    mb: TTimer;
    ma: TTimer;
    //a contr
    procedure a_l;
    procedure a_r;
    procedure a_fr;
    //b contr
    procedure b_l;
    procedure b_r;
    procedure b_fr;
    procedure b_dw;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure mbTimer(Sender: TObject);
    procedure maTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form02: TForm02;
  spa,spb:integer;
implementation

{$R *.dfm}

procedure TForm02.a_fr;
begin
if a.Top<>0 then a.Top:=a.Top-spa
else
if a.Top=0 then beep;
end;

procedure TForm02.b_fr;
begin
if b.Top<>0 then b.Top:=b.Top-spb
else
if b.Top=0 then beep;
end;

procedure TForm02.b_dw;
begin
if b.Top+b.Height<>form02.ClientHeight then b.Top:=b.Top+26
else
if b.Top+b.Height=form02.ClientHeight then beep;
end;

procedure TForm02.b_l;
begin
if (((b.Left-26)=a.Left)and(a.Left>0)and(b.Top=a.Top)and(b.Left+b.Width<>form02.ClientWidth)) then
begin
a.Left:=a.Left-26;
beep;
b.Left:=b.Left+26;
end
else
if (((b.Left-26)=a.Left)and(a.Left>0)and(b.Top=a.Top)and(b.Left+b.Width=form02.ClientWidth)) then
begin
a.Left:=a.Left-26;
beep;
end
else
if b.left<>0 then b.left:=b.left-26
else
if b.left=0 then beep;
end;

procedure TForm02.b_r;
begin
if b.left+b.Width<>Form02.ClientWidth then b.left:=b.left+26
else
if b.left+b.Width=Form02.ClientWidth then beep;
end;

procedure TForm02.a_r;
begin
if a.left+a.Width<>Form02.ClientWidth then a.left:=a.left+26
else
if a.left+a.Width=Form02.ClientWidth then beep;
end;

procedure TForm02.a_l;
begin
if a.left<>0 then a.left:=a.left-26
else
if a.left=0 then beep;
end;


procedure TForm02.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
vk_escape:close;
end;
case key of
vk_right:a_r;
vk_left:a_l;
vk_up:if spa<>3 then inc(spa);
end;

case key of
65:b_l;
68:b_r;
87:if spb<>3 then inc(spb);
83:if spb<>0 then inc(spb,-1);
//32:b_f;
end;
end;

procedure TForm02.FormKeyPress(Sender: TObject; var Key: Char);
begin
l.Caption:=inttostr(ord(key));
end;

procedure TForm02.mbTimer(Sender: TObject);
begin
b_fr;
end;

procedure TForm02.maTimer(Sender: TObject);
begin
a_fr;
end;

end.
