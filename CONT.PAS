unit cont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,strwr,Spin, Buttons, ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    p1u: TLabel;
    p1l: TLabel;
    p1r: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    p2u: TLabel;
    p2l: TLabel;
    p2r: TLabel;
    procedure ind(k:integer;l:Tlabel;v:TSpinEdit);
    procedure setk(wn:boolean;k:integer;l:Tlabel;v:TSpinEdit;s:string);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure p1uClick(Sender: TObject);
    procedure p1lClick(Sender: TObject);
    procedure p1rClick(Sender: TObject);
    procedure p2uClick(Sender: TObject);
    procedure p2lClick(Sender: TObject);
    procedure p2rClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure load(k:integer;l:Tlabel;v:TSpinEdit);
    procedure lin(wn:boolean;k:integer;l:Tlabel;v:TSpinEdit;s:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  spc,ky,vr:integer;
  lab:Tlabel;
  cl:boolean;
implementation

{$R *.dfm}

procedure tform5.lin(wn:boolean;k:integer;l:Tlabel;v:TSpinEdit;s:string);
begin
v.Value:=k;
if wn=true then l.Caption:=s
else
if wn=false then l.Caption:=chr(k);
form1.new;
end;

procedure tform5.load(k:integer;l:Tlabel;v:TSpinEdit);
begin
if k=192 then lin(true,k,l,v,'~') else
if k=13 then lin(true,k,l,v,'Enter') else
if k=20 then lin(true,k,l,v,'Caps Lock') else
if k=16 then lin(true,k,l,v,'Shift') else
if k=17 then lin(true,k,l,v,'Ctr') else
if k=18 then lin(true,k,l,v,'Alt') else
if k=32 then lin(true,k,l,v,'Space') else
if k=189 then lin(true,k,l,v,'-') else
if k=187 then lin(true,k,l,v,'=') else
if k=220{v :-)} then lin(true,k,l,v,'\') else
if k=8 then lin(true,k,l,v,'Backpace') else
if k=145 then lin(true,k,l,v,'Scroll Lock') else
if k=19 then lin(true,k,l,v,'Pause\Break') else
if k=45 then lin(true,k,l,v,'Insert') else
if k=46 then lin(true,k,l,v,'Del') else
if k=36 then lin(true,k,l,v,'Home') else
if k=35 then lin(true,k,l,v,'End') else
if k=33 then lin(true,k,l,v,'Page up') else
if k=34 then lin(true,k,l,v,'Page Down') else
if k=8 then lin(true,k,l,v,'Backpace') else
if k=111 then lin(true,k,l,v,'/') else
if k=106 then lin(true,k,l,v,'*') else
if k=109 then lin(true,k,l,v,'Num Pad -') else
if k=107 then lin(true,k,l,v,'Num Pad +') else
if k=110 then lin(true,k,l,v,'Num Pad .') else
if k=96 then lin(true,k,l,v,'Num Pad 0') else
if k=97 then lin(true,k,l,v,'Num Pad 1') else
if k=98 then lin(true,k,l,v,'Num Pad 2') else
if k=99 then lin(true,k,l,v,'Num Pad 3') else
if k=100 then lin(true,k,l,v,'Num Pad 4') else
if k=101 then lin(true,k,l,v,'Num Pad 5') else
if k=102 then lin(true,k,l,v,'Num Pad 6') else
if k=103 then lin(true,k,l,v,'Num Pad 7') else
if k=104 then lin(true,k,l,v,'Num Pad 8') else
if k=105 then lin(true,k,l,v,'Num Pad 9') else
if k=219 then lin(true,k,l,v,'[') else
if k=221 then lin(true,k,l,v,']') else
if k=186 then lin(true,k,l,v,';') else
if k=222 then lin(true,k,l,v,'"') else
if k=188 then lin(true,k,l,v,'<') else
if k=190 then lin(true,k,l,v,'>') else
if k=191 then lin(true,k,l,v,'?') else
if k=37 then lin(true,k,l,v,'Left') else
if k=39 then lin(true,k,l,v,'Right') else
if k=40 then lin(true,k,l,v,'Down') else
if k=38 then lin(true,k,l,v,'Up') else
lin(false,k,l,v,'');
end;


procedure tform5.setk(wn:boolean;k:integer;l:Tlabel;v:TSpinEdit;s:string);
begin
v.Value:=k;
if spc=11 then
begin
if((form1.p1u.value=form1.p1l.value)
or(form1.p1u.value=form1.p1r.value)
or(form1.p1u.value=form1.p2u.value)
or(form1.p1u.value=form1.p2l.value)
or(form1.p1u.value=form1.p2r.value))
then
 begin
showmessage('Key is already used');
p1u.Caption:='Unassigned';
cl:=true
 end
else
begin
if wn=true then l.Caption:=s
else
if wn=false then l.Caption:=chr(k);
spc:=0;
l.color:=clblack;
end;
end
else
if spc=12 then
begin
if((form1.p1l.value=form1.p2l.value)
or(form1.p1l.value=form1.p1r.value)
or(form1.p1l.value=form1.p2u.value)
or(form1.p1l.value=form1.p2l.value)
or(form1.p1l.value=form1.p2r.value))
then
 begin
showmessage('Key is already used');
p1l.Caption:='Unassigned';
cl:=true
 end
else
begin
if wn=true then l.Caption:=s
else
if wn=false then l.Caption:=chr(k);
spc:=0;
l.color:=clblack;
end;
end
else
if spc=13 then
begin
if((form1.p1r.value=form1.p1l.value)
or(form1.p1r.value=form1.p1u.value)
or(form1.p1r.value=form1.p2u.value)
or(form1.p1r.value=form1.p2l.value)
or(form1.p1r.value=form1.p2r.value))
then
 begin
showmessage('Key is already used');
p1r.Caption:='Unassigned';
cl:=true
 end
else
begin
if wn=true then l.Caption:=s
else
if wn=false then l.Caption:=chr(k);
spc:=0;
l.color:=clblack;
end;
end
else
if spc=21 then
begin
if((form1.p2u.value=form1.p1l.value)
or(form1.p2u.value=form1.p1r.value)
or(form1.p2u.value=form1.p1u.value)
or(form1.p2u.value=form1.p2l.value)
or(form1.p2u.value=form1.p2r.value))
then
 begin
showmessage('Key is already used');
p2u.Caption:='Unassigned';
cl:=true
 end
else
begin
if wn=true then l.Caption:=s
else
if wn=false then l.Caption:=chr(k);
spc:=0;
l.color:=clblack;
end;
end
else
if spc=22 then
begin
if((form1.p2l.value=form1.p1l.value)
or(form1.p2l.value=form1.p1r.value)
or(form1.p2l.value=form1.p2u.value)
or(form1.p2l.value=form1.p1u.value)
or(form1.p2l.value=form1.p2r.value))
then
 begin
showmessage('Key is already used');
p2l.Caption:='Unassigned';
cl:=true
 end
else
begin
if wn=true then l.Caption:=s
else
if wn=false then l.Caption:=chr(k);
spc:=0;
l.color:=clblack;
end;
end
else
if spc=23 then
begin
if((form1.p2r.value=form1.p1l.value)
or(form1.p2r.value=form1.p1u.value)
or(form1.p2r.value=form1.p2u.value)
or(form1.p2r.value=form1.p2l.value)
or(form1.p2r.value=form1.p1r.value))
then
 begin
showmessage('Key is already used');
p2r.Caption:='Unassigned';
cl:=true
 end
else
begin
if wn=true then l.Caption:=s
else
if wn=false then l.Caption:=chr(k);
spc:=0;
l.color:=clblack;
end;
end;
end;

procedure tform5.ind(k:integer;l:Tlabel;v:TSpinEdit);
begin
if k=27 then showmessage('This key cannot be used') else
if k=112 then showmessage('This key cannot be used') else
if k=113 then showmessage('This key cannot be used') else
if k=114 then showmessage('This key cannot be used') else
if k=115 then showmessage('This key cannot be used') else
if k=116 then showmessage('This key cannot be used') else
if k=117 then showmessage('This key cannot be used') else
if k=118 then showmessage('This key cannot be used') else
if k=119 then showmessage('This key cannot be used') else
if k=120 then showmessage('This key cannot be used') else
if k=121 then showmessage('This key cannot be used') else
if k=122 then showmessage('This key cannot be used') else
if k=123 then showmessage('This key cannot be used') else
if k=144 then showmessage('This key cannot be used') else
if k=93 then showmessage('This key cannot be used') else

if k=91 then showmessage('This key cannot be used') else
if k=192 then setk(true,k,l,v,'~') else
if k=13 then setk(true,k,l,v,'Enter') else
if k=20 then setk(true,k,l,v,'Caps Lock') else
if k=16 then setk(true,k,l,v,'Shift') else
if k=17 then setk(true,k,l,v,'Ctr') else
if k=18 then setk(true,k,l,v,'Alt') else
if k=32 then setk(true,k,l,v,'Space') else
if k=189 then setk(true,k,l,v,'-') else
if k=187 then setk(true,k,l,v,'=') else
if k=220{v :-)} then setk(true,k,l,v,'\') else
if k=8 then setk(true,k,l,v,'Backpace') else
if k=145 then setk(true,k,l,v,'Scroll Lock') else
if k=19 then setk(true,k,l,v,'Pause\Break') else
if k=45 then setk(true,k,l,v,'Insert') else
if k=46 then setk(true,k,l,v,'Del') else
if k=36 then setk(true,k,l,v,'Home') else
if k=35 then setk(true,k,l,v,'End') else
if k=33 then setk(true,k,l,v,'Page up') else
if k=34 then setk(true,k,l,v,'Page Down') else
if k=8 then setk(true,k,l,v,'Backpace') else
if k=111 then setk(true,k,l,v,'/') else
if k=106 then setk(true,k,l,v,'*') else
if k=109 then setk(true,k,l,v,'Num Pad -') else
if k=107 then setk(true,k,l,v,'Num Pad +') else
if k=110 then setk(true,k,l,v,'Num Pad .') else
if k=96 then setk(true,k,l,v,'Num Pad 0') else
if k=97 then setk(true,k,l,v,'Num Pad 1') else
if k=98 then setk(true,k,l,v,'Num Pad 2') else
if k=99 then setk(true,k,l,v,'Num Pad 3') else
if k=100 then setk(true,k,l,v,'Num Pad 4') else
if k=101 then setk(true,k,l,v,'Num Pad 5') else
if k=102 then setk(true,k,l,v,'Num Pad 6') else
if k=103 then setk(true,k,l,v,'Num Pad 7') else
if k=104 then setk(true,k,l,v,'Num Pad 8') else
if k=105 then setk(true,k,l,v,'Num Pad 9') else
if k=219 then setk(true,k,l,v,'[') else
if k=221 then setk(true,k,l,v,']') else
if k=186 then setk(true,k,l,v,';') else
if k=222 then setk(true,k,l,v,'"') else
if k=188 then setk(true,k,l,v,'<') else
if k=190 then setk(true,k,l,v,'>') else
if k=191 then setk(true,k,l,v,'?') else
if k=37 then setk(true,k,l,v,'Left') else
if k=39 then setk(true,k,l,v,'Right') else
if k=40 then setk(true,k,l,v,'Down') else
if k=38 then setk(true,k,l,v,'Up') else
setk(false,k,l,v,'')
end;

procedure TForm5.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case spc of
11:ind(ord(key),p1u,form1.p1u);
12:ind(ord(key),p1l,form1.p1l);
13:ind(ord(key),p1r,form1.p1r);
//2-nd
21:ind(ord(key),p2u,form1.p2u);
22:ind(ord(key),p2l,form1.p2l);
23:ind(ord(key),p2r,form1.p2r);
end;
end;

procedure TForm5.p1uClick(Sender: TObject);
begin
spc:=11;
p1u.Color:=clred;
end;

procedure TForm5.p1lClick(Sender: TObject);
begin
spc:=12;
p1l.Color:=clred;
end;

procedure TForm5.p1rClick(Sender: TObject);
begin
spc:=13;
p1r.Color:=clred;
end;

procedure TForm5.p2uClick(Sender: TObject);
begin
spc:=21;
p2u.Color:=clred;
end;

procedure TForm5.p2lClick(Sender: TObject);
begin
spc:=22;
p2l.Color:=clred;
end;

procedure TForm5.p2rClick(Sender: TObject);
begin
spc:=23;
p2r.Color:=clred;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
if ((p1u.Caption='Unassigned')
or(p1l.Caption='Unassigned')
or(p1r.Caption='Unassigned')
or(p2u.Caption='Unassigned')
or(p2l.Caption='Unassigned')
or(p2r.Caption='Unassigned'))
then Messagedlg('Some keys were not assigned!',mtWarning,[mbYes],1)
else
begin
assignfile(fsl,'sstrw.sws');
rewrite(fsl);
save.c1u:=form1.p1u.Value;
save.c1l:=form1.p1l.Value;
save.c1r:=form1.p1r.Value;
save.c2u:=form1.p2u.Value;
save.c2l:=form1.p2l.Value;
save.c2r:=form1.p2r.Value;
save.ltm:=tm;
save.lsp:=sp;
save.lpa:=pa;
save.lpb:=pb;
write(fsl,save);
closefile(fsl);
close;
form1.new;
end;
end;

end.
