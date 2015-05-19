unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TileImage, StdCtrls, Buttons, shellapi;

type
  TFormParametr = class(TForm)
    TileImage1: TTileImage;
    Edit1: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParametr: TFormParametr;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormParametr.Button1Click(Sender: TObject);
begin
   if opendialog1.execute then edit1.text := opendialog1.filename;
end;

procedure TFormParametr.BitBtn1Click(Sender: TObject);
begin

//   shellexecute(nil,nil,PChar(extractfilename(edit1.text)),PChar(edit2.text),pchar(''),nil)
   ShellExecute(Handle, 'open', PChar(edit1.text), PChar(edit2.Text), nil, SW_SHOWNORMAL);

//   winexec(PChar(edit1.text + ' ' + edit2.text),0);
//   shellexecute
end;

procedure TFormParametr.FormCreate(Sender: TObject);
begin
   color := form1.color;
   bitbtn1.glyph := form1.OKBut.glyph;
   tileimage1.picture := form1.tileimage1.picture;
   edit1.color := form1.edit1.color;
   edit1.font.color := form1.edit1.font.color;
   edit2.color := form1.edit1.color;
   edit2.font.color := form1.edit1.font.color;
   label1.Font.color := form1.label1.font.color;
   label2.Font.color := form1.label1.font.color;

   if jazyk = 'svk' then begin

      bitbtn2.glyph := form1.ZRUSITSVKBut.glyph;
      caption := 'Sp˙öùanie programov s parametrom';
      label1.caption := 'Cesta k s˙boru:';
      label2.caption := 'Parameter:';

   end else begin

      bitbtn2.glyph := form1.ZRUSITBut.glyph;
      caption := 'SpuötÏnÌ programu s parametrem';
      label1.caption := 'Cesta k souboru:';
      label2.caption := 'Parametr:';
   end;

end;

procedure TFormParametr.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

end.
