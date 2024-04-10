unit opt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, strwr, Spin, ExtCtrls;

type
  Tform3 = class(TForm)
    speed: TGroupBox;
    m: TRadioButton;
    h: TRadioButton;
    vh: TRadioButton;
    lifes: TGroupBox;
    l3: TRadioButton;
    l2: TRadioButton;
    l1: TRadioButton;
    players: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    pl1: TEdit;
    pl2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dif: TRadioButton;
    dl: TSpinEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure difClick(Sender: TObject);
    procedure l1Click(Sender: TObject);
    procedure l2Click(Sender: TObject);
    procedure l3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  form3: TForm;

implementation





{$R *.dfm}

procedure Tform3.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure Tform3.SpeedButton1Click(Sender: TObject);
begin
pa:=pl1.Text;
pb:=pl2.Text;
form1.pla.Caption:=pa;
form1.plb.Caption:=pb;
//lifes
if l1.Checked then tm:=1;
if l2.Checked then tm:=2;
if l3.Checked then tm:=3;
if dif.Checked then tm:=dl.Value;
//speed
if h.Checked then sp:=38;
if m.Checked then sp:=26;
if vh.Checked then sp:=247;

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
form1.new;
close;
end;

procedure Tform3.difClick(Sender: TObject);
begin
if dif.Checked then dl.Enabled:=true;
end;


procedure Tform3.l1Click(Sender: TObject);
begin
if dif.Checked=false then dl.Enabled:=false;
end;

procedure Tform3.l2Click(Sender: TObject);
begin
if dif.Checked=false then dl.Enabled:=false;
end;

procedure Tform3.l3Click(Sender: TObject);
begin
if dif.Checked=false then dl.Enabled:=false;
end;

procedure Tform3.FormShow(Sender: TObject);
begin
pl1.Text:=pa;
pl2.Text:=pb;
if tm=1 then l1.Checked:=true
else
if tm=2 then l2.Checked:=true
else
if tm=3 then l3.Checked:=true
else
begin
dif.Checked:=true;
dl.Value:=tm;
end;
end;

end.
