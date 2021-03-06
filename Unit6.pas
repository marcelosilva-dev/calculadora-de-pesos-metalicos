unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm_cantoneira = class(TForm)
    btn_fechar: TButton;
    Largura: TLabeledEdit;
    Espessura: TLabeledEdit;
    Comprimento: TLabeledEdit;
    Quantidade: TLabeledEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    und: TMemo;
    total: TMemo;
    procedure btn_fecharClick(Sender: TObject);
    procedure LarguraChange(Sender: TObject);
    procedure EspessuraChange(Sender: TObject);
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
  Form_cantoneira: TForm_cantoneira;
  parametro:array[1..4] of real;
  a,b: real;
  pesound,pesototal: real;
implementation

{$R *.dfm}

procedure TForm_cantoneira.btn_fecharClick(Sender: TObject);
begin
Form_cantoneira.Close;
end;

procedure TForm_cantoneira.Button1Click(Sender: TObject);
begin
a := parametro[1] * parametro[1];
b := parametro[1] - parametro[2];
b := b * b;
a := a - b;
pesound := a * parametro[3] * 7.85 / 1000;
pesound:=round(pesound);
pesototal := pesound * parametro[4] / 1000;
pesototal:=round(pesototal);
und.Lines.Add(floattostr(pesound));
total.Lines.Add(floattostr(pesototal));
end;

procedure TForm_cantoneira.Button2Click(Sender: TObject);
begin
und.clear;
total.clear;
end;

procedure TForm_cantoneira.ComprimentoChange(Sender: TObject);
begin
parametro[3]:= strtofloat(Comprimento.Text);
end;

procedure TForm_cantoneira.EspessuraChange(Sender: TObject);
begin
parametro[2]:= strtofloat(Espessura.Text);
end;

procedure TForm_cantoneira.LarguraChange(Sender: TObject);
begin
parametro[1]:= strtofloat(Largura.Text);
end;

procedure TForm_cantoneira.QuantidadeChange(Sender: TObject);
begin
parametro[4]:= strtofloat(Quantidade.Text);
end;

end.
