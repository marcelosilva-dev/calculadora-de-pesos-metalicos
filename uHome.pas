unit uHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TInicio = class(TForm)
    btn_chapas: TButton;
    btn_TRedondo: TButton;
    btn_barraRed: TButton;
    btn_TQuadrado: TButton;
    btn_cantoneira: TButton;
    btn_FChato: TButton;
    btn_sair: TButton;
    Image1: TImage;
    Image2: TImage;
    procedure btn_chapasClick(Sender: TObject);
    procedure btn_TRedondoClick(Sender: TObject);
    procedure btn_barraRedClick(Sender: TObject);
    procedure btn_TQuadradoClick(Sender: TObject);
    procedure btn_cantoneiraClick(Sender: TObject);
    procedure btn_FChatoClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Inicio: TInicio;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

procedure TInicio.btn_barraRedClick(Sender: TObject);
begin
Form_bredonda.show;
end;

procedure TInicio.btn_chapasClick(Sender: TObject);
begin
Form_chapas.show;
end;

procedure TInicio.btn_FChatoClick(Sender: TObject);
begin
Form_FChato.show;
end;

procedure TInicio.btn_sairClick(Sender: TObject);
begin
Inicio.close;
end;

procedure TInicio.btn_TQuadradoClick(Sender: TObject);
begin
Form_TQuadrado.show;
end;

procedure TInicio.btn_TRedondoClick(Sender: TObject);
begin
Form_tredondo.show;
end;

procedure TInicio.btn_cantoneiraClick(Sender: TObject);
begin
Form_cantoneira.show;
end;

end.
