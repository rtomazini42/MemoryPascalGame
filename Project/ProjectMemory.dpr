program ProjectMemory;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  TelaInicial in '..\Units\TelaInicial.pas' {Inicio},
  Config in '..\Units\Config.pas' {Configurar},
  GameStatus in '..\Units\GameStatus.pas',
  GameTela in '..\Units\GameTela.pas' {GameLoop},
  RecordsTela in '..\Units\RecordsTela.pas' {Records};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TInicio, Inicio);
  Application.CreateForm(TConfigurar, Configurar);
  Application.CreateForm(TRecords, Records);
  Application.Run;
end.
