unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm_TQuadrado = class(TForm)
    btn_fechar: TButton;
    largura: TLabeledEdit;
    comprimento: TLabeledEdit;
    quantidade: TLabeledEdit;
    Label_param: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    und: TMemo;
    total: TMemo;
    procedure btn_fecharClick(Sender: TObject);
    procedure quantidadeChange(Sender: TObject);
    procedure comprimentoChange(Sender: TObject);
    procedure larguraChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_TQuadrado: TForm_TQuadrado;
  parametro:array[1..3] of real;
  a,b: real;
  pesound,pesototal: real;
implementation

{$R *.dfm}

procedure TForm_TQuadrado.btn_fecharClick(Sender: TObject);
begin
Form_TQuadrado.Close;
end;

procedure TForm_TQuadrado.Button1Click(Sender: TObject);
begin
a := parametro[1] * parametro[1];
pesound := a * parametro[2] * 7.85 / 1000;
pesound:=round(pesound);
pesototal := pesound * parametro[3] / 1000;
pesototal:=round(pesototal);
und.Lines.Add(floattostr(pesound));
total.Lines.Add(floattostr(pesototal))
end;

procedure TForm_TQuadrado.Button2Click(Sender: TObject);
begin
und.Clear;
total.Clear;
end;

procedure TForm_TQuadrado.comprimentoChange(Sender: TObject);
begin
parametro[2]:= strtofloat(Comprimento.Text);
end;

procedure TForm_TQuadrado.larguraChange(Sender: TObject);
begin
parametro[1]:= strtofloat(largura.Text);
end;

procedure TForm_TQuadrado.quantidadeChange(Sender: TObject);
begin
parametro[3]:= strtofloat(Quantidade.Text);
end;

end.
