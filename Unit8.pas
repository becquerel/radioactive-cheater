unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, TileImage, StdCtrls, Buttons;

type
  TFormfiltr = class(TForm)
    TileImage1: TTileImage;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formfiltr: TFormfiltr;

implementation

uses Unit1;

{$R *.DFM}

procedure TFormfiltr.Edit1KeyPress(Sender: TObject; var Key: Char);
//Filtrace kláves v edit1
var rid : integer;
begin

   if length(edit1.text)=0 then begin

       for rid := 0 to 47 do begin
          if key = Chr(rid) then key := Chr(10);
       end;

       for rid := 60 to 64 do begin
          if key = Chr(rid) then key := Chr(10);
      end;

      for rid := 91 to 96 do begin
          if key = Chr(rid) then key := Chr(10);
      end;

      for rid := 123 to 255 do begin
          if key = Chr(rid) then key := Chr(10);
      end;

   end;

   if Key = 'a' then Key := 'A';
   if Key = 'b' then Key := 'B';
   if Key = 'c' then Key := 'C';
   if Key = 'd' then Key := 'D';
   if Key = 'e' then Key := 'E';
   if Key = 'f' then Key := 'F';
   if Key = 'g' then Key := 'G';
   if Key = 'h' then Key := 'H';
   if Key = 'i' then Key := 'I';
   if Key = 'j' then Key := 'J';
   if Key = 'k' then Key := 'K';
   if Key = 'l' then Key := 'L';
   if Key = 'm' then Key := 'M';
   if Key = 'n' then Key := 'N';
   if Key = 'o' then Key := 'O';
   if Key = 'p' then Key := 'P';
   if Key = 'q' then Key := 'Q';
   if Key = 'r' then Key := 'R';
   if Key = 's' then Key := 'S';
   if Key = 't' then Key := 'T';
   if Key = 'u' then Key := 'U';
   if Key = 'v' then Key := 'V';
   if Key = 'w' then Key := 'W';
   if Key = 'x' then Key := 'X';
   if Key = 'y' then Key := 'Y';
   if Key = 'z' then Key := 'Z';
   if Key = 'ì' then Key := 'Ì';
   if Key = 'š' then Key := 'Š';
   if Key = 'è' then Key := 'È';
   if Key = 'ø' then Key := 'Ø';
   if Key = 'ž' then Key := 'Ž';
   if Key = 'ý' then Key := 'Ý';
   if Key = 'á' then Key := 'Á';
   if Key = 'í' then Key := 'Í';
   if Key = 'é' then Key := 'É';
   if Key = 'ù' then Key := 'Ù';
   if Key = 'ú' then Key := 'Ú';
   if Key = 'ó' then Key := 'Ó';
   if Key = 'ï' then Key := 'Ï';
   if Key = 'ò' then Key := 'Ò';

end;



procedure TFormfiltr.BitBtn1Click(Sender: TObject);
begin
   unit1.filtr := edit1.text;

   if length(edit1.text) > 0 then begin
      if jazyk = 'svk' then begin
         form1.label4.caption := 'Filter : "' + unit1.filtr + '"';
      end else begin
         form1.label4.caption := 'Filtr : "' + unit1.filtr + '"';
      end;
      form1.AplikovatFiltr;
   end else begin
      form1.label4.caption := '';
   end;

   Close;
end;

procedure TFormfiltr.Edit1Click(Sender: TObject);
begin
   edit1.selectall;
end;

procedure TFormfiltr.FormCreate(Sender: TObject);
begin
   bitbtn1.glyph := form1.OKBut.glyph;
   if unit1.jazyk = 'svk' then begin
      caption := 'Filter';
      label1.caption := 'Zadaj filter';
      bitbtn2.glyph := form1.ZRUSITSVKBut.glyph;
   end else begin
      bitbtn2.glyph := form1.ZRUSITBut.glyph;
   end;


   tileimage1.picture := form1.tileimage1.picture;

   color := form1.color;
   edit1.color := form1.edit1.color;
   edit1.font := form1.edit1.font;
   label1.font.color := form1.label1.font.color;

   edit1.text := unit1.filtr;
   edit1.selectall;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;

end;

end.
