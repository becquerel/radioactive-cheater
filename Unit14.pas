unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, TileImage, jpeg, ShellApi, ComCtrls;

type
  TFormsajty = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TileImage1: TTileImage;
    BitBtn1: TBitBtn;
    Memo2: TMemo;
    Image2: TImage;
    Memo3: TMemo;
    Image7: TImage;
    TabSheet5: TTabSheet;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Image5: TImage;
    Image10: TImage;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Image11: TImage;
    Image12: TImage;
    Label20: TLabel;
    Label21: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formsajty: TFormsajty;

implementation

uses Unit1;

{$R *.DFM}

procedure TFormsajty.FormCreate(Sender: TObject);
begin

  bitbtn1.glyph := form1.OKbut.glyph;
  if unit1.jazyk = 'svk' then begin
     caption := 'Spriatelené sajty';
     tabSheet5.caption := 'Ostatné sajty';
  end;

  color := form1.richedit1.color;

  tileimage1.picture := form1.tileimage1.picture;

//  memo1.color := form1.richedit1.color;
  memo2.color := form1.richedit1.color;
  memo3.color := form1.richedit1.color;
//  memo4.color := form1.richedit1.color;
//  memo1.font.color := form1.richedit1.font.color;
  memo2.font.color := form1.richedit1.font.color;
  memo3.font.color := form1.richedit1.font.color;
//  memo4.font.color := form1.richedit1.font.color;


//  label1.font.color := form1.label1.font.color;
//  label2.font.color := form1.label1.font.color;
//  label10.font.color := form1.label1.font.color;
//  label11.font.color := form1.label1.font.color;

//  label4.font.color := form1.label1.font.color;
//  label7.font.color := form1.label1.font.color;
//  label8.font.color := form1.label1.font.color;
//  label8.font.color := form1.label1.font.color;
//  label5.font.color := form1.label1.font.color;
//  label6.font.color := form1.label1.font.color;
//  label9.font.color := form1.label1.font.color;

//gameslink - odkaz
//  label3.font.color := form1.label1.font.color;

  panel2.color := form1.richedit1.color;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;

end;

procedure TFormsajty.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFormsajty.Image2Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('www.abcgames.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Image3Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('www.gamespot.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Image1Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('www.gameplanet.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Image4Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('http://www.svether.com'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Image5Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('www.memopage.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Image7Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('www.memopage.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Image6Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('www.matrixway.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Image8Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('www.abecedaher.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Image9Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('www.hernisvet.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Label3Click(Sender: TObject);
begin
ShellExecute(0,'open',Pchar('www.gameslink.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormsajty.Image13Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('www.tipstation.net'),nil,nil,Sw_ShowNormal)
end;

end.
