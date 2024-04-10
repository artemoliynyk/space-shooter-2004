unit info;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ComCtrls, ExtCtrls,shellapi;

type
  Tform4 = class(TForm)
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    cnt: TLabel;
    lb: TImage;
    la: TImage;
    ia: TLabel;
    ib: TLabel;
    pla: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    plb: TLabel;
    Memo1: TMemo;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label3MouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form4: Tform4;

implementation

uses strwr;

{$R *.dfm}

procedure Tform4.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure Tform4.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.Visible:=false;
image1.Enabled:=false;
label3.Visible:=true;
label3.Enabled:=true;
end;

procedure Tform4.Label3MouseLeave(Sender: TObject);
begin
image1.Visible:=true;
image1.Enabled:=true;
label3.Visible:=false;
label3.Enabled:=false;
end;

procedure Tform4.FormShow(Sender: TObject);
begin
pla.Caption:=FORM1.pla.Caption;
cnt.Caption:=form1.cnt.Caption;
end;

end.




