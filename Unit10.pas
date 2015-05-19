unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ExtCtrls, TileImage, ComCtrls, StdCtrls, FileCtrl, Spin, Buttons, Printers,
  Dialogs;

type
  TFormnastaveni = class(TForm)
    TileImage1: TTileImage;
    FileListBox1: TFileListBox;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    Label3: TLabel;
    RadioButton2: TRadioButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    Bevel2: TBevel;
    Button1: TButton;
    Label11: TLabel;
    CheckBox3: TCheckBox;
    Label12: TLabel;
    CheckBox4: TCheckBox;
    Bevel3: TBevel;
    Label8: TLabel;
    Button2: TButton;
    Label9: TLabel;
    CheckBox5: TCheckBox;
    Label10: TLabel;
    ComboBox1: TComboBox;
    Label13: TLabel;
    Bevel4: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox6: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
     procedure Inicializace;
     procedure RandomSkin;
     procedure NacistSeznamDB;
//     function OdstranitCestu(cesta:string):string;
    { Public declarations }
  end;

var
  Formnastaveni: TFormnastaveni;
  RandomSkin:TProcedure;

implementation

uses Unit1;

{$R *.dfm}

Procedure TFormNastaveni.NacistSeznamDB;
var
   e : byte;
   dbn : string;
begin
   combobox1.items.Clear;
   if fileexists (form1.directorylistbox1.Directory + '\data\pcch.rc6') then Combobox1.Items.Add(form1.datab1.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\pcn.rc6') then Combobox1.Items.Add(form1.datab2.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\psxch.rc6') then Combobox1.Items.Add(form1.datab3.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\ps2ch.rc6') then Combobox1.Items.Add(form1.datab4.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\gcch.rc6') then Combobox1.Items.Add(form1.datab5.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\xbch.rc6') then Combobox1.Items.Add(form1.datab6.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\n64ch.rc6') then Combobox1.Items.Add(form1.datab7.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\sgdch.rc6') then Combobox1.Items.Add(form1.datab8.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\gbcch.rc6') then Combobox1.Items.Add(form1.datab9.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\addb1.rc6') then Combobox1.Items.Add(form1.datab10.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\addb2.rc6') then Combobox1.Items.Add(form1.datab11.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\jok.rc6') then Combobox1.Items.Add(form1.datab12.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\egg.rc6') then Combobox1.Items.Add(form1.datab13.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\zxsp.rc6') then Combobox1.Items.Add(form1.datab14.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\siem.rc6') then Combobox1.Items.Add(form1.datab15.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\nokm.rc6') then Combobox1.Items.Add(form1.datab16.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\alcm.rc6') then Combobox1.Items.Add(form1.datab17.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\ericm.rc6') then Combobox1.Items.Add(form1.datab18.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\sonym.rc6') then Combobox1.Items.Add(form1.datab19.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\panm.rc6') then Combobox1.Items.Add(form1.datab20.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\motm.rc6') then Combobox1.Items.Add(form1.datab21.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\philm.rc6') then Combobox1.Items.Add(form1.datab22.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\bosm.rc6') then Combobox1.Items.Add(form1.datab23.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\samsm.rc6') then Combobox1.Items.Add(form1.datab24.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\srcz.rc6') then Combobox1.Items.Add(form1.datab25.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\grcz.rc6') then Combobox1.Items.Add(form1.datab26.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\citaty.rc6') then Combobox1.Items.Add(form1.datab27.Caption);
   if fileexists (form1.directorylistbox1.Directory + '\data\gbach.rc6') then Combobox1.Items.Add(form1.datab28.Caption);


   if combobox1.items.count > 0 then begin
      dbn := Registr.ReadString('defaultdbstr');
      for e := 1 to combobox1.items.count do begin
         if combobox1.items.Strings[e-1] = dbn then combobox1.ItemIndex := e-1;
      end;
   end;
end;


procedure TFormNastaveni.Inicializace;
begin
   NacistSeznamDB;

   Color := form1.color;
   tileimage1.picture := form1.tileimage1.picture;
   filelistbox1.Color := form1.RichEdit1.Color;
   filelistbox1.Font := form1.ListBox2.Font;
   filelistbox1.Directory := form1.directorylistbox1.directory + '\skins';
   label1.Font.Color := form1.label1.Font.color;
   label2.Font.Color := form1.label1.Font.color;
   label3.Font.Color := form1.label1.Font.color;
   label4.Font.Color := form1.label1.Font.color;
   label5.Font.Color := form1.label1.Font.color;
   label6.Font.Color := form1.label1.Font.color;
   label8.Font.Color := form1.label1.Font.color;
   label9.Font.Color := form1.label1.Font.color;
   label10.Font.Color := form1.label1.Font.color;


   label11.Font.Color := form1.label1.Font.color;
   label12.Font.Color := form1.label1.Font.color;
   label13.Font.Color := form1.label1.Font.color;
   label14.Font.Color := form1.label1.Font.color;
   label15.Font.Color := form1.label1.Font.color;

   edit1.Color := form1.edit1.color;
   edit1.font.color := form1.edit1.font.color;
   edit2.Color := form1.edit1.color;
   edit2.font.color := form1.edit1.font.color;

   combobox1.Color := form1.RichEdit1.Color;
   combobox1.Font.Color := form1.RichEdit1.font.Color;
