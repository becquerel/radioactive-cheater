program Cheater;


uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Formabout},
  Unit4 in 'Unit4.pas' {Formaktual},
  Unit5 in 'Unit5.pas' {Formregistrace},
  Unit6 in 'Unit6.pas' {Formhledani},
  Unit3 in 'Unit3.pas' {Formlicence},
  Unit7 in 'Unit7.pas' {Formdotaz},
  Unit8 in 'Unit8.pas' {Formfiltr},
  Unit13 in 'Unit13.pas' {Formdefinice},
  Unit14 in 'Unit14.pas' {Formsajty},
  Unit15 in 'Unit15.pas' {Formpoznamky},
  Unit16 in 'Unit16.pas' {FormGames},
  Unit17 in 'Unit17.pas' {Formprevod},
  Unit10 in 'Unit10.pas' {Formnastaveni},
  Unit11 in 'Unit11.pas' {FormCheatySK},
  Unit12 in 'Unit12.pas' {FormOnlineRCh},
  Unit9 in 'Unit9.pas' {FormDBinfo},
  Unit18 in 'Unit18.pas' {FormParametr},
  Unit19 in 'Unit19.pas' {FormGamePlanet};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Radioactive Cheater';
  Application.HelpFile := 'Cheater.hlp';

  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormregistrace, Formregistrace);
  Application.CreateForm(TFormaktual, Formaktual);
  Application.CreateForm(TFormDBinfo, FormDBinfo);
  Application.CreateForm(TFormGamePlanet, FormGamePlanet);
  Application.Run;
end.
