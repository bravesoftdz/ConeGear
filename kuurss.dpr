program kuurss;

uses
  Forms,
  kuurs in 'kuurs.pas' {Form1},
  Unit2 in 'Unit2.pas',
  Materials in 'Materials.pas',
  Nom_sx in 'Nom_sx.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
