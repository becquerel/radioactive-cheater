unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ShellApi;

type
  TFormCheatySK = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheatySK: TFormCheatySK;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormCheatySK.Image2Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('http://www.abcgames.cz/default.asp?p=sekcia_hladaj&s=0&key='+edit1.text),nil,nil,Sw_ShowNormal);
end;

procedure TFormCheatySK.FormCreate(Sender: TObject);
begin
   if unit1.jazyk = 'svk' then begin
      Caption := 'H¾adanie - ABCGames.cz';
   end;

   AlphaBlend := form1.AlphaBlend;
   AlphaBlendValue := form1.AlphaBlendValue;

end;

procedure TFormCheatySK.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = Chr(13) then begin
       image2click(sender);
   end;

end;

end.
