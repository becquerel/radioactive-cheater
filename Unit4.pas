unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl, Buttons, ExtCtrls, TileImage, ComCtrls, Gauges;

type
  TFormaktual = class(TForm)
    TileImage1: TTileImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    RichEdit1: TRichEdit;
    Bevel1: TBevel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DownList : TStringList;
    procedure ZiskatSeznam(baze:byte);
    function StahniTo(soubor : byte):boolean;
    procedure StahnoutSeznam;

  end;

var
  Formaktual: TFormaktual;
  newbuild : boolean;


implementation

uses Unit1, StrUtils, FTPSend, ShellApi;

{$R *.DFM}

procedure TFormaktual.FormActivate(Sender: TObject);
begin
   color := form1.color;

   tileimage1.picture := form1.tileimage1.picture;
   richedit1.Color := form1.richedit1.color;
   richedit1.font := form1.richedit1.font;
   label1.font.color := form1.label1.font.color;
   label2.font.color := form1.label1.font.color;
   label3.font.color := form1.label1.font.color;
   label4.font.color := form1.label1.font.color;

   combobox1.Color := form1.Edit1.color;
   combobox1.font.Color := form1.Edit1.font.color;

   bitbtn1.glyph := form1.OK2But.glyph;



   if jazyk = 'svk' then begin
      caption := 'Stiahnutie aktualiz·cie z internetu';
      label1.caption := 'N·zov datab·zy (poloûky vo vaöej datab·ze / poloûky v najnovöej aktualiz·cii)';
      label2.caption := 'Ktor˙ datab·zu aktualizovaù ?';
      label3.caption := 'Stav sùahovanÈho s˙boru';
      bitbtn2.glyph := form1.ZRUSITSVKBut.glyph;
      caption := 'StaûenÌ aktualizace z internetu';
      label4.caption := 's˙bor';
   end else begin
      bitbtn2.glyph := form1.ZRUSITBut.glyph;
      label4.caption := 'soubor';
      caption := 'StaûenÌ aktualizace z  internetu';
      label1.caption := 'N·zev datab·ze (poloûky ve vaöÌ datab·zÌ / poloûky v nejnovÏjöÌ aktualizaci)';
      label2.caption := 'Kterou datab·zi aktualizovat ?';
      label3.caption := 'Stav stahovanÈho souboru';
   end;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;

   if newbuild then begin
      if unit1.jazyk = 'svk' then begin
         if Application.MessageBox('Na internete je k dispozÌcii nov· verzia RCh. Prajete si ju stiahnuù teraz ?','Nov· verze !!!', mb_YesNo + mb_IconQuestion) = idYes then begin
            ShellExecute(0,'open',Pchar('http://www.radioactive.cz/stahnout.php?download=cheater'),nil,nil,Sw_ShowNormal);
         end;
      end else begin
         if Application.MessageBox('Na internetu je k dispozici nov· verze RCh. P¯ejete si ji nynÌ st·hnout ?','Nov· verze !!!', mb_YesNo + mb_IconQuestion) = idYes then begin
            ShellExecute(0,'open',Pchar('http://www.radioactive.cz/stahnout.php?download=cheater'),nil,nil,Sw_ShowNormal);
         end;
      end;

   end;

end;

procedure TFormaktual.BitBtn1Click(Sender: TObject);
var
   r : byte;
   muzepsat : boolean;
begin
    muzepsat := true;


    if not CreateDir(form1.DirectoryListBox1.Directory + '\data\test') then begin
       muzepsat := false;
       if jazyk = 'svk' then begin
          Application.Messagebox('Na tento disk sa ned· zapisovaù.','Chyba...',MB_OK + MB_iconError);
       end else begin
          Application.Messagebox('Na tento disk nelze zapisovat.','Chyba...',MB_OK + MB_iconError);
       end;
    end else begin
       RemoveDir(form1.DirectoryListBox1.Directory + '\data\test')
    end;


   if muzepsat = true then begin
      if combobox1.ItemIndex > 0 then begin
         DownList.Clear;
         if combobox1.itemindex = 1 then begin
            //pokud aktualizuje vsechny databaze, zjisti si nazvy vsech souboru
            for r := 2 to combobox1.Items.Count - 1 do begin
               combobox1.itemindex := r;
               ZiskatSeznam(r);
            end;
            combobox1.itemindex := 1;

         end else begin
            //pokud ne, zjisti si nazvy pouze potrebnych souboru
            ZiskatSeznam(Combobox1.itemindex);
         end;

         StahnoutSeznam;

      end else begin
         Close;
      end;
   end;
end;

