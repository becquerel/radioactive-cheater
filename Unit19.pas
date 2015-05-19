unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ShellApi;

type
  TFormGamePlanet = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGamePlanet: TFormGamePlanet;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormGamePlanet.FormCreate(Sender: TObject);
begin
   if unit1.jazyk = 'svk' then begin
      Caption := 'H¾adanie - GamePlanet.cz';
   end;
   AlphaBlend := form1.AlphaBlend;
   AlphaBlendValue := form1.AlphaBlendValue;
end;

procedure TFormGamePlanet.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = Chr(13) then begin
       image2click(sender);
   end;
end;

procedure TFormGamePlanet.Image2Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('http://www.gameplanet.cz/search.php?co='+edit1.text),nil,nil,Sw_ShowNormal);
end;

end.
