unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, TileImage, StdCtrls, Buttons, ComCtrls;

type
  TFormpoznamky = class(TForm)
    TileImage1: TTileImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RichEdit1: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formpoznamky: TFormpoznamky;
  pridat,smazat : string;



implementation

uses Unit1;

{$R *.DFM}

procedure TFormpoznamky.FormCreate(Sender: TObject);

begin
   if jazyk = 'svk' then begin
      bitbtn1.glyph := form1.ULOZITSVKBut.glyph;
      bitbtn2.glyph := form1.ZRUSITSVKBut.glyph;
   end else begin
      bitbtn1.glyph := form1.ULOZITBut.glyph;
      bitbtn2.glyph := form1.ZRUSITBut.glyph;
   end;

   if Registr.ReadString('notespath') <> '' then begin

      if fileexists (Registr.ReadString('notespath')) then begin
         richedit1.lines.loadfromfile(Registr.ReadString('notespath'));
      end else begin
         richedit1.lines.clear;
      end;
   end;

   tileimage1.picture := form1.tileimage1.picture;

   richedit1.Color := form1.richedit1.color;
   richedit1.Font := form1.RichEdit1.font;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;

end;

procedure TFormpoznamky.BitBtn1Click(Sender: TObject);
var
   msgtext : string;
   buffermsg : array [0..255] of char;
begin

   if Registr.ReadString('notespath') <> '' then begin
      try
         richedit1.lines.savetofile(Registr.ReadString('notespath'));
      Except

         if jazyk = 'svk' then begin
            msgtext := 'Na tento disk nelze zapisovat. P¯ejete si pozn·mky uloûit jinam ?'
         end else begin
            msgtext := 'Na tento disk sa ned· zapisovaù. Prajete si pozn·mky uloûiù inde?'
         end;

         strpcopy (buffermsg,msgtext);

         if Application.MessageBox(buffermsg,'Chyba...',MB_YESNO + MB_iconERROR) = 6 then begin
            form1.savedialog1.FileName := 'poznamky.txt';
            if form1.savedialog1.execute then begin
               Registr.WriteString ('notespath',form1.savedialog1.filename);
               Richedit1.lines.SaveToFile(form1.savedialog1.filename);
            end;
         end;

      end;

      Close;

   end else begin

      Registr.WriteString('notespath',form1.DirectoryListBox1.Directory + '\notes.txt');
      bitbtn1click(Sender);

   end;

end;

procedure TFormpoznamky.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

end.
