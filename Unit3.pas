unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm_tredondo = class(TForm)
    btn_fechar: TButton;
    label_diamINT: TLabeledEdit;
    label_diamTOTAL: TLabeledEdit;
    Comprimento: TLabeledEdit;
    Quantidade: TLabeledEdit;
    Label_PARAM: TLabel;
    Button1: TButton;
    Label_PESOUND: TLabel;
    und: TMemo;
    Label_pesoTOT: TLabel;
    total: TMemo;
    Button2: TButton;
    procedure btn_fecharClick(Sender: TObject);
    procedure label_diamINTChange(Sender: TObject);
    procedure label_diamTOTALChange(Sender: TObject);
    procedure ComprimentoChange(Sender: TObject);
    procedure QuantidadeChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_tredondo: TForm_tredondo;
    parametro:array[1..4] of real;
  a,b: real;
  pesound,pesototal: real;
implementation

{$R *.dfm}

procedure TForm_tredondo.btn_fecharClick(Sender: TObject);
begin
Form_tredondo.Close;
end;

procedure TForm_tredondo.Button1Click(Sender: TObject);
begin
a := parametro[2] * parametro[2] * 3.14;
a := a / 4;
b := parametro[1] * parametro[1] * 3.14;
b := b / 4;
a := a - b;
pesound := a * parametro[3] * 7.85 / 1000;
pesound:=round(pesound);
pesototal := pesound * parametro[4] / 1000;
pesototal:=round(pesototal);
und.Lines.Add(floattostr(pesound));
total.Lines.Add(floattostr(pesototal));
end;

procedure TForm_tredondo.Button2Click(Sender: TObject);
begin
und.Clear;
total.Clear;
end;

procedure TForm_tredondo.ComprimentoChange(Sender: TObject);
begin
parametro[3]:= strtofloat(comprimento.Text);
end;

procedure TForm_tredondo.label_diamINTChange(Sender: TObject);
begin
parametro[1]:= strtofloat(label_diamINT.Text);
end;

procedure TForm_tredondo.label_diamTOTALChange(Sender: TObject);
begin
parametro[2]:= strtofloat(label_diamTOTAL.Text);
end;

procedure TForm_tredondo.QuantidadeChange(Sender: TObject);
begin
parametro[4]:= strtofloat(quantidade.Text);
end;

end.