//   panel1.Color := form1.color;

   SpinEdit1.Font.color := form1.label1.Font.color;
   SpinEdit1.color := color;

   BitBtn1.Glyph := form1.OKbut.Glyph;
   SpinEdit1.Value := Form1.AlphaBlendValue;

   //nastaveni
   unit1.Registr.CloseKey;
   if unit1.Registr.OpenKey('\Software\RadioactiveSoftware\RadioactiveCheater6', False) = false then begin
      form1.VytvorKlic;
   end;

      if unit1.Registr.ReadString('jazyk') = 'svk' then begin
         Caption := 'Nastavenie';
         Button1.caption := 'Nastaviù ...';
         button2.caption := 'Obnoviù ...';
         label1.caption := 'SkÌny';
         FileListBox1.Hint := 'Vyber skÌn ...'; //?
         Radiobutton2.checked := TRUE;
         label11.caption := 'Vyberaù n·hodn˝ skÌn';
         label12.caption := 'Automaticky kontrolovaù aktualiz·cie';
         //label9.caption := 'Mazaù nepotrebnÈ aktualizaËnÈ s˙bory';
         label8.caption := 'DefaultnÈ nastavenie';
         label13.caption := 'PouûÌvaù proxy';
         label10.caption := 'Defaultn· datab·za';

      end else begin
         Caption := 'NastavenÌ';
         Button1.caption := 'Nastavit ...';
         button2.caption := 'Obnovit ...';
         label1.caption := 'Skiny';
         FileListBox1.Hint := 'Vyber skin ...';
         Radiobutton1.checked := TRUE;
         label10.caption := 'V˝chozÌ datab·ze';
         label11.caption := 'VybÌrat n·hodn˝ skin';
         label12.caption := 'Automaticky kontrolovat aktualizace';
         label8.caption := 'V˝chozÌ nastavenÌ';
         //label9.caption := 'Mazat nepo¯ebnÈ aktualizaËnÌ soubory';
         label13.caption := 'PouûÌvat proxy';
      end;

   //if unit1.Registr.ReadString('jazyk') = 'svk' then Radiobutton2.Checked := TRUE else Radiobutton1.Checked := TRUE;

   if form1.AlphaBlend = true then begin
      CheckBox1.Checked := true;
      SpinEdit1.enabled := true;
   end else begin
      CheckBox1.checked := false;
      SpinEdit1.enabled := false;
   end;

   if unit1.Registr.ReadBool('RandomSkin') = TRUE then begin
      checkbox3.checked := TRUE;
   end else begin
      checkbox3.checked := FALSE;
   end;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;

   if unit1.Registr.ReadBool('AutoUpdate') = FALSE then begin
      Checkbox4.Checked := FALSE;
   end else begin
      CheckBox4.Checked := TRUE;
   end;

   {if unit1.Registr.ReadBool('DelOldAkt') = FALSE then begin
      Checkbox5.Checked := FALSE;
   end else begin
      CheckBox5.Checked := TRUE;
   end;}

   if unit1.Registr.ReadBool('useproxy') = FALSE then begin
      Checkbox6.Checked := FALSE;
   end else begin
      CheckBox6.Checked := TRUE;
      edit1.text := unit1.Registr.ReadString('proxyport');
      edit2.text := unit1.Registr.ReadString('proxyhost');
   end;


end;
procedure TFormnastaveni.FormCreate(Sender: TObject);
begin
   Inicializace;
end;

procedure TFormnastaveni.FileListBox1Click(Sender: TObject);
var jmenoskinu:string;
begin
   jmenoskinu := ExtractFileName(filelistbox1.FileName);
   if jmenoskinu <> 'default.rcs' then begin

      if filelistbox1.FileName <> unit1.Registr.ReadString('skin') then begin
         unit1.Registr.WriteString('skin',filelistbox1.FileName);
         Form1.NacistSkin(filelistbox1.FileName);
         Inicializace;
      end;
   end else begin

      unit1.Registr.WriteString('skin','default');

      if filelistbox1.FileName <> unit1.Registr.ReadString('skin') then begin
         Form1.NacistSkin(filelistbox1.FileName);
         Inicializace;
      end;

      {if unit1.jazyk = 'svk' then begin
         Application.Messagebox('K pouûitiu tohto skÌnu je potrebnÈ reötartovaù Radioactive Cheater','Reötart ...', MB_OK + MB_iconasterisk);
      end else begin
         Application.Messagebox('K pouûitÌ tohoto skinu je pot¯eba restartovat Radioactive Cheater','Restart ...', MB_OK + MB_iconasterisk);
      end;}
   end;

