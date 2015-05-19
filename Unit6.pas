unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, TileImage;

type
  TFormhledani = class(TForm)
    TileImage1: TTileImage;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Nevyskytuje;
  end;

var
   Formhledani: TFormhledani;
//   fulltext : textfile;
   jo : boolean;
   hledat : integer ;
implementation

uses Unit1;

{$R *.DFM}

procedure TFormhledani.Edit1KeyPress(Sender: TObject; var Key: Char);

//Filtrace kl·ves v edit1
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
   if Key = 'Ï' then Key := 'Ã';
   if Key = 'ö' then Key := 'ä';
   if Key = 'Ë' then Key := '»';
   if Key = '¯' then Key := 'ÿ';
   if Key = 'û' then Key := 'é';
   if Key = '˝' then Key := '›';
   if Key = '·' then Key := '¡';
   if Key = 'Ì' then Key := 'Õ';
   if Key = 'È' then Key := '…';
   if Key = '˘' then Key := 'Ÿ';
   if Key = '˙' then Key := '⁄';
   if Key = 'Û' then Key := '”';
   if Key = 'Ô' then Key := 'œ';
   if Key = 'Ú' then Key := '“';
   if Key = 'ù' then Key := 'ç';

end;



//NajÌt dalöÌ poloûku
procedure TFormhledani.BitBtn1Click(Sender: TObject);
var retez : string;
    inpozice : integer;
    pozice : byte;

begin
 if (length(edit1.text) > 0) and (AktStr.count > 0) then begin
   unit1.filtr := '';
   jo := false;

   repeat

      if hledat < AktStr.count-1 then begin
         hledat := hledat + 1;
      end else begin
         Nevyskytuje;
         hledat := 0;
      end;

      retez := AktStr.names[hledat];

      pozice := 0;
      repeat
         Inc(pozice);
         if length(retez) > 0 then begin
            if AnsiUpperCase(retez[pozice]) = AnsiUpperCase(edit1.text[1]) then begin
               jo := true;

               if length(edit1.text) > length(retez) then begin
                  jo := false;
               end else begin

                  if length(edit1.Text) < length(retez) then begin
                     for inpozice := 2 to length(edit1.text) do begin
                        if AnsiUpperCase(edit1.text[inpozice]) <> AnsiUpperCase(retez[pozice+inpozice-1]) then begin
                           jo := false;
                        end;
                     end;
                  end;

                  if length(edit1.Text) = length(retez) then begin
                     if AnsiUpperCase(edit1.Text) = AnsiUpperCase(retez) then begin
                        jo := true;
                     end else begin
                        jo := false;
                     end;
                  end;

               end;

            end;
         end;

      until (pozice = length(retez))or jo;


   until (hledat = AktStr.count-1) or jo;

 end;

 if (hledat = AktStr.count-1) and (jo <> true) then begin
    Nevyskytuje;
    hledat := -1;
 end;

 if jo = true then begin
    label2.caption := retez;
 end;


end;

procedure TFormhledani.Nevyskytuje;
begin
    if jazyk = 'svk' then begin
       Application.messagebox('éiadna Ôalöia poloûka sa v datab·ze nevyskytuje','Koniec s˙boru',mb_ok + mb_iconasterisk);
    end else begin
       Application.messagebox('é·dn· dalöÌ poloûka se v datab·zi nevyskytuje','Konec souboru',mb_ok + mb_iconasterisk);
    end;

end;

procedure TFormhledani.Edit1Change(Sender: TObject);
begin
   hledat := -1;
   jo := false;
end;


//OK
procedure TFormhledani.BitBtn3Click(Sender: TObject);
var x : byte;
begin
   if (label2.caption <> '') and (AktStr.count > 0) then begin
      form1.edit1.text := '';
      form1.edit1.text := form1.edit1.text + label2.caption[1];
      form1.edit1change(sender);

      form1.listbox2.itemindex := Ord(label2.caption[1])-64;

      for x:= 0 to 9 do begin
         if label2.caption[1] = inttostr(x) then begin
            form1.listbox2.itemindex := 0;
         end;
      end;

      form1.edit1.text := label2.caption;



{      if form1.listbox2.itemindex = -1 then form1.listbox2.itemindex := 0;
      form1.listbox2click(sender);
      form1.edit1change(sender);}


   end;
form1.edit1.selectall;
Close;
end;

procedure TFormhledani.Edit1Click(Sender: TObject);
begin
   edit1.selectall;
end;

procedure TFormhledani.FormCreate(Sender: TObject);
begin
   bitbtn3.glyph := form1.OKBut.glyph;
   if unit1.jazyk = 'svk' then begin
      caption := 'FullText hæadanie';
      label1.caption := 'Zadaj hæadan˙ Ëasù n·zvu';
      bitbtn1.glyph := form1.NAJITSVKBut.glyph;
      bitbtn2.glyph := form1.ZRUSITSVKBut.glyph;
   end else begin
      bitbtn1.glyph := form1.NAJITBut.glyph;
      bitbtn2.glyph := form1.ZRUSITBut.glyph;
   end;


   color := form1.color;
   tileimage1.picture := form1.tileimage1.picture;

   edit1.color := form1.edit1.color;
   edit1.font.color := form1.edit1.font.color;
   label1.color := form1.label1.color;
   label1.font.color := form1.label1.font.color;
   label2.color := form1.label1.color;
   label2.font.color := form1.label1.font.color;


   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;



end;

end.
