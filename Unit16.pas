unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls, ShellApi;

type
  TFormGames = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGames: TFormGames;

implementation

uses Unit1;

{$R *.DFM}

procedure TFormGames.Image2Click(Sender: TObject);

begin
   ShellExecute(0,'open',Pchar('http://www.gameslink.cz/via.php?action=7&search_type=1&searchin=0&searchstring2='+edit1.text),nil,nil,Sw_ShowNormal);
end;

procedure TFormGames.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = Chr(13) then begin
       image2click(sender);
   end;
end;

procedure TFormGames.FormCreate(Sender: TObject);
begin
   if unit1.jazyk = 'svk' then begin
      Caption := 'H¾adanie - GamesLink.cz';
   end;

   AlphaBlend := form1.AlphaBlend;
   AlphaBlendValue := form1.AlphaBlendValue;
end;

end.
