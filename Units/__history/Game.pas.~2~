unit Game;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs;

type
  TGameLoop = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GameLoop: TGameLoop;

implementation

{$R *.fmx}

uses GameStatus;

procedure TGameLoop.FormCreate(Sender: TObject);
begin
  ShowMessage(GameStatus.getNumPares.ToString);
end;

end.
