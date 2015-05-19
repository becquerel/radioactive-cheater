unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ShellApi, Buttons, TileImage, HTTPGet;

type
  TFormOnlineRCh = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    TileImage1: TTileImage;
    //HTTPGet1: THTTPGet;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOnlineRCh: TFormOnlineRCh;

implementation

uses Unit1, HTTPSend;

{$R *.dfm}

procedure TFormOnlineRCh.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = Chr(13) then begin
       bitbtn1click(sender);
   end;
end;

procedure TFormOnlineRCh.FormCreate(Sender: TObject);
var
   HTTP : THTTPSend;
begin
   HTTP := THTTPSend.Create;
   if unit1.Registr.ReadBool('useproxy') = TRUE then begin
      HTTP.ProxyHost := unit1.Registr.ReadString('proxyhost');
      HTTP.ProxyPort := unit1.Registr.ReadString('proxyport');
   end;

   combobox1.items.clear;
   if HTTP.HTTPMethod('GET', 'http://www.radioactive.cz/subdomeny/cheaty/!rchodb.rinf') = true then begin
      combobox1.items.LoadFromStream(HTTP.Document);
   end else begin
      if unit1.jazyk = 'svk' then begin
         combobox1.items.add('Pøipojení k internetu není k dispozici!');
      end else begin
         combobox1.items.add('Pøipojení k internetu není k dispozici!');
      end;
   end;


   tileimage1.Picture := form1.TileImage1.picture;
   edit1.color := form1.edit1.color;
   combobox1.color := form1.edit1.color;
   edit1.font.color := form1.Edit1.Font.color;
   combobox1.Font.color := form1.edit1.font.color;
   label1.font.color := form1.Label1.Font.color;
   label2.font.color := form1.Label1.Font.color;

   bitbtn1.glyph := form1. OKBut.glyph;
   if unit1.jazyk = 'svk' then begin
      Caption := 'H¾adanie - Online RCh';
      bitbtn2.glyph := form1.ZRUSITSVKBut.glyph;
      label1.caption := 'Databáza:';
      label2.caption := 'H¾adaný text:';

   end else begin
      bitbtn2.glyph := form1.ZRUSITBut.glyph;
   end;
   AlphaBlend := form1.AlphaBlend;
   AlphaBlendValue := form1.AlphaBlendValue;

   combobox1.itemindex := 0;
end;

procedure TFormOnlineRCh.BitBtn1Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('http://cheaty.radioactive.cz/index.php?dat=' + inttostr(combobox1.itemindex + 1) + '&hledej=' + edit1.Text + '&typ=1&search=' + edit1.Text + '&abeceda='),nil,nil,Sw_ShowNormal);
end;

procedure TFormOnlineRCh.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

end.
