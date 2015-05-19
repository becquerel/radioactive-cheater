unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ShellApi, Buttons, ExtCtrls, ComCtrls, LinkLabel,
  TileImage, jpeg;


     { aktivní internetový odkaz
       1) Pøidejte do USES unitu ShellApi
2) ShellExecute(0,'open',Pchar('www.seznam.cz'),nil,nil,Sw_ShowNormal)
3) Tato funkce vrati èíslo, pokud je èíslo menší než 35 tak došlo k chybì}



     type
  TFormabout = class(TForm)
    TileImage1: TTileImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    LinkLabel1: TLinkLabel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    Timer1: TTimer;
    TileImage2: TTileImage;
    Bevel1: TBevel;
    Image1: TImage;
    TabSheet5: TTabSheet;
    Memo2: TMemo;
    Label29: TLabel;
    Panel1: TPanel;
    Image2: TImage;
    Panel2: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label44: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label1: TLabel;
    Label40: TLabel;
    Label30: TLabel;
    Label28: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    BitBtn1: TBitBtn;
    LinkLabel2: TLinkLabel;
    Label7: TLabel;
    Label47: TLabel;
    Label31: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label22: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label49: TLabel;
    Label4: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    procedure Label2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure LinkLabel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formabout: TFormabout;
  XXXX : textfile;
implementation

uses Unit1;

{$R *.DFM}

procedure TFormabout.Label2Click(Sender: TObject);
//hypertext label
begin
//    ShellExecute(0,'open',Pchar('http://www.radioactive.cz'),nil,nil,Sw_ShowNormal);
end;

procedure TFormabout.Timer1Timer(Sender: TObject);
begin
  if pagecontrol1.activepage = tabsheet2 then begin
     panel2.top := panel2.top - 2;
     if panel2.top + panel2.height < 5 then begin
        panel2.top := panel1.height;
     end;
  end;
end;

procedure TFormabout.BitBtn1Click(Sender: TObject);
begin
    Close;
end;

procedure TFormabout.Panel2Click(Sender: TObject);
begin
   timer1.enabled := not timer1.enabled;
end;

procedure TFormabout.FormCreate(Sender: TObject);
begin
   color := form1.color;

   bitbtn1.glyph := form1.OKBut.glyph;
   panel2.Top := panel1.top - panel2.height;

   tileimage1.picture := form1.tileimage1.picture;
   tileimage2.picture := form1.tileimage1.picture;

   label7.Font.color := form1.label1.font.color; //Oficial web
   label47.Font.color := form1.label1.font.color; //Oficial e-mail
//   label23.Font.color := form1.label1.font.color;//pocet cheatu

//   label24.Font.color := form1.label1.font.color;//pocet navodu

   label29.font.color := form1.label1.font.color;//copyright
   linklabel1.font.color := form1.label3.font.color;
   linklabel2.font.color := form1.label3.font.color;

   memo1.color := color;
   memo2.color := color;

   memo1.font.color := form1.label1.font.color;
   memo2.font.color := form1.label1.font.color;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;

   if jazyk = 'svk' then begin


      caption := 'O programe Radioactive Cheater';

      Image2.Hint := 'Oficiálny web - Radioactive Cheater';

      label7.caption := 'Oficiálny web :';
      label47.caption := 'Oficiálny e-mail :';

      TabSheet1.caption := 'O Programe';
      TabSheet2.caption := 'Páchatelia';
      TabSheet3.caption := 'História';

   end;

end;

procedure TFormabout.Image2Click(Sender: TObject);
begin
   ShellExecute(0,'open',Pchar('http://www.radioactive.cz'),nil,nil,Sw_ShowNormal)
end;

procedure TFormabout.LinkLabel2Click(Sender: TObject);
begin
   ShellExecute(0,'Open',Pchar('Mailto:cheater@radioactive.cz'),'','',SW_SHOW);
end;

end.



