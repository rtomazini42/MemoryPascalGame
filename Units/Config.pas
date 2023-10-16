unit Config;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts;

type
  TConfigurar = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    PlayBtn: TRectangle;
    QuantidadePares: TLabel;
    Layout1: TLayout;
    Layout2: TLayout;
    Rectangle2: TRectangle;
    Label2: TLabel;
    Rectangle3: TRectangle;
    Label3: TLabel;
    Label4: TLabel;
    Layout3: TLayout;
    Rectangle4: TRectangle;
    Label5: TLabel;
    Rectangle5: TRectangle;
    Label6: TLabel;
    Rectangle6: TRectangle;
    Label7: TLabel;
    Label8: TLabel;
    Layout4: TLayout;
    Rectangle7: TRectangle;
    Label9: TLabel;
    Label12: TLabel;
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);
    procedure Rectangle7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Configurar: TConfigurar;
  NumParesVisual: Integer;

implementation

{$R *.fmx}

uses GameStatus;

procedure TConfigurar.FormCreate(Sender: TObject);
begin
    QuantidadePares.Text :=  GameStatus.getNumPares.ToString;
end;

procedure TConfigurar.Rectangle2Click(Sender: TObject);
var
  auxQtdPares: integer;
begin
      if  QuantidadePares.Text.ToInteger > 1 then
      begin
        auxQtdPares := QuantidadePares.Text.ToInteger;
        auxQtdPares := auxQtdPares - 1;
        QuantidadePares.Text :=  auxQtdPares.ToString;
        GameStatus.setNumPares(auxQtdPares);
      end
      else
        ShowMessage('Impossivel menos pares que 1');

end;

procedure TConfigurar.Rectangle3Click(Sender: TObject);
var
  auxQtdPares: integer;
begin
      if  QuantidadePares.Text.ToInteger < 13 then
      begin
        auxQtdPares := QuantidadePares.Text.ToInteger;
        auxQtdPares := auxQtdPares + 1;
        QuantidadePares.Text :=  auxQtdPares.ToString;
        GameStatus.setNumPares(auxQtdPares);
      end
      else
        ShowMessage('Impossivel mais pares que 13');


end;

procedure TConfigurar.Rectangle7Click(Sender: TObject);
begin
Close;
end;

end.
