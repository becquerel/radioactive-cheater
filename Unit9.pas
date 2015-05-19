unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TileImage;

type
  TFormDBinfo = class(TForm)
    TileImage1: TTileImage;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDBinfo: TFormDBinfo;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormDBinfo.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFormDBinfo.FormActivate(Sender: TObject);
begin
   Color := form1.color;
   tileimage1.picture := form1.tileimage1.picture;
   BitBtn1.Glyph := form1.OKbut.Glyph;
   memo1.Color := form1.richedit1.Color;
   memo1.Font.Color := form1.RichEdit1.Font.color;
   label1.Font.Color := form1.label1.Font.color;
   label2.Font.Color := form1.label1.Font.color;
   label3.Font.Color := form1.label1.Font.color;
   label4.Font.Color := form1.label1.Font.color;
   label5.Font.Color := form1.label1.Font.color;
   edit1.color := form1.edit1.color;
   edit1.Font.color := form1.edit1.Font.color;
   edit2.color := form1.edit1.color;
   edit2.Font.color := form1.edit1.Font.color;
   edit3.color := form1.edit1.color;
   edit3.Font.color := form1.edit1.Font.color;
   edit4.color := form1.edit1.color;
   edit4.Font.color := form1.edit1.Font.color;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;

   if unit1.jazyk = 'svk' then begin
      caption := 'Informácie o databáze';
      label1.caption := 'Názov databázy:';
      label4.caption := 'Informácie o databáze';
      label5.caption := 'Dátum updatu:';
   end else begin
      caption := 'Informace o databázi';
      label1.caption := 'Název databáze:';
      label4.caption := 'Informace o databázi';
      label5.caption := 'Datum updatu:';
   end;
end;

end.
