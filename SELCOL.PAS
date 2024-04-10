unit selcol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,strwr;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    sc1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    pp1: TImage;
    GroupBox2: TGroupBox;
    sc2: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    pp2: TImage;
    SpeedButton1: TSpeedButton;
    procedure sc1Change(Sender: TObject);
    procedure sc2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses res;

{$R *.dfm}

procedure TForm6.sc1Change(Sender: TObject);
begin
case sc1.ItemIndex of
0:pp1.Picture:=form2.ab.Picture;
1:pp1.Picture:=form2.ar.Picture;
2:pp1.Picture:=form2.aGn.Picture;
3:pp1.Picture:=form2.aGr.Picture;
4:pp1.Picture:=form2.ap.Picture;
end;
end;

procedure TForm6.sc2Change(Sender: TObject);
begin
case sc2.ItemIndex of
0:pp2.Picture:=form2.ab.Picture;
1:pp2.Picture:=form2.ar.Picture;
2:pp2.Picture:=form2.aGn.Picture;
3:pp2.Picture:=form2.aGr.Picture;
4:pp2.Picture:=form2.ap.Picture;
end;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
c1:=sc1.ItemIndex;
c2:=sc2.ItemIndex;
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
save.lc1:=c1;
save.lc2:=c2;
write(fsl,save);
closefile(fsl);
form1.new;
close;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
sc1.ItemIndex:=c1;
case sc1.ItemIndex of
0:pp1.Picture:=form2.ab.Picture;
1:pp1.Picture:=form2.ar.Picture;
2:pp1.Picture:=form2.aGn.Picture;
3:pp1.Picture:=form2.aGr.Picture;
4:pp1.Picture:=form2.ap.Picture;
end;

sc2.ItemIndex:=c2;
case sc2.ItemIndex of
0:pp2.Picture:=form2.ab.Picture;
1:pp2.Picture:=form2.ar.Picture;
2:pp2.Picture:=form2.aGn.Picture;
3:pp2.Picture:=form2.aGr.Picture;
4:pp2.Picture:=form2.ap.Picture;
end;
end;

end.
