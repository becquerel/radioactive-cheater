unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls, TileImage;

type
  TFormlicence = class(TForm)
    TileImage1: TTileImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure HarmFade2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formlicence: TFormlicence;

implementation

uses Unit1;

{$R *.DFM}

procedure TFormlicence.FormCreate(Sender: TObject);
begin

   if unit1.jazyk = 'svk' then begin
      caption := 'Licencia';
      label2.caption := 'Pozorne si prosím preèítajte nasledujúci text';
      label1.caption := 'Súhlasíte s licenènými podmienkami ?';
      bitbtn1.glyph := form1.ANOSVKBut.glyph;
      bitbtn2.glyph := form1.NESVKBut.glyph;
   end else begin
      bitbtn1.glyph := form1.ANOBut.glyph;
      bitbtn2.glyph := form1.NEBut.glyph;
   end;


   color := form1.color;
   tileimage1.picture := form1.tileimage1.picture;

   memo1.color := form1.richedit1.color;
   memo1.font.color := form1.richedit1.font.color;
   label1.Color := form1.label1.color;
   label1.font.Color := form1.label1.font.color;
   label2.Color := form1.label1.color;
   label2.font.Color := form1.label1.font.color;


   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;

end;

procedure TFormlicence.HarmFade2Click(Sender: TObject);
begin
   Close;
end;

end.
