unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm_bredonda = class(TForm)
    btn_fechar: TButton;
    Diametro: TLabeledEdit;
    Comprimento: TLabeledEdit;
    Quantidade: TLabeledEdit;
    Label1: TLabel;
    btn_calc: TButton;
    btn_clear: TButton;
    Label2: TLabel;
    Label3: TLabel;
    und: TMemo;
    total: TMemo;
    procedure btn_fecharClick(Sender: TObject);
    procedure DiametroChange(Sender: TObject);
    procedure ComprimentoChange(Sender: TObject);
    procedure QuantidadeChange(Sender: TObject);
    procedure btn_calcClick(Sender: TObject);
    procedure btn_clearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_bredonda: TForm_bredonda;
  parametro:array[1..3] of real;
  a,b: real;
  pesound,pesototal: real;
implementation

{$R *.dfm}

procedure TForm_bredonda.btn_calcClick(Sender: TObject);
begin
a := 3.14 * parametro[1] * parametro[1];
a := a / 4;
pesound := a * parametro[2] * 7.85 / 1000;
pesound:=round(pesound);
pesototal := pesound * parametro[3] / 1000;
pesototal:=round(pesototal);
und.Lines.Add(floattostr(pesound));
total.Lines.Add(floattostr(pesototal));
end;

procedure TForm_bredonda.btn_clearClick(Sender: TObject);
begin
und.Clear;
total.Clear;
end;

procedure TForm_bredonda.btn_fecharClick(Sender: TObject);
begin
Form_bredonda.Close;
end;

procedure TForm_bredonda.ComprimentoChange(Sender: TObject);
begin
parametro[2]:= strtofloat(Comprimento.Text);
end;

procedure TForm_bredonda.DiametroChange(Sender: TObject);
begin
parametro[1]:= strtofloat(Diametro.Text);
end;

procedure TForm_bredonda.QuantidadeChange(Sender: TObject);
begin
parametro[3]:= strtofloat(Quantidade.Text);
end;

end.
