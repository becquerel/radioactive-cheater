unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, TileImage, StdCtrls, math;

type
  TFormprevod = class(TForm)
    TileImage1: TTileImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formprevod: TFormprevod;

implementation

uses Unit1;

{$R *.DFM}

procedure TFormprevod.FormCreate(Sender: TObject);
begin
   if unit1.jazyk = 'svk' then begin
      caption := 'Prevody - HEX / DEC';
   end;
   tileimage1.picture := form1.tileimage1.picture;

   edit1.Color := form1.RichEdit1.color;
   edit1.font.Color := form1.RichEdit1.font.color;
   edit2.Color := form1.RichEdit1.color;
   edit2.font.Color := form1.RichEdit1.font.color;
   label1.font.color := form1.label1.font.color;
   label2.font.color := form1.label1.font.color;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;


end;

procedure TFormprevod.Edit1KeyPress(Sender: TObject; var Key: Char);
var cislodec : byte;
cislosuccess : boolean;
begin
   cislosuccess := false;
   for cislodec := 48 to 57 do begin
      if Ord(key) = cislodec then begin
         key := Chr(cislodec);
         cislosuccess := true;
      end;
   end;
   if Ord(key) = 8 then cislosuccess := true;

   if not cislosuccess then key := Chr(3);

end;


procedure TFormprevod.Edit2KeyPress(Sender: TObject; var Key: Char);
var cislosuccess : boolean;
cislodec : byte;
begin
cislosuccess := false;
   for cislodec := 48 to 57 do begin
      if Ord(key) = cislodec then begin
         key := Chr(cislodec);
         cislosuccess := true;
      end;
   end;
   if Ord(key) = 8 then cislosuccess := true;
   if Key = 'A' then cislosuccess := true;
   if Key = 'B' then cislosuccess := true;
   if Key = 'C' then cislosuccess := true;
   if Key = 'D' then cislosuccess := true;
   if Key = 'E' then cislosuccess := true;
   if Key = 'F' then cislosuccess := true;

   if Key = 'a' then begin
      Key := 'A';
      cislosuccess := true;
   end;
   if Key = 'b' then begin
      Key := 'B';
      cislosuccess := true;
   end;
   if Key = 'c' then begin
      Key := 'C';
      cislosuccess := true;
   end;
   if Key = 'd' then begin
      Key := 'D';
      cislosuccess := true;
   end;
   if Key = 'e' then begin
      Key := 'E';
      cislosuccess := true;
   end;
   if Key = 'f' then begin
      Key := 'F';
      cislosuccess := true;
   end;

   if not cislosuccess then key := Chr(3);
end;

procedure TFormprevod.Edit1Change(Sender: TObject);
begin
   if length(edit1.text) > 0 then begin
      edit2.text := inttohex(strtoint(edit1.text),1);
   end else begin
      edit2.text := '';
      edit1.text := '';
   end;
end;

procedure TFormprevod.Edit2Change(Sender: TObject);
var delkahex : byte;
vysledekDEC, tempvysledek : integer;
begin

   if length(edit2.text) > 0 then begin
      vysledekDEC := 0;
      for delkaHEX := 0 to length(edit2.text)-1 do begin

         if edit2.text[delkahex + 1] = 'A' then tempvysledek := 10 else begin
            if edit2.text[delkahex + 1] = 'B' then tempvysledek := 11 else begin
               if edit2.text[delkahex + 1] = 'C' then tempvysledek := 12 else begin
                  if edit2.text[delkahex + 1] = 'D' then tempvysledek := 13 else begin
                     if edit2.text[delkahex + 1] = 'E' then tempvysledek := 14 else begin
                        if edit2.text[delkahex + 1] = 'F' then tempvysledek := 15 else begin
                           tempvysledek := strtoint(edit2.text[delkahex + 1]);
                        end;
                     end;
                  end;
               end;
            end;
         end;

         vysledekDEC := vysledekDEC + round(power(16,length(edit2.text) - 1 - delkaHEX)) * tempvysledek;//strtoint(edit1.text[length(edit1.text) - delkaHEX]);
      end;
      edit1.text := inttostr(vysledekDEC);
   end else begin
      edit1.text := '';
   end;
end;

end.