end;

procedure TFormnastaveni.Label3Click(Sender: TObject);
begin
   if unit1.jazyk = 'svk' then begin
      radiobutton1.checked := true;
      unit1.Registr.WriteString('jazyk','cze');
      unit1.jazyk := 'cze';

      form1.JazykCesky;
      form1.MenuVpravo;
      form1.Jezdicitext;
      form1.RegKopie;
      Inicializace;
   end;

end;

procedure TFormnastaveni.Label4Click(Sender: TObject);
begin
   if unit1.jazyk <> 'svk' then begin
      RadioButton2.Checked := true;
      unit1.jazyk := 'svk';
      unit1.Registr.WriteString('jazyk','svk');

      form1.JazykSlov;
      form1.MenuVpravo;
      form1.Jezdicitext;
      form1.RegKopie;
      Inicializace;
   end;
end;

procedure TFormnastaveni.RadioButton1Click(Sender: TObject);
begin
   Label3Click(sender);
end;

procedure TFormnastaveni.RadioButton2Click(Sender: TObject);
begin
   Label4Click(sender);
end;

procedure TFormnastaveni.CheckBox1Click(Sender: TObject);
begin
    if checkbox1.Checked then begin
       Form1.AlphaBlend := true;
       SpinEdit1.enabled := true;
       AlphaBlend := true;
       SpinEdit1.Value := Form1.AlphaBlendValue;
    end else begin
       Form1.AlphaBlend := false;
       AlphaBlend := false;
       SpinEdit1.enabled := false;
    end;
end;

procedure TFormnastaveni.SpinEdit1Change(Sender: TObject);
begin
   Form1.AlphaBlendValue := SpinEdit1.Value;
   AlphaBlendValue := SpinEdit1.Value;
end;

procedure TFormnastaveni.Button1Click(Sender: TObject);
begin
   form1.fontdialog1.Font := form1.richedit1.Font;
   if form1.fontdialog1.execute then begin
      if Printer.Printers.Count > 0 then begin
         form1.FontDialog1.Device := fdBoth;
      end else begin
         form1.FontDialog1.Device := fdScreen;
      end;
      form1.richedit1.font := form1.fontdialog1.font;
   end;
end;

procedure TFormnastaveni.RandomSkin;
var n:byte;
begin
   repeat
      Randomize;
      n := Random(filelistbox1.Items.Count) - 1;
      filelistbox1.itemindex := n;
   until filelistbox1.Items.Strings[filelistbox1.itemindex] <> 'default.rcs';
end;

procedure TFormnastaveni.Button2Click(Sender: TObject);
var rjm, rhes : string;
begin
   FileListBox1.ItemIndex := -1;
   rjm := Registr.ReadString('user');
   rhes := Registr.ReadString('pass');
   if unit1.jazyk = 'svk' then begin
      case Application.MessageBox('T·to voæba zruöÌ vöetky nastavenia programu. Naozaj chcete pokraËovaù ?','Zruöiù nastavenie ?',mb_YesNo + mb_iconQuestion) of
         6:
         if Registr.DeleteKey('\Software\RadioactiveSoftware\RadioactiveCheater6') = true then begin
            form1.VytvorKlic;
            Registr.WriteString('user',rjm);
            Registr.WriteString('user',rhes);
            form1.Regkopie;
            form1.NacistSkin(form1.DirectoryListBox1.Directory + '\skins\default.rcs');
            form1.width := 640;
            form1.height := 480;
            form1.richedit1.font.Size := 8;
            form1.richedit1.font.Name := 'Lucida Console';
            form1.RichEdit1.Font.Style := [];
            Inicializace;

            Application.MessageBox('PÙvodn· konfigur·cia bola obnoven·.','OK',mb_OK + mb_iconAsterisk);

         end;
      end;

   end else begin

      case Application.MessageBox('Tato volba zruöÌ veökerÈ nastavenÌ programu. Opravdu chcete pokraËovat ?','Zruöit nastavenÌ ?',mb_YesNo + mb_iconQuestion) of
         6:
         if Registr.DeleteKey('\Software\RadioactiveSoftware\RadioactiveCheater6') = true then begin
            form1.VytvorKlic;
            Registr.WriteString('user',rjm);
            Registr.WriteString('user',rhes);
            form1.Regkopie;
            form1.NacistSkin(form1.DirectoryListBox1.Directory + '\skins\default.rcs');
            form1.width := 640;
            form1.height := 480;
            form1.richedit1.font.Size := 8;
            form1.richedit1.font.Name := 'Lucida Console';
            form1.RichEdit1.Font.Style := [];
            Inicializace;
            Application.MessageBox('P˘vodnÌ konfigurace byla obnovena.','OK',mb_OK + mb_iconAsterisk);
         end;
      end;

   end;

