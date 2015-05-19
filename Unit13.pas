unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls, TileImage;

type
  TFormdefinice = class(TForm)
    TileImage1: TTileImage;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    RichEdit3: TRichEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    RichEdit6: TRichEdit;
    RichEdit7: TRichEdit;
    RichEdit8: TRichEdit;
    TabSheet6: TTabSheet;
    RichEdit5: TRichEdit;
    RichEdit4: TRichEdit;
    RichEdit9: TRichEdit;
    RichEdit10: TRichEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formdefinice: TFormdefinice;

implementation

uses Unit1;

{$R *.DFM}

procedure TFormdefinice.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFormdefinice.FormCreate(Sender: TObject);
begin
   bitbtn1.glyph := form1.OKBut.glyph;
   if unit1.jazyk = 'svk' then begin
      caption := 'Inform·cie';
      TabSheet1.caption := 'DefinÌcia Cheatov';
      TabSheet2.caption := 'ProblÈmy pri cheatovanÌ';
      TabSheet3.caption := 'HEX Edit·cia';
      TabSheet4.caption := 'Sp˙öùanie s parametrom';
      TabSheet5.caption := 'SlovnÌËek pojmov';

      richedit1.visible := false;
      richedit6.visible := true;

      richedit2.visible := false;
      richedit7.visible := true;

      richedit3.visible := false;
      richedit8.visible := true;

      richedit9.visible := false;
      richedit10.visible := true;

//      67810

      richedit1.SendToBack;
      richedit2.SendToBack;
      richedit3.SendToBack;
      richedit9.SendToBack;

      richedit6.BringToFront;
      richedit7.BringToFront;
      richedit8.BringToFront;
      richedit10.BringToFront;

   end else begin

      richedit6.SendToBack;
      richedit7.SendToBack;
      richedit8.SendToBack;
      richedit10.SendToBack;

      richedit1.BringToFront;
      richedit2.BringToFront;
      richedit3.BringToFront;
      richedit9.BringToFront;

   end;


   tileimage1.picture := form1.tileimage1.picture;
   color := form1.richedit1.color;
   richedit1.color := form1.richedit1.color;
   richedit1.font.color := form1.richedit1.font.color;

   richedit2.color := form1.richedit1.color;
   richedit2.font.color := form1.richedit1.font.color;
   richedit3.color := form1.richedit1.color;
   richedit3.font.color := form1.richedit1.font.color;
   richedit4.color := form1.richedit1.color;
   richedit4.font.color := form1.richedit1.font.color;
   richedit5.color := form1.richedit1.color;
   richedit5.font.color := form1.richedit1.font.color;
   richedit6.color := form1.richedit1.color;
   richedit6.font.color := form1.richedit1.font.color;
   richedit7.color := form1.richedit1.color;
   richedit7.font.color := form1.richedit1.font.color;
   richedit8.color := form1.richedit1.color;
   richedit8.font.color := form1.richedit1.font.color;
   richedit9.color := form1.richedit1.color;
   richedit9.font.color := form1.richedit1.font.color;
   richedit10.color := form1.richedit1.color;
   richedit10.font.color := form1.richedit1.font.color;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;


end;

end.
