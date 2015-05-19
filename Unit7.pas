unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, TileImage, Buttons;

type
  TFormdotaz = class(TForm)
    TileImage1: TTileImage;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    RichEdit1: TRichEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit6: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RichEdit2: TRichEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Edit8: TEdit;
    Label10: TLabel;
    ComboBox1: TComboBox;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    Edit11: TEdit;
    Label13: TLabel;
    Edit12: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure zkoprich;
    { Public declarations }
  end;

var
  Formdotaz: TFormdotaz;

implementation

uses Unit1;

{$R *.DFM}

procedure TFormdotaz.BitBtn1Click(Sender: TObject);
begin
   richedit2.lines.clear;
   zkoprich;
//   form1.SaveDialog1.DefaultExt := '*.txt';
//   form1.SaveDialog1.Filter := 'Text|*.txt';


   if length(edit2.text) > 0 then begin
      form1.savedialog1.filename := edit1.text[1] + edit2.text;
   end else begin
      form1.savedialog1.filename := edit1.text;
   end;

   if form1.savedialog1.execute then begin
      richedit2.lines.savetofile(form1.savedialog1.filename);
   end;


end;

procedure TFormdotaz.zkoprich;
var x : word;
begin
   richedit2.lines.add('Radioactive Cheater 6.0');
   richedit2.lines.add('');
   richedit2.lines.add('jméno / nick : ' + edit1.text);
   richedit2.lines.add('e-mail : ' + edit3.text);
   richedit2.lines.add('www : ' + edit4.text);
   richedit2.lines.add('mìsto : ' + edit6.text);
   richedit2.lines.add('vìk : ' + edit8.text);
   richedit2.lines.add('ICQ : ' + edit12.text);
   richedit2.lines.add('konfigurace : ' + edit9.text);
   richedit2.lines.add('odkud : ' + combobox1.text);
   richedit2.lines.add('upøesnìno : ' + edit10.text);
   richedit2.lines.add('nejpoužívanìjší db : ' + edit11.text);
   richedit2.lines.add('chybìjící db : ' + edit2.text);

   richedit2.lines.add('');

   for x:= 0 to richedit1.lines.count do begin
      richedit2.lines.add(richedit1.Lines.Strings[x]);
   end;

end;
procedure TFormdotaz.FormCreate(Sender: TObject);
begin
   if unit1.jazyk = 'svk' then begin
      bitbtn1.glyph := form1.ULOZITSVKBut.glyph;
      bitbtn2.glyph := form1.ZRUSITSVKBut.glyph;

      label1.caption := 'Meno / Nick';
      label5.caption := 'Mesto / Vesnice';
      label10.caption := 'Vek (váš)';
      label9.caption := 'Konfigurácia systému, na ktorom to beží';
      label11.caption := 'Upresnite prosím (www stránky, názov èasopisu, èíslo, ...';
      label12.caption := 'Ktorú databázu najèastejšie používate ?';
      label6.caption := 'Ktorá nevydaná databáza vám chýba ?';
      label4.caption := 'Miesto pre èoko¾vek';
      label3.caption := 'Ïakujeme za vyplnenie a odoslanie dotazníku';
      label7.caption := 'Kde ste RCh našiel ?';

      combobox1.items.clear;
      combobox1.items.add('Oficiálny web (www.radioactive.cz)');
      combobox1.items.add('Iné www stránky');
      combobox1.items.add('CD èasopisu');
      combobox1.items.add('Od kamaráta');
      combobox1.items.add('Inde');

      combobox1.ItemIndex := 0;



   end else begin
      bitbtn1.glyph := form1.ULOZITBut.glyph;
      bitbtn2.glyph := form1.ZRUSITBut.glyph;
   end;


   color := form1.color;
   tileimage1.picture := form1.tileimage1.picture;

   edit1.color := form1.edit1.color;
   edit1.font.color := form1.edit1.font.color;
   edit2.color := form1.edit1.color;
   edit2.font.color := form1.edit1.font.color;
   edit3.color := form1.edit1.color;
   edit3.font.color := form1.edit1.font.color;
   edit4.color := form1.edit1.color;
   edit4.font.color := form1.edit1.font.color;
//   edit5.color := form1.edit1.color;
//   edit5.font.color := form1.edit1.font.color;
   edit6.color := form1.edit1.color;
   edit6.font.color := form1.edit1.font.color;
//   edit7.color := form1.edit1.color;
//   edit7.font.color := form1.edit1.font.color;

   edit8.color := form1.edit1.color;
   edit8.font.color := form1.edit1.font.color;
   edit9.color := form1.edit1.color;
   edit9.font.color := form1.edit1.font.color;
   edit10.color := form1.edit1.color;
   edit10.font.color := form1.edit1.font.color;
   edit11.color := form1.edit1.color;
   edit11.font.color := form1.edit1.font.color;
   edit12.color := form1.edit1.color;
   edit12.font.color := form1.edit1.font.color;

   {edit7.color := form1.edit1.color;
   edit7.font.color := form1.edit1.font.color;}

   combobox1.Color := form1.edit1.color;
   combobox1.font.Color := form1.edit1.font.color;

   richedit1.color := form1.richedit1.color;
   richedit1.font.Color := form1.richedit1.font.color;

   label1.Font.color := form1.label1.font.color;
   label2.Font.color := form1.label1.font.color;
   label3.Font.color := form1.label1.font.color;
   label4.Font.color := form1.label1.font.color;
   label5.Font.color := form1.label1.font.color;
   label6.Font.color := form1.label1.font.color;
   label7.Font.Color := form1.label1.font.color;
   label8.Font.color := form1.label1.font.color;
   label9.Font.color := form1.label1.font.color;
   label10.Font.color := form1.label1.font.color;
   label11.Font.color := form1.label1.font.color;
   label12.Font.color := form1.label1.font.color;
   label13.font.color := form1.label1.Font.color;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;

end;

end.