Procedure TFormAktual.ZiskatSeznam(baze:byte);
var
   DownFile, AllFiles, OneFileSign : string;
   w : byte;

   begin

   if jazyk = 'svk' then begin
      label4.caption := 'Zjiöùuji informace ...';
   end else begin
      label4.caption := 'Zisùujem inform·cie ...';
   end;

   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab1.Caption then DownFile := 'pcch';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab2.Caption then DownFile := 'pcn';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab3.Caption then DownFile := 'psxch';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab4.Caption then DownFile := 'ps2ch';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab5.Caption then DownFile := 'gcch';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab6.Caption then DownFile := 'xbch';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab7.Caption then DownFile := 'n64ch';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab8.Caption then DownFile := 'sgdch';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab9.Caption then DownFile := 'gbcch';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab12.Caption then DownFile := 'jok';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab13.Caption then DownFile := 'egg';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab14.Caption then DownFile := 'zxsp';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab15.Caption then DownFile := 'siem';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab16.Caption then DownFile := 'nokm';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab17.Caption then DownFile := 'alcm';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab18.Caption then DownFile := 'ericm';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab19.Caption then DownFile := 'sonym';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab20.Caption then DownFile := 'panm';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab21.Caption then DownFile := 'motm';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab22.Caption then DownFile := 'philm';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab23.Caption then DownFile := 'bosm';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab24.Caption then DownFile := 'samsm';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab25.Caption then DownFile := 'srcz';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab26.Caption then DownFile := 'grcz';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab27.Caption then DownFile := 'citaty';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab28.Caption then DownFile := 'gbach';

   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab10.Caption then DownFile := 'addb1';
   if Combobox1.Items[Combobox1.ItemIndex] = form1.datab11.Caption then DownFile := 'addb2';

   DownList.Add('rch' + DownFile + '.exe');

   //AllFiles := RightStr (RichEdit1.Lines.Strings[Combobox1.itemindex-2],length(RichEdit1.Lines.Strings[Combobox1.itemindex-2])-26);

   {for w := 1 to length(AllFiles) do begin
      OneFileSign := '';
      if (AllFiles[w] <> ' ') and (AllFiles[w-1] = ' ') then begin
         if AllFiles[w+1] <> ' ' then begin
            OneFileSign := OneFileSign + AllFiles[w]+AllFiles[w+1];
         end else begin
            OneFileSign := OneFileSign + AllFiles[w];
         end;
         DownList.Add(DownFile + OneFileSign + '.ru5');
      end;

   end;}

end;

procedure TFormAktual.StahnoutSeznam;
var
   soubor : byte;
begin

   Soubor := 0;
   repeat
      Soubor := soubor + 1;
      if jazyk = 'svk' then begin
         if soubor-1 <= DownList.Count-1 then label4.caption := 'Sùahujem s˙bor ' + DownList[soubor-1];
      end else begin
         if soubor-1 <= DownList.Count-1 then label4.caption := 'Stahuji soubor ' + DownList[soubor-1];
      end;
   until StahniTo(Soubor-1) = false;

   label4.caption := 'hotovo';

end;

function TFormaktual.StahniTo(soubor:byte):boolean;
var
   sourcefile, destfile : string;
begin

   if Soubor < Downlist.Count then begin
      sourcefile := DownList[soubor];


      if not DirectoryExists(form1.directorylistbox1.directory + '\data\update') then begin
         CreateDir(form1.directorylistbox1.directory + '\data\update');
      end;

      destfile := form1.directorylistbox1.directory + '\data\update\'+ DownList[soubor];

      Application.ProcessMessages;
      if FtpGetFile('www.radioactive.cz', '21', sourcefile, destfile, 'radioactive_updater', 'updater') = true then begin

         result := true;

      end else begin
         result := false;
         if jazyk = 'svk' then begin
            Application.MessageBox('Update nie je moûnÈ stiahnuù.','Chyba...',MB_OK + MB_iconError);
         end else begin
            Application.MessageBox('Update nenÌ moûnÈ st·hnout.','Chyba...',MB_OK + MB_iconError);
         end;
      end;

   end else begin
      result := false;
      if jazyk = 'svk' then begin
         Application.MessageBox ('Vöetky s˙bory boli ˙speöne stiahnutÈ do adres·ra \data\update\ vaöej kÛpie RCh.'+ Chr(13) + 'Pred aktualiz·ciou je potrebnÈ ho rozbaliù (spustiù)','OK',MB_OK + MB_IconAsterisk);
      end else begin
         Application.MessageBox ('Vöechny soubory byly ˙spÏönÏ staûeny do adres·¯e \data\update\ vaöÌ kopie RCh.'+ Chr(13) + 'P¯ed aktualizacÌ je t¯eba je rozbalit (spustit) !!!','OK',MB_OK + MB_IconAsterisk);
      end;
      form1.nacistmenudata;
      //Close;
   end;


end;

procedure TFormaktual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   DownList.Free;
end;

procedure TFormaktual.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFormaktual.FormCreate(Sender: TObject);
begin
   DownList := TStringList.Create;
   
end;

end.
