program StarWars;

uses
  Forms,
  strwr in 'STRWR.PAS' {Form1},
  res in 'res.pas' {Form2},
  info in 'info.pas' {form4},
  opt in 'opt.pas' {form3},
  cont in 'cont.pas' {Form5},
  selcol in 'selcol.pas' {Form6},
  LibAz in 'LibAz.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Star Wars';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tform4, form4);
  Application.CreateForm(Tform3, form3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;

  end.
