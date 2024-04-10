unit strwr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, jpeg, {opt,}info, DB,
  DBCtrls, DBClient, Provider, Spin,LibAz, Buttons;

type
  TForm1 = class(TForm)
    bk: TImage;
    tp: TBevel;
    sb: TImage;
    sa: TImage;
    s: TLabel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    a: TImage;
    mn: TLabel;
    Bevel4: TBevel;
    str: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    cnt: TLabel;
    lb: TImage;
    la: TImage;
    ia: TLabel;
    ib: TLabel;
    pla: TLabel;
    plb: TLabel;
    tt: TTimer;
    t: TTimer;
    men: TMainMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    da: TTimer;
    db: TTimer;
    start: TTimer;
    movements: TTimer;
    N1: TMenuItem;
    p1u: TSpinEdit;
    p1l: TSpinEdit;
    p1r: TSpinEdit;
    p2u: TSpinEdit;
    p2l: TSpinEdit;
    p2r: TSpinEdit;
    b: TImage;
    n: TImage;
    nPeriod: TTimer;
    nMove: TTimer;
    binf: TTimer;
    strs: TTimer;
    N2: TMenuItem;
    ac: TImage;
    bc: TImage;
    f1: TLabel;
    hintTimer: TTimer;
    Timer1: TTimer;
    effbtn: TSpeedButton;
    hideAll: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tTimer(Sender: TObject);
    procedure ttTimer(Sender: TObject);
    procedure new;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    //move procedures
    procedure a_l;
    procedure a_r;
    procedure b_l;
    procedure b_r;
    //Set Fire Procedures
    procedure a_f;
    procedure b_f;
    //Calculating fire points
    procedure ca_f;
    procedure cb_f;
    //Give bonus
    procedure bonus(player:integer);


    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bkMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N9Click(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dbTimer(Sender: TObject);
    procedure daTimer(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure startTimer(Sender: TObject);
    procedure movementsTimer(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure nPeriodTimer(Sender: TObject);
    procedure nMoveTimer(Sender: TObject);
    procedure binfTimer(Sender: TObject);
    procedure strsTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    //colors load;
    procedure load(cp1,cp2:integer);
    procedure hintTimerTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure effbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
stf=record
lc1,lc2,ltm,lsp,c1u,c1l,c1r,c2u,c2l,c2r:integer;
lpa,lpb:string[15];
end;

var
  Form1: TForm1;
  Effect,show1,Lose,ad,bd,aml,amr,amf,bml,bmr,bmf: boolean;
  c1,c2,bns,bnPl,p1up,p2up,p1lt,p2lt,p1rt,p2rt,strt,ca,cb,tm,n,al,bl,sp:integer;
  pa,pb:string;
  save:stf;
  fsl:file of stf;
implementation

uses res, opt, cont, selcol;

{$R *.dfm}

procedure tform1.load(cp1,cp2:integer);
begin
case c1 of
0:ac.Picture:=form2.ab.Picture;
1:ac.Picture:=form2.ar.Picture;
2:ac.Picture:=form2.agn.Picture;
3:ac.Picture:=form2.agr.Picture;
4:ac.Picture:=form2.ap.Picture;
end;

case c2 of
0:bc.Picture:=form2.bb.Picture;
1:bc.Picture:=form2.br.Picture;
2:bc.Picture:=form2.bgn.Picture;
3:bc.Picture:=form2.bgr.Picture;
4:bc.Picture:=form2.bp.Picture;
end;

end;
procedure TForm1.bonus(player:integer);
begin
if player=1 then
 begin
if bns=1 then
begin
al:=al+1;
ia.Caption:=inttostr(al);
nMove.Enabled:=false;
n.Left:=520;
s.Visible:=true;
s.Caption:='BONUS! +1 Life';
binf.Enabled:=true;
end
else
if bns=2 then
  begin
inc(ca);
cnt.Caption:=inttostr(ca)+':'+inttostr(cb);
bl:=bl-1;
bd:=true;
bml:=false;
bmr:=false;
bmf:=false;
if bl=0 then
begin
db.Enabled:=false;
ib.Caption:=inttostr(bl);
lose:=true;
b.Picture:=form2.d.Picture;
s.Visible:=true;
s.Caption:=pa+' won';
tt.Enabled:=false;
t.Enabled:=false;
end
else
if bl>0
then
begin
b.Picture:=form2.d.Picture;
t.Enabled:=false;
sa.Top:=a.Top;
sa.Visible:=false;
sa.Left:=a.Left;
ib.Caption:=inttostr(bl);
db.Enabled:=true;
nMove.Enabled:=false;
n.Left:=520;
s.Visible:=true;
s.Caption:='BONUS! Killing the enemy!';
binf.Enabled:=true;
  end;
 end;
end;

if player=2 then
begin
if bns=1 then
begin
bl:=bl+1;
ib.Caption:=inttostr(bl);
nMove.Enabled:=false;
n.Left:=520;
s.Visible:=true;
s.Caption:='BONUS! +1 Life';
binf.Enabled:=true;
end
else
if bns=2 then
begin
inc(cb);
cnt.Caption:=inttostr(ca)+':'+inttostr(cb);
ad:=true;
al:=al-1;
aml:=false;
amr:=false;
amf:=false;
if al=0 then
begin
da.Enabled:=false;
ia.Caption:=inttostr(al);
lose:=true;
a.Picture:=form2.d.Picture;
s.Caption:=pb+' won';
s.Left:=(form1.ClientWidth div 2)-(s.Width div 2);
s.Visible:=true;
tt.Enabled:=false;
t.Enabled:=false;
end else
if al>0
then
begin
a.Picture:=form2.d.Picture;
{a.Picture:=form2.a.Picture;
a.Left:=234;}
tt.Enabled:=false;
sb.Top:=b.Top;
sb.Visible:=false;
sb.Left:=b.Left;
ia.Caption:=inttostr(al);
da.Enabled:=true;
nMove.Enabled:=false;
n.Left:=520;
s.Visible:=true;
s.Caption:='BONUS! Killing the enemy!';
binf.Enabled:=true;
end;
end;
end;
end;


procedure TForm1.cb_f;
begin
if ((sb.Top=n.Top) and (sb.Left=n.Left))
then
begin
bonus(2);
end;

if ((sb.Top=a.Top) and (sb.Left=a.Left)and(ad=true))
then
begin
tt.Enabled:=false;
sb.Top:=b.Top;
sb.Visible:=false;
sb.Left:=b.Left;
end;

if ((sb.Top=a.Top) and (sb.Left<>a.Left))
then
begin
sb.Top:=b.Top;
sb.Visible:=false;
tt.Enabled:=false;
end;

if ((sb.Top=a.Top) and (sb.Left=a.Left))
then
begin
inc(cb);
cnt.Caption:=inttostr(ca)+':'+inttostr(cb);
ad:=true;
al:=al-1;
aml:=false;
amr:=false;
amf:=false;
bmf:=false;
if al=0 then
begin
da.Enabled:=false;
ia.Caption:=inttostr(al);
lose:=true;
a.Picture:=form2.d.Picture;
s.Caption:=pb+' won';
Centlab(s,Form1,1);
s.Left:=(form1.ClientWidth div 2)-(s.Width div 2);
s.Visible:=true;
tt.Enabled:=false;
t.Enabled:=false;
nPeriod.Enabled:=false;
nMove.Enabled:=false;
n.Left:=520;
end else
if al>0
then
begin
a.Picture:=form2.d.Picture;
{a.Picture:=form2.a.Picture;
a.Left:=234;}
tt.Enabled:=false;
sb.Top:=b.Top;
sb.Visible:=false;
sb.Left:=b.Left;
ia.Caption:=inttostr(al);
da.Enabled:=true;
end;
end;
sb.Top:=sb.Top-sp;

end;

procedure TForm1.ca_f;
begin
//bonus+
if ((sa.Top=n.Top) and (sa.Left=n.Left))
then
begin
bonus(1);
end;
if ((sa.Top=b.Top) and (sa.Left=b.Left)and(bd=true))
then
begin
t.Enabled:=false;
sa.Top:=a.Top;
sa.Visible:=false;
sa.Left:=a.Left;
end;
if ((sa.Top=b.Top) and (sa.Left<>b.Left))
then
begin
sa.Top:=a.Top;
sa.Visible:=false;
t.Enabled:=false;
end;

if ((sa.Top=b.Top) and (sa.Left=b.Left)and(bd=false))
then
begin
inc(ca);
cnt.Caption:=inttostr(ca)+':'+inttostr(cb);
bl:=bl-1;
bd:=true;
bml:=false;
bmr:=false;
bmf:=false;
amf:=false;
if bl=0 then
begin
db.Enabled:=false;
ib.Caption:=inttostr(bl);
lose:=true;
b.Picture:=form2.d.Picture;
s.Visible:=true;
s.Caption:=pa+' won';
Centlab(s,Form1,1);
tt.Enabled:=false;
t.Enabled:=false;
nPeriod.Enabled:=false;
nMove.Enabled:=false;
n.Left:=520;
end else
if bl>0
then
begin
b.Picture:=form2.d.Picture;
{b.Picture:=form2.b.Picture;
b.Left:=234; }
t.Enabled:=false;
sa.Top:=a.Top;
sa.Visible:=false;
sa.Left:=a.Left;
ib.Caption:=inttostr(bl);
db.Enabled:=true;
end;
end;

sa.Top:=sa.Top+sp;
end;

procedure TForm1.b_f;
begin
if tt.Enabled=false then
begin
tt.Enabled:=true;
sb.Visible:=true;
sb.Top:=b.Top;
sb.Left:=b.Left;
end;
end;

procedure TForm1.a_f;
begin
if t.Enabled=false then
begin
t.Enabled:=true;
sa.Visible:=true;
sa.Left:=a.Left;
end;
end;

procedure TForm1.b_l;
begin
if b.left<>0 then b.left:=b.left-26
else
if b.left=0 then beep;
end;

procedure TForm1.b_r;
begin
if b.left+b.Width<>form1.ClientWidth then b.left:=b.left+26
else
if b.left+b.Width=form1.ClientWidth then beep;
end;

procedure TForm1.a_r;
begin
if a.left+a.Width<>form1.ClientWidth then a.left:=a.left+26
else
if a.left+a.Width=form1.ClientWidth then beep;
end;

procedure TForm1.a_l;
begin
if a.left<>0 then a.left:=a.left-26
else
if a.left=0 then beep;
end;



procedure TForm1.new;
begin
Centlab(str,Form1,3);
a.Left:=234;
b.Left:=234;
sa.Top:=a.Top;
sa.Visible:=false;
t.Enabled:=false;

al:=tm;
bl:=tm;
ia.Caption:=inttostr(tm);
ib.Caption:=inttostr(tm);

sb.Top:=b.Top;
sb.Visible:=false;
tt.Enabled:=false;

lose:=false;
cnt.Caption:='0:0';
ca:=0;
cb:=0;
s.Visible:=false;
form1.Repaint;
ad:=false;
bd:=false;
da.Enabled:=false;
db.Enabled:=false;

lose:=true;
strt:=3;
str.Caption:='3';
str.Enabled:=true;
str.Visible:=true;
start.Enabled:=true;
strs.Enabled:=true;
tm:=save.ltm;
sp:=save.lsp;
pa:=save.lpa;
pb:=save.lpb;
p1up:=p1u.Value;
p1lt:=p1l.Value;
p1rt:=p1r.Value;

p2up:=p2u.Value;
p2lt:=p2l.Value;
p2rt:=p2r.Value;

nPeriod.Enabled:=false;
nMove.Enabled:=false;
n.Left:=520;
nPeriod.Enabled:=true;
load(c1,c2);
a.Picture:=ac.Picture;
b.Picture:=bc.Picture;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case ord(key) of
113:new;
vk_escape:close;
vk_f1:
begin
aml:=false;
amr:=false;
amf:=false;
bml:=false;
bmr:=false;
bmf:=false;
nperiod.Enabled:=false;
nmove.Enabled:=false;
form4.ShowModal;
end;
vk_f3:
begin
aml:=false;
amr:=false;
amf:=false;
bml:=false;
bmr:=false;
bmf:=false;
nperiod.Enabled:=false;
nmove.Enabled:=false;
form3.ShowModal;
end;
vk_f4:begin
aml:=false;
amr:=false;
amf:=false;
bml:=false;
bmr:=false;
bmf:=false;
nperiod.Enabled:=false;
nmove.Enabled:=false;
form5.ShowModal;
end;
vk_f5:
begin
aml:=false;
amr:=false;
amf:=false;
bml:=false;
bmr:=false;
bmf:=false;
form6.ShowModal;
end;
end;

if ((lose<>true)and(ad=false)) then
begin
//case key of
//Set controls for a
if key=p1lt then aml:=true;
if key=p1rt then amr:=true;
if ((key=p1up)and(bd=false))or((a.Left<>b.Left)and(bd=true)) then amf:=true;
//end;
end;
if ((lose<>true)and(bd=false)) then
begin
//Set controls for b

if key=p2lt then bml:=true;
if key=p2rt then bmr:=true;
if ((key=p2up)and(ad=false))or((b.Left<>a.Left)and(ad=true)) then bmf:=true;

end;
if key=vk_escape then close;

end;

procedure TForm1.tTimer(Sender: TObject);
begin
//l.Caption:=inttostr(sa.Top);
ca_f;
end;

procedure TForm1.ttTimer(Sender: TObject);
begin
//l.Caption:=inttostr(sb.Top);
cb_f;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
form6.ShowModal;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
beep;
messagedlg('2004 (c). "Star Wars". Version 1.0 By Azure',mtInformation,[mbOk],0);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
close;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
new;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
n4.Visible:=false;
n8.Visible:=false;
form1.BorderStyle:=bsnone;
end;

procedure TForm1.bkMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
n4.Visible:=false;
n8.Visible:=false;
form1.BorderStyle:=bsnone;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
form4.ShowModal;
end;

procedure TForm1.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
n4.Visible:=false;
n8.Visible:=false;
form1.BorderStyle:=bsnone;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//str.Left:=((form1.ClientHeight+25) div 2)-(str.Width div 2);
//str.Top:=((form1.ClientHeight+25) div 2)-(str.Height div 2);

hideall.Top:=-50;

strt:=3;
lose:=true;
Centlab(str,Form1,3);
Centlab(s,Form1,3);
effect:=false;

end;

procedure TForm1.N6Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm1.dbTimer(Sender: TObject);
begin
b.left:=234;
b.Picture:=bc.Picture;
bd:=false;
db.Enabled:=false;
end;

procedure TForm1.daTimer(Sender: TObject);
begin
a.left:=234;
a.Picture:=ac.Picture;
ad:=false;
da.Enabled:=false;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
form1.BorderStyle:=bsToolWindow;
n4.Visible:=true;
n8.Visible:=true;
end;

procedure TForm1.startTimer(Sender: TObject);
begin
str.Font.Size:=72;
str.Visible:=true;
inc(strt,-1);
if strt=-1 then
begin
str.Visible:=false;
str.Enabled:=false;
lose:=false;
start.Enabled:=false;
//strs.Enabled:=false;

end;
str.Caption:=inttostr(strt);
end;

procedure TForm1.movementsTimer(Sender: TObject);
begin
if aml=true then a_l;
if amr=true then a_r;
if amf=true then a_f;

if bml=true then b_l;
if bmr=true then b_r;
if bmf=true then b_f;
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

//Set controls for
if key=p1lt Then aml:=false;
if key=p1rt Then amr:=false;
if key=p1up Then amf:=false;
//---------------------------------
if key=p2lt Then bml:=false;
if key=p2rt Then bmr:=false;
if key=p2up Then bmf:=false;


end;

procedure TForm1.N1Click(Sender: TObject);
begin
form5.ShowModal;
end;

procedure TForm1.nPeriodTimer(Sender: TObject);
begin
randomize;
nPeriod.Interval:=random(21)+26;
bns:=random(2)+1;
case sp of
26:n.Top:=260;
38:n.Top:=292;
247:n.Top:=273;
end;
nMove.Enabled:=true;
nPeriod.Enabled:=false;
end;

procedure TForm1.nMoveTimer(Sender: TObject);
begin
n.Left:=n.Left-26;
if n.Left=-26 then
begin
nMove.Enabled:=false;
n.Left:=520;
end;
end;

procedure TForm1.binfTimer(Sender: TObject);
begin
s.Font.Size:=s.Font.Size-1;
Centlab(s,Form1,1);
if s.Font.Size=26
then
begin
s.Visible:=false;
s.Font.Size:=10;
Centlab(s,Form1,3);
binf.Enabled:=false;
end;
end;

procedure TForm1.strsTimer(Sender: TObject);
begin
str.Font.Size:=str.Font.Size-1;
Centlab(str,Form1,3);
if str.Font.Size=0 then
begin
str.Visible:=false;
self.Enabled:=true;
end;


end;

procedure TForm1.FormShow(Sender: TObject);
begin

if show1=false then
begin

// this this the only change from 2024 - default initializer
try
  assignfile(fsl,'sstrw.sws');
  reset(fsl);
  read(fsl,save);
  closefile(fsl);
except

  save.lc1 := 0;
  save.lc2 := 1;
  save.ltm := 3;
  save.lsp := 26;

  // controlls
  // player 1
  save.c1u := 83;
  save.c1l := 65;
  save.c1r := 68;

  // player 2
  save.c2u := 38;
  save.c2l := 37;
  save.c2r := 39;
  
  // players
  save.lpa := 'Blue Player';
  save.lpb := 'Red Player';
end;

pa:=save.lpa;
pb:=save.lpb;
pla.Caption:=pa;
plb.Caption:=pb;
form5.load(save.c1u,form5.p1u,p1u);
form5.load(save.c1l,form5.p1l,p1l);
form5.load(save.c1r,form5.p1r,p1r);

form5.load(save.c2u,form5.p2u,p2u);
form5.load(save.c2l,form5.p2l,p2l);
form5.load(save.c2r,form5.p2r,p2r);

p1up:=p1u.Value;
p1lt:=p1l.Value;
p1rt:=p1r.Value;

p2up:=p2u.Value;
p2lt:=p2l.Value;
p2rt:=p2r.Value;
c1:=save.lc1;
c2:=save.lc2;
load(c2,c2);
a.Picture:=ac.Picture;
b.Picture:=bc.Picture;
sa.Picture:=form2.sa.Picture;
sb.Picture:=form2.sb.Picture;

show1:=true;
end;
end;

procedure TForm1.hintTimerTimer(Sender: TObject);
begin
f1.Visible:=false;
hintTimer.Enabled:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

timer1.Enabled:=false;

effbtn.Click;

timer1.Enabled:=false;

end;

procedure TForm1.effbtnClick(Sender: TObject);
begin

self.TransparentColor:=false;
self.Show;
hideall.Hide;

new;
str.Visible:=true;


end;

end.
