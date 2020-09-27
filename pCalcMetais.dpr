program pCalcMetais;

uses
  Vcl.Forms,
  uHome in 'uHome.pas' {Inicio},
  Unit2 in 'Unit2.pas' {Form_chapas},
  Unit3 in 'Unit3.pas' {Form_tredondo},
  Unit4 in 'Unit4.pas' {Form_bredonda},
  Unit5 in 'Unit5.pas' {Form_TQuadrado},
  Unit6 in 'Unit6.pas' {Form_cantoneira},
  Unit7 in 'Unit7.pas' {Form_FChato};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TInicio, Inicio);
  Application.CreateForm(TForm_chapas, Form_chapas);
  Application.CreateForm(TForm_tredondo, Form_tredondo);
  Application.CreateForm(TForm_bredonda, Form_bredonda);
  Application.CreateForm(TForm_TQuadrado, Form_TQuadrado);
  Application.CreateForm(TForm_cantoneira, Form_cantoneira);
  Application.CreateForm(TForm_FChato, Form_FChato);
  Application.CreateForm(TForm_chapas, Form_chapas);
  Application.CreateForm(TForm_tredondo, Form_tredondo);
  Application.CreateForm(TForm_bredonda, Form_bredonda);
  Application.CreateForm(TForm_TQuadrado, Form_TQuadrado);
  Application.CreateForm(TForm_cantoneira, Form_cantoneira);
  Application.CreateForm(TForm_FChato, Form_FChato);
  Application.Run;
end.