end;

procedure TFormnastaveni.CheckBox3Click(Sender: TObject);
begin
   if checkbox3.checked = TRUE then begin
      unit1.Registr.WriteBool('RandomSkin',TRUE);
   end else begin
      unit1.Registr.WriteBool('RandomSkin',FALSE);
   end;
end;

procedure TFormnastaveni.CheckBox4Click(Sender: TObject);
begin
   if checkbox4.checked = TRUE then begin
      unit1.Registr.WriteBool('AutoUpdate',TRUE);
   end else begin
      unit1.Registr.WriteBool('AutoUpdate',FALSE);
   end;
end;

procedure TFormnastaveni.CheckBox5Click(Sender: TObject);
begin
   if checkbox5.checked = TRUE then begin
      unit1.Registr.WriteBool('DelOldAkt',TRUE);
   end else begin
      unit1.Registr.WriteBool('DelOldAkt',FALSE);
   end;
end;

procedure TFormnastaveni.CheckBox6Click(Sender: TObject);
begin
   if checkbox6.checked = TRUE then begin
      edit1.enabled := true;
      edit2.enabled := true;
      unit1.Registr.WriteBool('useproxy',TRUE);
   end else begin
      edit1.enabled := false;
      edit2.enabled := false;
      unit1.Registr.WriteBool('useproxy',FALSE);
   end;
end;

procedure TFormnastaveni.BitBtn1Click(Sender: TObject);
begin
   if checkbox6.checked then begin
      unit1.Registr.WriteString('proxyhost',edit1.text);
      unit1.Registr.WriteString('proxyport',edit2.text);
   end;

   if combobox1.itemindex > -1 then begin
      unit1.Registr.WriteString('defaultdbstr',combobox1.Items.Strings[combobox1.itemindex]);

      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab1.caption then unit1.Registr.WriteInteger('defaultdb',1);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab2.caption then unit1.Registr.WriteInteger('defaultdb',2);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab3.caption then unit1.Registr.WriteInteger('defaultdb',3);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab4.caption then unit1.Registr.WriteInteger('defaultdb',4);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab5.caption then unit1.Registr.WriteInteger('defaultdb',5);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab6.caption then unit1.Registr.WriteInteger('defaultdb',6);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab7.caption then unit1.Registr.WriteInteger('defaultdb',7);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab8.caption then unit1.Registr.WriteInteger('defaultdb',8);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab9.caption then unit1.Registr.WriteInteger('defaultdb',9);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab10.caption then unit1.Registr.WriteInteger('defaultdb',10);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab11.caption then unit1.Registr.WriteInteger('defaultdb',11);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab12.caption then unit1.Registr.WriteInteger('defaultdb',12);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab13.caption then unit1.Registr.WriteInteger('defaultdb',13);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab14.caption then unit1.Registr.WriteInteger('defaultdb',14);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab15.caption then unit1.Registr.WriteInteger('defaultdb',15);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab16.caption then unit1.Registr.WriteInteger('defaultdb',16);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab17.caption then unit1.Registr.WriteInteger('defaultdb',17);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab18.caption then unit1.Registr.WriteInteger('defaultdb',18);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab19.caption then unit1.Registr.WriteInteger('defaultdb',19);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab20.caption then unit1.Registr.WriteInteger('defaultdb',20);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab21.caption then unit1.Registr.WriteInteger('defaultdb',21);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab22.caption then unit1.Registr.WriteInteger('defaultdb',22);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab23.caption then unit1.Registr.WriteInteger('defaultdb',23);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab24.caption then unit1.Registr.WriteInteger('defaultdb',24);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab25.caption then unit1.Registr.WriteInteger('defaultdb',25);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab26.caption then unit1.Registr.WriteInteger('defaultdb',26);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab27.caption then unit1.Registr.WriteInteger('defaultdb',27);
      if combobox1.Items.Strings[combobox1.itemindex] = form1.datab28.caption then unit1.Registr.WriteInteger('defaultdb',28);


   end;

end;

end.                                 
