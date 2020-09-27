unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm_FChato = class(TForm)
    btn_fechar: TButton;
    Largura: TLabeledEdit;
    Espessura: TLabeledEdit;
    Comprimento: TLabeledEdit;
    Quantidade: TLabeledEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    label_pesoUND: TLabel;
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
  Form_FChato: TForm_FChato;
  parametro:array[1..4] of real;
  a,b: real;
  pesound,pesototal: real;
implementation

{$R *.dfm}

procedure TForm_FChato.btn_fecharClick(Sender: TObject);
begin
Form_FChato.Close;
end;

procedure TForm_FChato.Button1Click(Sender: TObject);
var
pesoundint:integer;
begin
a := parametro[2] * parametro[1];
pesound := a * parametro[3] * 7.85 / 1000;
pesoundint:=round(pesound);
pesototal := pesound * parametro[4] / 1000;
pesototal:=round(pesototal);
und.Lines.Add(floattostr(pesoundint));
total.Lines.Add(floattostr(pesototal));
end;

procedure TForm_FChato.Button2Click(Sender: TObject);
begin
und.Clear;
total.Clear;
end;

procedure TForm_FChato.ComprimentoChange(Sender: TObject);
begin
parametro[3]:= strtofloat(Comprimento.Text);
end;

procedure TForm_FChato.EspessuraChange(Sender: TObject);
begin
parametro[2]:= strtofloat(Espessura.Text);
end;

procedure TForm_FChato.LarguraChange(Sender: TObject);
begin
parametro[1]:= strtofloat(Largura.Text);
end;

procedure TForm_FChato.QuantidadeChange(Sender: TObject);
begin
parametro[4]:= strtofloat(Quantidade.Text);
end;

end.
