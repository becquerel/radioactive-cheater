  unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids,  DirOutln, Menus,  ComCtrls, Tabnotbk,
  ExtCtrls, Printers, Buttons, TileImage, Mask,
  ShellApi,jpeg, FileCtrl, Registry, StrUtils, HTTPSend;


 type
  TForm1 = class(TForm)
    TileImage1: TTileImage;
    Edit1: TEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    RichEdit1: TRichEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Memo2: TMemo;
    Label7: TLabel;
    OKbut: TBitBtn;
    ZRUSITBut: TBitBtn;
    ANOBut: TBitBtn;
    NEBut: TBitBtn;
    ULOZITBut: TBitBtn;
    OK2But: TBitBtn;
    NAJITBut: TBitBtn;
    ZRUSITSVKBut: TBitBtn;
    ANOSVKBut: TBitBtn;
    NESVKBut: TBitBtn;
    ULOZITSVKBut: TBitBtn;
    NAJITSVKBut: TBitBtn;
    DirectoryListBox1: TDirectoryListBox;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Soubor1: TMenuItem;
    TiskSubmenu1: TMenuItem;
    Tisk1: TMenuItem;
    Tiskcasti1: TMenuItem;
    Dotaznk1: TMenuItem;
    Konec1: TMenuItem;
    Nastroje1: TMenuItem;
    Hlednnainternetu1: TMenuItem;
    Hledaninagames: TMenuItem;
    HlednnaCheatysk1: TMenuItem;
    OnlineRCh: TMenuItem;
    Filtr1: TMenuItem;
    FullTexthledn1: TMenuItem;
    Poznmky1: TMenuItem;
    DECHEX1: TMenuItem;
    ochrana1: TMenuItem;
    ochrana21: TMenuItem;
    adebg1: TMenuItem;
    Nastaven1: TMenuItem;
    Prosted1: TMenuItem;
    Aktualizace2: TMenuItem;
    Aktualizace1: TMenuItem;
    Registrace1: TMenuItem;
    Licence1: TMenuItem;
    Informace1: TMenuItem;
    Definicecheat1: TMenuItem;
    Rady1: TMenuItem;
    HEXEditace1: TMenuItem;
    Spoutnsparametrem1: TMenuItem;
    Slovnk1: TMenuItem;
    Odkazy1: TMenuItem;
    Npovda1: TMenuItem;
    Cheater1: TMenuItem;
    Spoluprace1: TMenuItem;
    Gamescz1: TMenuItem;
    MADCheaty1: TMenuItem;
    MemoPagecz1: TMenuItem;
    Ostatni1: TMenuItem;
    Oprogramu1: TMenuItem;
    Help1: TMenuItem;
    PrintDialog1: TPrintDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    RichEdit2: TRichEdit;
    SeznamSkinu: TFileListBox;
    KontrolaAktualizace1: TMenuItem;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Databze1: TMenuItem;
    datab1: TMenuItem;
    datab2: TMenuItem;
    datab3: TMenuItem;
    datab4: TMenuItem;
    datab5: TMenuItem;
    datab6: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    datab7: TMenuItem;
    datab8: TMenuItem;
    datab9: TMenuItem;
    datab14: TMenuItem;
    datab15: TMenuItem;
    datab16: TMenuItem;
    datab17: TMenuItem;
    datab18: TMenuItem;
    datab19: TMenuItem;
    datab20: TMenuItem;
    datab10: TMenuItem;
    datab11: TMenuItem;
    datab12: TMenuItem;
    datab13: TMenuItem;
    datab21: TMenuItem;
    datab22: TMenuItem;
    datab23: TMenuItem;
    datab24: TMenuItem;
    datab25: TMenuItem;
    datab26: TMenuItem;
    datab27: TMenuItem;
    Informaceodatabzi1: TMenuItem;
    idatab1: TMenuItem;
    idatab2: TMenuItem;
    idatab3: TMenuItem;
    idatab4: TMenuItem;
    idatab5: TMenuItem;
    idatab6: TMenuItem;
    idatab7: TMenuItem;
    idatab8: TMenuItem;
    idatab9: TMenuItem;
    idatab10: TMenuItem;
    idatab11: TMenuItem;
    idatab12: TMenuItem;
    idatab13: TMenuItem;
    idatab14: TMenuItem;
    idatab15: TMenuItem;
    idatab16: TMenuItem;
    idatab17: TMenuItem;
    idatab18: TMenuItem;
    idatab19: TMenuItem;
    idatab20: TMenuItem;
    idatab21: TMenuItem;
    idatab22: TMenuItem;
    idatab23: TMenuItem;
    idatab24: TMenuItem;
    idatab25: TMenuItem;
    idatab26: TMenuItem;

    idatab27: TMenuItem;
    datab28: TMenuItem;
    idatab28: TMenuItem;
    Spoutnsparametrem2: TMenuItem;
    Oficilnweb1: TMenuItem;
    Onlineverze1: TMenuItem;
    Frum1: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    GamePlanetcz1: TMenuItem;
    GamePlanetcz2: TMenuItem;
    procedure ListBox2Click(Sender: TObject);
    procedure Konec1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Tisk1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Oprogramu1Click(Sender: TObject);
    procedure Cheater1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Registrace1Click(Sender: TObject);
    procedure FullTexthledn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Dotaznk1Click(Sender: TObject);
    procedure Licence1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FullTexthlednceldatabze1Click(Sender: TObject);
    procedure Filtr1Click(Sender: TObject);
    procedure Slovnk1Click(Sender: TObject);
    procedure Odkazy1Click(Sender: TObject);
    procedure HEXEditace1Click(Sender: TObject);
    procedure Rady1Click(Sender: TObject);
    procedure Definicecheat1Click(Sender: TObject);
    procedure Spoluprce1Click(Sender: TObject);
    procedure Poznmky1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Dotaznk1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Dotaznk1DrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; Selected: Boolean);
    procedure adebg1Click(Sender: TObject);
    procedure Ostatni1Click(Sender: TObject);
    procedure HledaninagamesClick(Sender: TObject);
    procedure DECHEX1Click(Sender: TObject);
    procedure MADCheaty1Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Spoutnsparametrem1Click(Sender: TObject);
    procedure MemoPagecz1Click(Sender: TObject);
    procedure Prosted1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Label4Click(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Tiskcasti1Click(Sender: TObject);
    procedure HlednnaCheatysk1Click(Sender: TObject);
    procedure OnlineRChClick(Sender: TObject);
    procedure KontrolaAktualizace1Click(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure datab1Click(Sender: TObject);
    procedure Soubor1DrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; Selected: Boolean);
    procedure Soubor1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure N1MeasureItem(Sender: TObject; ACanvas: TCanvas; var Width,
      Height: Integer);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Aktualizace1Click(Sender: TObject);
    procedure datab1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure datab1DrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; Selected: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure idatab1Click(Sender: TObject);
    procedure Spoutnsparametrem2Click(Sender: TObject);
    procedure Oficilnweb1Click(Sender: TObject);
    procedure Onlineverze1Click(Sender: TObject);
    procedure Frum1Click(Sender: TObject);
    procedure GamePlanetcz1Click(Sender: TObject);

  private
    { Private declarations }
  public

   DBInfo : record
      aktct : byte;
      nazev : string;
      SList : TStringList;
   end;




  build : integer;
  oznac, n,  zaloha, emptywidth :integer;
  hledej,  Znak, znak2, AktDBName : String;
  nasel, nasel2, nalezen, nalezen2 : Boolean;
  reg, skin : TextFile;

  procedure JazykSlov;
  procedure JazykCesky;
  procedure Pitva(clovek : String; main : boolean);
  procedure jezdicitext;
  procedure NacistSkin(jmenoskinu : string);
  procedure Regkopie;
  procedure MenuVpravo;
  procedure AplikovatFiltr;
  procedure VytvorKlic;
  function NacistDBStr(baze:byte):integer;
  procedure NacistDBData(baze:byte);
  procedure NacistCelouBazi(baze:byte);
  function GetDBName(baze:byte):string;
  procedure nacistmenudata;
  procedure ZjistitCoAktualizovat;
  procedure AktualizujDB();
  procedure OtevritDBinfo(baze:byte);


end;

var
   Form1: TForm1;

   Registr : TRegistry;

   filtr, jazyk : string;
   AlphaBlend : boolean;

   PCN, PCCh, PSXCh, PS2Ch, GCCh, XBCh, N64Ch, SegaDCCh, GBoyCh, GBoyACh, Jokes, Eggs,
     ZXSPk, SiemMel, NokiaMel, AlcMel, EricMel, SonyMel, PanMel, MotMel,
     PhilMel, BoschMel, SamsMel, SoftRec, GamesRec, Citaty,
     AdDB1, AdDB2 : record

        sekce : string;
        aktct : byte;
        nazev : string;
        autor : string;
        datum : string;
        note  : string;
        kecy  : TStringList;
        SList : TStringList;

   end;

   ChData, NData, UpData : TMemoryStream;
   AktStr : TStringList;

   // barvy menu
   nevpolozka, vybpolozka, okrvybpolozka, nevpismo, vybpismo : TColor;

   aktualizovano : boolean = false;

   user, rpass : string;

  implementation

uses Unit2 , Unit5, Unit6, Unit4, Unit3, Unit7, Unit8, Unit13, Unit14, Unit15,
       Unit16, Unit17, Unit10, Unit11, Unit12, Unit9, Unit18, Unit19;

{$R *.DFM}


procedure TForm1.MenuVpravo;
var
RightItm: TMenuItemInfo;
MenuBuffer: Array[0..79] of char;


begin
  ZeroMemory(@RightItm, SizeOf(RightItm));
  with RightItm do begin
    cbSize := 44;
    fMask := MIIM_TYPE;
    dwTypeData := MenuBuffer;
    cch := SizeOf(MenuBuffer);
  end;
  if GetMenuItemInfo(MainMenu1.Handle,Help1.MenuIndex,True,RightItm) then begin
    RightItm.fType := RightItm.fType or MFT_RIGHTJUSTIFY;
    if SetMenuItemInfo(MainMenu1.Handle,Help1.MenuIndex,True,RightItm) then
      DrawMenuBar(MainMenu1.WindowHandle);
  end;
end;

procedure TForm1.AplikovatFiltr;
var
 jo : boolean;
 q,rid: byte;
 nacist:integer;
 pridat : string;

begin
edit1.text := '';
jo := false;

listbox1.items.Clear;
   nasel := false;
//   listbox2.enabled := false;
   listbox2.itemindex := 0;

   if listbox1.itemindex = -1 then begin
      richedit1.lines.clear;
      label1.caption := '';
   end;

   if AktStr.count > 0 then begin

      nasel := true;
      oznac := listbox2.itemindex;
      znak := listbox2.items.Strings[oznac];

      nalezen2 := false;

      for nacist := 0 to AktStr.count - 1 do begin
         pridat := AktStr.names[nacist];
         jo := false;
         rid := 0;


         repeat
            Inc(rid);
            if length(pridat) > 0 then begin
               if AnsiUpperCase(pridat[rid]) = AnsiUpperCase(filtr[1]) then begin
                  jo := true;
                  for q := 2 to length(filtr) do begin
                     if AnsiUpperCase(filtr[q]) <> AnsiUpperCase(pridat[rid+q-1]) then begin
                        jo := false;
                     end;
                  end;
               end;
            end;
         until (rid = length(pridat))or jo;

         if jo = true then begin
            listbox1.items.add(pridat);
         end;
      end;


      if jazyk = 'svk' then begin
         label4.caption := 'Filter : "'+ filtr+'"' + '   Filtrovan˝ch poloûiek : '+inttostr(listbox1.items.count);
      end else begin
         label4.caption := 'Filtr : "'+ filtr+'"' + '   Filtrovan˝ch poloûek : '+inttostr(listbox1.items.count);
      end;

   end else begin
      listbox1.items.clear;
      if jazyk = 'svk' then begin
         listbox1.items.add ('S˙bor datab·zy nen·jden˝ !');
      end else begin
         listbox1.items.add ('Soubor datab·ze nenalezen !');
      end;
   end;

//if label1.caption = '' then label1.visible := false else label1.visible := true;


end;


procedure TForm1.ListBox2Click(Sender: TObject);    //klik na listbox2 - pÌsmena
var

// jo : boolean;
// q,rid: byte;
q:byte;
 nacist:integer;
 pridat : string;

begin

   listbox1.hint := '';

//   if filtr = '' then begin
   //Bez Filtru

      listbox1.items.Clear;
      nasel := false;
      listbox2.enabled := true;

      if listbox1.itemindex = -1 then begin
         richedit1.lines.clear;
         label1.caption := '';
      end;

      if AktStr.count > 0 then begin

         nasel := true;
         oznac := listbox2.itemindex;

         if  oznac > -1 then begin
            znak := listbox2.items.Strings[oznac];
         end;

         nalezen2 := false;

         //nacist jmena her

          //pismena
         if listbox2.itemindex > 0 then begin
            for nacist := 0 to AktStr.count - 1 do begin
               pridat := AktStr.names[nacist];

               if length(pridat) > 0 then begin
                  if pridat[1] = znak then begin
                     listbox1.items.add(pridat);
                  end;
               end;
            end;
            listbox1.itemindex := 0;
         end;

         //cisla
         if listbox2.itemindex = 0 then begin
            for nacist := 0 to AktStr.Count - 1 do begin
               pridat := AktStr.names[nacist];
               if length(pridat) > 0 then begin
                  for q := 0 to 9 do begin
                     if pridat[1] = inttostr(q) then listbox1.items.add(pridat);
                  end;
               end;
            end;
         end;

      end else begin
         if  not nasel then begin
            listbox1.items.clear;

            if jazyk = 'svk' then begin
               listbox1.items.add ('S˙bor datab·zy nen·jden˝ !');
            end else begin
               listbox1.items.add ('Soubor datab·ze nenalezen !');
           end;

      end;
   end;

//   if label1.caption = '' then label1.visible := false else label1.visible := true;

   if listbox1.items.count < 0 then begin
      if jazyk = 'svk' then begin
         if listbox1.items.strings[0] = 'S˙bor datab·zy nen·jden˝ !' then label4.caption := '';
      end else begin
         if listbox1.items.strings[0] = 'Soubor datab·ze nenalezen !' then label4.caption := '';
      end;
   end;


//if label1.caption = '' then label1.visible := false else label1.visible := true;


//poËet poloûek v aktu·lnÌ datab·zi
label4.caption := listbox2.items[listbox2.itemindex] + ' : ' + inttostr(listbox1.items.count)+' ';
if jazyk = 'svk' then begin
   label4.caption := label4.caption + 'poloûiek'
end else begin
   label4.caption := label4.caption + 'poloûek'
end;


listbox1.itemindex := 0;
Application.ProcessMessages;

if AktStr.count > 0 then begin
   listbox1click(sender);
   zaloha := 0;
end;

end;


procedure TForm1.Konec1Click(Sender: TObject);
begin
   if jazyk = 'svk' then begin
      Case Application.Messagebox('Naozaj chceö skonËiù ?','Koniec',MB_YESNO + MB_iconquestion) of

         idYes :
         begin
            Close;
         end;
      end;

   end else begin
      Case Application.Messagebox('Opravdu chceö skonËit ?','Konec',MB_YESNO + MB_iconquestion) of

         idYes :
         begin
            Close;
         end;
      end;
   end;

end;

function TForm1.NacistDBStr(baze:byte):integer;
var

DBTmpInf : record
   sekce : string;
   autor : string;
   datum : string;
   note  : string;
   aktct : byte;
   nazev : string;
   kecy  : TStringList;
   SList : TStringList;
end;

PomStream : TMemoryStream;
delkahlavicky, delkanazvu, delkaautora, delkapoznamky, delkakecu, bazefullname, pocetakt : string;

begin

DBTmpInf.SList := TStringList.Create;
DBTmpInf.kecy := TStringList.Create;
PomStream := TMemoryStream.create;

SetLength(delkanazvu,2);
SetLength(pocetakt,2);
SetLength(delkahlavicky,6);
SetLength(DBTmpInf.sekce,1);
SetLength(delkaautora,2);
SetLength(delkapoznamky,2);
SetLength(delkakecu,5);
SetLength(DBTmpInf.datum,10);

case baze of
   1:
   begin
      bazefullname := directorylistbox1.directory + '\data\pcch.rc6';
   end;

   2:
   begin
      bazefullname := directorylistbox1.directory + '\data\pcn.rc6';
   end;

   3:
   begin
      bazefullname := directorylistbox1.directory + '\data\psxch.rc6';
   end;

   4:
   begin
      bazefullname := directorylistbox1.directory + '\data\ps2ch.rc6';
   end;

   5:
   begin
      bazefullname := directorylistbox1.directory + '\data\gcch.rc6';
   end;

   6:
   begin
      bazefullname := directorylistbox1.directory + '\data\xbch.rc6';
   end;

   7:
   begin
      bazefullname := directorylistbox1.directory + '\data\n64ch.rc6';
   end;

   8:
   begin
      bazefullname := directorylistbox1.directory + '\data\sgdch.rc6';
   end;

   9:
   begin
      bazefullname := directorylistbox1.directory + '\data\gbcch.rc6';
   end;

   10:
   begin
      bazefullname := directorylistbox1.directory + '\data\addb1.rc6';
   end;

   11:
   begin
      bazefullname := directorylistbox1.directory + '\data\addb2.rc6';
   end;

   12:
   begin
      bazefullname := directorylistbox1.directory + '\data\jok.rc6';
   end;

   13:
   begin
      bazefullname := directorylistbox1.directory + '\data\egg.rc6';
   end;

   14:
   begin
      bazefullname := directorylistbox1.directory + '\data\zxsp.rc6';
   end;

   15:
   begin
      bazefullname := directorylistbox1.directory + '\data\siem.rc6';
   end;

   16:
   begin
      bazefullname := directorylistbox1.directory + '\data\nokm.rc6';
   end;

   17:
   begin
      bazefullname := directorylistbox1.directory + '\data\alcm.rc6';
   end;

   18:
   begin
      bazefullname := directorylistbox1.directory + '\data\ericm.rc6';
   end;

   19:
   begin
      bazefullname := directorylistbox1.directory + '\data\sonym.rc6';
   end;

   20:
   begin
      bazefullname := directorylistbox1.directory + '\data\panm.rc6';
   end;

   21:
   begin
      bazefullname := directorylistbox1.directory + '\data\motm.rc6';
   end;

   22:
   begin
      bazefullname := directorylistbox1.directory + '\data\philm.rc6';
   end;

   23:
   begin
      bazefullname := directorylistbox1.directory + '\data\bosm.rc6';
   end;

   24:
   begin
      bazefullname := directorylistbox1.directory + '\data\samsm.rc6';
   end;

   25:
   begin
      bazefullname := directorylistbox1.directory + '\data\srcz.rc6';
   end;

   26:
   begin
      bazefullname := directorylistbox1.directory + '\data\grcz.rc6';
   end;

   27:
   begin
      bazefullname := directorylistbox1.directory + '\data\citaty.rc6';
   end;

   28:
   begin
      bazefullname := directorylistbox1.directory + '\data\gbach.rc6';
   end;

end;

PomStream.free;
ChData.free;

PomStream := TMemoryStream.create;
Chdata := TMemoryStream.create;


//nacteni StringListu databaze
if fileexists(bazefullname) then begin

   Pitva(bazefullname,TRUE);

   Chdata.seek(0,soFromBeginning);

   // sekce
   ChData.Read(DBTmpInf.sekce[1],1);

   //kolikata db v poradi
   Chdata.Read(pocetakt[1],2);
   DBTmpInf.aktct := strtoint(pocetakt);

   //nazev databaze
   Chdata.Read(delkanazvu[1],2);
   SetLength(DBTmpInf.nazev,strtoint(delkanazvu));
   ChData.Read(DBTmpInf.nazev[1],strtoint(delkanazvu));

   //autor databaze
   Chdata.Read(delkaautora[1],2);
   SetLength(DBTmpInf.autor,strtoint(delkaautora));
   ChData.Read(DBTmpInf.autor[1],strtoint(delkaautora));

   //datum vydani databaze
   ChData.Read(DBTmpInf.datum[1],10);

   //poznamka k databazi
   Chdata.Read(delkapoznamky[1],2);
   SetLength(DBTmpInf.note,strtoint(delkapoznamky));
   ChData.Read(DBTmpInf.note[1],strtoint(delkapoznamky));

   //kecy autoru - budou se nacitat jenom v informacich o databazi
   ChData.Read(delkakecu[1],5);
   PomStream.CopyFrom(ChData, strtoint(delkakecu));
   PomStream.Seek(0,soFromBeginning);
   DBTmpInf.kecy.LoadFromStream(PomStream);

   //ChData.Seek(strtoint(delkakecu),soFromCurrent);

   PomStream.Free;
   PomStream := TMemoryStream.Create;

   //delka hlavicky
   Chdata.Read(delkahlavicky[1],6);

   PomStream.CopyFrom(Chdata,strtoint(delkahlavicky) - strtoint(delkanazvu) - strtoint(delkaautora) - strtoint(delkapoznamky) - strtoint(delkakecu) -30);

   //nacte puvodni seznam do stringlistu ...
   PomStream.seek(0,soFromBeginning);
   DBTmpInf.SList.LoadFromStream(PomStream);
   DBTmpInf.SList.Delete(0);
   //DBTmpInf.SList.Delete(0);
   // ... a spocita polozky
   //itemcount := DBTmpInf.SList.Count-1;

end;

//DBTmpInf.SList.Sort;
//end;

PomStream.free;

PomStream := TMemoryStream.Create;
PomStream.seek(0, soFromBeginning);

DBTmpInf.SList.SaveToStream(PomStream);
PomStream.seek(0, soFromBeginning);

case baze of
   1:
   begin
      PCCh.SList.LoadFromStream(PomStream);
      PCCh.sekce := DBTmpInf.sekce;
      PCCh.aktct := DBTmpInf.aktct;
      PCCh.nazev := DBTmpInf.nazev;
      PCCh.autor := DBTmpInf.autor;
      PCCh.datum := DBTmpInf.datum;
      PCCh.note := DBTmpInf.note;
      PCCh.kecy := DBTmpInf.kecy;
   end;

   2:
   begin
      PCN.SList.LoadFromStream(PomStream);
      PCN.sekce := DBTmpInf.sekce;
      PCN.aktct := DBTmpInf.aktct;
      PCN.nazev := DBTmpInf.nazev;
      PCN.autor := DBTmpInf.autor;
      PCN.datum := DBTmpInf.datum;
      PCN.note := DBTmpInf.note;
      PCN.kecy := DBTmpInf.kecy;
   end;

   3:
   begin
      PSXCh.SList.LoadFromStream(PomStream);
      PSXCh.sekce := DBTmpInf.sekce;
      PSXCh.aktct := DBTmpInf.aktct;
      PSXCh.nazev := DBTmpInf.nazev;
      PSXCh.autor := DBTmpInf.autor;
      PSXCh.datum := DBTmpInf.datum;
      PSXCh.note := DBTmpInf.note;
      PSXCh.kecy := DBTmpInf.kecy;
   end;
   4:
   begin
      PS2Ch.SList.LoadFromStream(PomStream);
      PS2Ch.sekce := DBTmpInf.sekce;
      PS2Ch.aktct := DBTmpInf.aktct;
      PS2Ch.nazev := DBTmpInf.nazev;
      PS2Ch.autor := DBTmpInf.autor;
      PS2Ch.datum := DBTmpInf.datum;
      PS2Ch.note := DBTmpInf.note;
      PS2Ch.kecy := DBTmpInf.kecy;
   end;
   5:
   begin
      GCCh.SList.LoadFromStream(PomStream);
      GCCh.sekce := DBTmpInf.sekce;
      GCCh.aktct := DBTmpInf.aktct;
      GCCh.nazev := DBTmpInf.nazev;
      GCCh.autor := DBTmpInf.autor;
      GCCh.datum := DBTmpInf.datum;
      GCCh.note := DBTmpInf.note;
      GCCh.kecy := DBTmpInf.kecy;
   end;
   6:
   begin
      XBCh.SList.LoadFromStream(PomStream);
      XBCh.sekce := DBTmpInf.sekce;
      XBCh.aktct := DBTmpInf.aktct;
      XBCh.nazev := DBTmpInf.nazev;
      XBCh.autor := DBTmpInf.autor;
      XBCh.datum := DBTmpInf.datum;
      XBCh.note := DBTmpInf.note;
      XBCh.kecy := DBTmpInf.kecy;
   end;

   7:
   begin
      N64Ch.SList.LoadFromStream(PomStream);
      N64Ch.sekce := DBTmpInf.sekce;
      N64Ch.aktct := DBTmpInf.aktct;
      N64Ch.nazev := DBTmpInf.nazev;
      N64Ch.autor := DBTmpInf.autor;
      N64Ch.datum := DBTmpInf.datum;
      N64Ch.note := DBTmpInf.note;
      N64Ch.kecy := DBTmpInf.kecy;
   end;

   8:
   begin
      SegaDCCh.SList.LoadFromStream(PomStream);
      SegaDCCh.sekce := DBTmpInf.sekce;
      SegaDCCh.aktct := DBTmpInf.aktct;
      SegaDCCh.nazev := DBTmpInf.nazev;
      SegaDCCh.autor := DBTmpInf.autor;
      SegaDCCh.datum := DBTmpInf.datum;
      SegaDCCh.note := DBTmpInf.note;
      SegaDCCh.kecy := DBTmpInf.kecy;
   end;

   9:
   begin
      GBoyCh.SList.LoadFromStream(PomStream);
      GBoyCh.sekce := DBTmpInf.sekce;
      GBoyCh.aktct := DBTmpInf.aktct;
      GBoyCh.nazev := DBTmpInf.nazev;
      GBoyCh.autor := DBTmpInf.autor;
      GBoyCh.datum := DBTmpInf.datum;
      GBoyCh.note := DBTmpInf.note;
      GBoyCh.kecy := DBTmpInf.kecy;
   end;

   10:
   begin
      AdDB1.SList.LoadFromStream(PomStream);
      AdDB1.sekce := DBTmpInf.sekce;
      AdDB1.aktct := DBTmpInf.aktct;
      AdDB1.nazev := DBTmpInf.nazev;
      AdDB1.autor := DBTmpInf.autor;
      AdDB1.datum := DBTmpInf.datum;
      AdDB1.note := DBTmpInf.note;
      AdDB1.kecy := DBTmpInf.kecy;
   end;

   11:
   begin
      AdDB2.SList.LoadFromStream(PomStream);
      AdDB2.sekce := DBTmpInf.sekce;
      AdDB2.aktct := DBTmpInf.aktct;
      AdDB2.nazev := DBTmpInf.nazev;
      AdDB2.autor := DBTmpInf.autor;
      AdDB2.datum := DBTmpInf.datum;
      AdDB2.note := DBTmpInf.note;
      AdDB2.kecy := DBTmpInf.kecy;
   end;

   12:
   begin
      Jokes.SList.LoadFromStream(PomStream);
      Jokes.sekce := DBTmpInf.sekce;
      Jokes.aktct := DBTmpInf.aktct;
      Jokes.nazev := DBTmpInf.nazev;
      Jokes.autor := DBTmpInf.autor;
      Jokes.datum := DBTmpInf.datum;
      Jokes.note := DBTmpInf.note;
      Jokes.kecy := DBTmpInf.kecy;
   end;

   13:
   begin
      Eggs.SList.LoadFromStream(PomStream);
      Eggs.sekce := DBTmpInf.sekce;
      Eggs.aktct := DBTmpInf.aktct;
      Eggs.nazev := DBTmpInf.nazev;
      Eggs.autor := DBTmpInf.autor;
      Eggs.datum := DBTmpInf.datum;
      Eggs.note := DBTmpInf.note;
      Eggs.kecy := DBTmpInf.kecy;
   end;

   14:
   begin
      ZXSPk.SList.LoadFromStream(PomStream);
      ZXSPk.sekce := DBTmpInf.sekce;
      ZXSPk.aktct := DBTmpInf.aktct;
      ZXSPk.nazev := DBTmpInf.nazev;
      ZXSPk.autor := DBTmpInf.autor;
      ZXSPk.datum := DBTmpInf.datum;
      ZXSPk.note := DBTmpInf.note;
      ZXSPk.kecy := DBTmpInf.kecy;
   end;

   15:
   begin
      SiemMel.SList.LoadFromStream(PomStream);
      SiemMel.sekce := DBTmpInf.sekce;
      SiemMel.aktct := DBTmpInf.aktct;
      SiemMel.nazev := DBTmpInf.nazev;
      SiemMel.autor := DBTmpInf.autor;
      SiemMel.datum := DBTmpInf.datum;
      SiemMel.note := DBTmpInf.note;
      SiemMel.kecy := DBTmpInf.kecy;
   end;

   16:
   begin
      NokiaMel.SList.LoadFromStream(PomStream);
      NokiaMel.sekce := DBTmpInf.sekce;
      NokiaMel.aktct := DBTmpInf.aktct;
      NokiaMel.nazev := DBTmpInf.nazev;
      NokiaMel.autor := DBTmpInf.autor;
      NokiaMel.datum := DBTmpInf.datum;
      NokiaMel.note := DBTmpInf.note;
      NokiaMel.kecy := DBTmpInf.kecy;
   end;

   17:
   begin
      AlcMel.SList.LoadFromStream(PomStream);
      AlcMel.sekce := DBTmpInf.sekce;
      AlcMel.aktct := DBTmpInf.aktct;
      AlcMel.nazev := DBTmpInf.nazev;
      AlcMel.autor := DBTmpInf.autor;
      AlcMel.datum := DBTmpInf.datum;
      AlcMel.note := DBTmpInf.note;
      AlcMel.kecy := DBTmpInf.kecy;
   end;

   18:
   begin
      EricMel.SList.LoadFromStream(PomStream);
      EricMel.sekce := DBTmpInf.sekce;
      EricMel.aktct := DBTmpInf.aktct;
      EricMel.nazev := DBTmpInf.nazev;
      EricMel.autor := DBTmpInf.autor;
      EricMel.datum := DBTmpInf.datum;
      EricMel.note := DBTmpInf.note;
      EricMel.kecy := DBTmpInf.kecy;
   end;

   19:
   begin
      SonyMel.SList.LoadFromStream(PomStream);
      SonyMel.sekce := DBTmpInf.sekce;
      SonyMel.aktct := DBTmpInf.aktct;
      SonyMel.nazev := DBTmpInf.nazev;
      SonyMel.autor := DBTmpInf.autor;
      SonyMel.datum := DBTmpInf.datum;
      SonyMel.note := DBTmpInf.note;
      SonyMel.kecy := DBTmpInf.kecy;
   end;

   20:
   begin
      PanMel.SList.LoadFromStream(PomStream);
      PanMel.sekce := DBTmpInf.sekce;
      PanMel.aktct := DBTmpInf.aktct;
      PanMel.nazev := DBTmpInf.nazev;
      PanMel.autor := DBTmpInf.autor;
      PanMel.datum := DBTmpInf.datum;
      PanMel.note := DBTmpInf.note;
      PanMel.kecy := DBTmpInf.kecy;
   end;

   21:
   begin
      MotMel.SList.LoadFromStream(PomStream);
      MotMel.sekce := DBTmpInf.sekce;
      MotMel.aktct := DBTmpInf.aktct;
      MotMel.nazev := DBTmpInf.nazev;
      MotMel.autor := DBTmpInf.autor;
      MotMel.datum := DBTmpInf.datum;
      MotMel.note := DBTmpInf.note;
      MotMel.kecy := DBTmpInf.kecy;
   end;

   22:
   begin
      PhilMel.SList.LoadFromStream(PomStream);
      PhilMel.sekce := DBTmpInf.sekce;
      PhilMel.aktct := DBTmpInf.aktct;
      PhilMel.nazev := DBTmpInf.nazev;
      PhilMel.autor := DBTmpInf.autor;
      PhilMel.datum := DBTmpInf.datum;
      PhilMel.note := DBTmpInf.note;
      PhilMel.kecy := DBTmpInf.kecy;
   end;

   23:
   begin
      BoschMel.SList.LoadFromStream(PomStream);
      BoschMel.sekce := DBTmpInf.sekce;
      BoschMel.aktct := DBTmpInf.aktct;
      BoschMel.nazev := DBTmpInf.nazev;
      BoschMel.autor := DBTmpInf.autor;
      BoschMel.datum := DBTmpInf.datum;
      BoschMel.note := DBTmpInf.note;
      BoschMel.kecy := DBTmpInf.kecy;
   end;

   24:
   begin
      SamsMel.SList.LoadFromStream(PomStream);
      SamsMel.sekce := DBTmpInf.sekce;
      SamsMel.aktct := DBTmpInf.aktct;
      SamsMel.nazev := DBTmpInf.nazev;
      SamsMel.autor := DBTmpInf.autor;
      SamsMel.datum := DBTmpInf.datum;
      SamsMel.note := DBTmpInf.note;
      SamsMel.kecy := DBTmpInf.kecy;
   end;

   25:
   begin
      SoftRec.SList.LoadFromStream(PomStream);
      SoftRec.sekce := DBTmpInf.sekce;
      SoftRec.aktct := DBTmpInf.aktct;
      SoftRec.nazev := DBTmpInf.nazev;
      SoftRec.autor := DBTmpInf.autor;
      SoftRec.datum := DBTmpInf.datum;
      SoftRec.note := DBTmpInf.note;
      SoftRec.kecy := DBTmpInf.kecy;
   end;

   26:
   begin
      GamesRec.SList.LoadFromStream(PomStream);
      GamesRec.sekce := DBTmpInf.sekce;
      GamesRec.aktct := DBTmpInf.aktct;
      GamesRec.nazev := DBTmpInf.nazev;
      GamesRec.autor := DBTmpInf.autor;
      GamesRec.datum := DBTmpInf.datum;
      GamesRec.note := DBTmpInf.note;
      GamesRec.kecy := DBTmpInf.kecy;
   end;

   27:
   begin
      Citaty.SList.LoadFromStream(PomStream);
      Citaty.sekce := DBTmpInf.sekce;
      Citaty.aktct := DBTmpInf.aktct;
      Citaty.nazev := DBTmpInf.nazev;
      Citaty.autor := DBTmpInf.autor;
      Citaty.datum := DBTmpInf.datum;
      Citaty.note := DBTmpInf.note;
      Citaty.kecy := DBTmpInf.kecy;
   end;

   28:
   begin
      GBoyACh.SList.LoadFromStream(PomStream);
      GBoyACh.sekce := DBTmpInf.sekce;
      GBoyACh.aktct := DBTmpInf.aktct;
      GBoyACh.nazev := DBTmpInf.nazev;
      GBoyACh.autor := DBTmpInf.autor;
      GBoyACh.datum := DBTmpInf.datum;
      GBoyACh.note := DBTmpInf.note;
      GBoyACh.kecy := DBTmpInf.kecy;
   end;


end;

result := DBTmpInf.SList.count;

PomStream.free;
DBTmpInf.SList.free;

end;



procedure TForm1.FormCreate(Sender: TObject);
var skinst: string;
//menu vpravo
//RightItm: TMenuItemInfo;
//MenuBuffer: Array[0..79] of char;

begin
build := 606;

AktStr := TStringList.Create;
PCCh.SList := TStringList.Create;
PCN.SList := TStringList.Create;
PSXCh.SList := TStringList.Create;
PS2Ch.SList := TStringList.Create;
GCCh.SList := TStringList.Create;
XBCh.SList := TStringList.Create;
N64Ch.SList := TStringList.Create;
SegaDCCh.SList := TStringList.Create;
GBoyCh.SList := TStringList.Create;
Jokes.SList := TStringList.Create;
Eggs.SList := TStringList.Create;
ZXSPk.SList := TStringList.Create;
SiemMel.SList := TStringList.Create;
NokiaMel.SList := TStringList.Create;
AlcMel.SList := TStringList.Create;
EricMel.SList := TStringList.Create;
SonyMel.SList := TStringList.Create;
PanMel.SList := TStringList.Create;
MotMel.SList := TStringList.Create;
PhilMel.SList := TStringList.Create;
BoschMel.SList := TStringList.Create;
SamsMel.SList := TStringList.Create;
SoftRec.SList := TStringList.Create;
GamesRec.SList := TStringList.Create;
Citaty.Slist := TStringList.Create;
GBoyACh.SList := TStringList.Create;

AdDB1.SList := TStringList.Create;
AdDB2.SList := TStringList.Create;

ChData := TMemoryStream.create;

jazyk := 'cze';

Registr := TRegistry.Create;
Registr.RootKey := HKEY_CURRENT_USER;

   if Registr.OpenKey('\Software\RadioactiveSoftware\RadioactiveCheater6', False) = true then begin

      // naËte se nastavenÌ podle klÌËe v registru krom2 pÌsma

      Form1.width := Registr.ReadInteger('WoknoWidth');
      Form1.Height := Registr.ReadInteger('WoknoHeight');

      if Registr.ReadBool('maxwokno') = TRUE then begin
         Form1.WindowState := wsMaximized;
      end;

      if length(Registr.ReadString('jazyk')) > 2 then begin
         jazyk := Registr.ReadString('jazyk');
         if jazyk = 'svk' then begin
            caption := 'Radioactive Cheater (neregistrovan· kÛpia)';
            JazykSlov;
         end;
      end;

      //pÌsmo
      {if length(Registr.ReadString('fontname')) > 0 then begin
         Richedit1.Font.Name := Registr.ReadString('fontname');
      end;

      if Registr.ReadInteger('fontsize') > 0 then begin
         Richedit1.Font.Size := Registr.ReadInteger('fontsize');
      end;

      if (Registr.ReadBool('fontbold') = TRUE) and (Registr.ReadBool('fontitalic') = TRUE) then begin
         RichEdit1.Font.Style := [fsBold,fsItalic];
      end;

      if (Registr.ReadBool('fontbold') = TRUE) and (Registr.ReadBool('fontitalic') = FALSE) then begin
         RichEdit1.Font.Style := [fsBold];
      end;

      if (Registr.ReadBool('fontbold') = FALSE) and (Registr.ReadBool('fontitalic') = TRUE) then begin
         RichEdit1.Font.Style := [fsItalic];
      end;              }


      if Registr.ReadBool('alphablend') = TRUE then begin
         form1.AlphaBlend := true;
      end else begin
         form1.AlphaBlend := false;
      end;

      if Registr.ReadInteger('alphablendvalue') > -1 then begin
         form1.AlphaBlendValue := Registr.ReadInteger('alphablendvalue');
      end else begin
         form1.AlphaBlendValue := 200;
      end;

   end else begin
      //spustÌ se nastavenÌ a zapÌöe se do registru
      VytvorKlic;
   end;

NacistMenuData;

//NaËtenÌ aktu·lnÌho skinu

////barvy menu
{nevpolozka := RGB(24,30,55);
vybpolozka := RGB(24,56,82);
okrvybpolozka := RGB(57,105,132);}

nevpolozka := RGB(12,70,30);
vybpolozka := RGB(12,102,10);
okrvybpolozka := RGB(57,132,10);

nevpismo := clSilver;
vybpismo := clWhite;

panel2.color := richedit1.color;
panel2.font.color := richedit1.font.color;
memo2.color := richedit1.color;
memo2.Font.color := richedit1.font.color;
label7.Font.Color := label1.Font.Color;

//ûlut· ??
{nevpolozka := RGB(50,50,0);
vybpolozka := RGB(107,107,0);
okrvybpolozka := RGB(150,150,0);
nevpismo := clSilver;
vybpismo := clWhite;}

//fialov· ??
{nevpolozka := RGB(33,16,49);
vybpolozka := RGB(66,32,82);
okrvybpolozka := RGB(115,56,140);
nevpismo := clSilver;
vybpismo := clWhite;}

//skinst := memo1.lines[1];

if Registr.ReadBool('RandomSkin') = TRUE then begin
   SeznamSkinu.Directory := DirectoryListBox1.Directory + '\skins';
//   repeat
      Randomize;
      SeznamSkinu.ItemIndex := Random(SeznamSkinu.Items.Count) - 1;
//   until SeznamSkinu.Items.Strings[SeznamSkinu.itemindex] <> 'default.rcs';
   if SeznamSkinu.ItemIndex = -1 then SeznamSkinu.ItemIndex := 0;
   if SeznamSkinu.Items.Strings[SeznamSkinu.itemindex] <> 'default.rcs' then begin
      NacistSkin(SeznamSkinu.FileName);
      Registr.WriteString('skin',SeznamSkinu.FileName);
   end else begin
      Registr.WriteString('skin','default');

   end;

end else begin
   skinst := Registr.ReadString('skin');
   if (length(skinst) > 0) and (skinst <> 'default') then begin
      if fileexists(skinst) then begin
         NacistSkin(skinst);
      end;
   end else begin
      label12.color := richedit1.Color;
   end;
end;

form1.helpfile := directorylistbox1.directory + '\cheater.hlp';

//Polozka v menu vpravo
MenuVpravo;

//label3.caption := '';
label4.caption := '';
filtr := '';
label1.caption := '';
//RegKopie;

if Registr.ReadInteger('defaultdb') > -1 then begin
   NacistDBData(Registr.ReadInteger('defaultdb'));
end;


end;

procedure TForm1.ListBox1Click(Sender: TObject);          //klik·nÌ na listbox1 - n·zvy her
var
hodnoty, zacatekcheatu, delkacheatu : string;
i : byte;
PomStream : TMemoryStream;

begin
 
   if listbox1.itemindex > -1 then begin

      if label1.caption <> listbox1.items.strings[listbox1.itemindex] then begin

         PomStream := TMemoryStream.create;

         hodnoty := AktStr.values[listbox1.Items.strings[listbox1.itemindex]];

         zacatekcheatu := '';
         delkacheatu := '';

         for i:= 1 to 8 do begin
            zacatekcheatu := zacatekcheatu + hodnoty[i];
         end;
         for i:=10 to 15 do begin
            delkacheatu := delkacheatu + hodnoty[i];
         end;

         Chdata.seek(strtoint(zacatekcheatu),soFromBeginning);
         PomStream.CopyFrom(Chdata,strtoint(delkacheatu));

         richedit1.lines.clear;
         PomStream.seek(0,soFromBeginning);
         richedit1.lines.loadfromstream(PomStream);
         PomStream.free;


         
//         label1.visible := true;
         label1.caption := listbox1.items.strings[listbox1.itemindex];
         label1.left := richedit1.left + richedit1.Width div 2 - label1.width div 2;

         if listbox1.itemindex > -1 then begin
            listbox1.hint := listbox1.items.strings[listbox1.itemindex];
         end;

      end;
   end;
end;



procedure TForm1.Edit1Change(Sender: TObject);      //rychlÈ hled·nÌ - zmÏna edit1

var rid, rid2, rid3: integer;

begin

   if (AktStr.count > 0) then begin

     if (length (edit1.text) = 0) and (filtr = '') then begin         //vyËistÌ vöechno
        listbox1.items.clear;
        listbox2.itemindex := -1;
        richedit1.lines.clear;
        label1.caption := '';
     end;

     if length(edit1.text) > 0 then begin
        if length(edit1.text) = 1 then begin         //po stisku 1 kl·vesy p¯ehodÌ na stisknutÈ pÌsmeno

           if (Ord(edit1.text[1]) >47) and (Ord(edit1.text[1]) < 60)then begin
              listbox2.itemindex := 0;
              listbox2click(sender);
              for rid2 := listbox1.items.count - 1 downto 0 do begin
                  if (listbox1.items.strings[rid2])[1] = edit1.text[1] then begin
                     listbox1.itemindex := rid2;

                     if label1.caption <> listbox1.items.strings[listbox1.itemindex] then begin
                        listbox1click(sender);
                     end;
                  end;
              end;
           end;

           if Ord(edit1.text[1])>64 then begin
              if listbox2.itemindex <> Ord(edit1.text[1])-64 then begin
                 listbox2.itemindex := Ord(edit1.text[1])-64;
                 listbox2click(sender);
              end;
              listbox1.itemindex := 0;
           end;

           for rid2 := 0 to listbox1.items.count - 1 do begin
              if listbox1.Items.strings[rid2] = edit1.text then begin
                 listbox1.itemindex := rid2;
                 if label1.caption <> listbox1.items.strings[listbox1.itemindex] then begin
                    listbox1click(sender);
                 end;
              end;
           end;

        listbox1Click(sender);
        end;


        if length(edit1.text)>1 then begin
           rid := 0;
           if AnsiUpperCase (edit1.text) > AnsiUpperCase (listbox1.items.strings[rid]) then begin
              repeat
                 rid := rid + 1;
              until (AnsiUpperCase (edit1.text) <= AnsiUpperCase (listbox1.items.strings[rid])) or (rid = listbox1.items.count-1);
           end;

           for rid3 := 1 to length(edit1.text) do begin
              if AnsiUpperCase (edit1.text[rid3]) <> AnsiUpperCase (listbox1.items.strings[rid][rid3]) then begin
                 rid := zaloha;
               end;
           end;

           zaloha := rid;

           listbox1.itemindex := rid;
           listbox1Click(sender);

        end;
     end;
   end;

   label1.left := richedit1.left + richedit1.Width div 2 - label1.width div 2;

//   if label1.caption = '' then label1.visible := false else label1.visible := true;

end;

procedure TForm1.Tisk1Click(Sender: TObject);    //tisk
var x : integer;
begin
    if printer.Printers.count > 0 then begin

       If PrintDialog1.Execute then begin

           richedit1.lines.insert(0,'Radioactive Cheater - '+label1.caption);
           richedit1.lines.Insert(1,'');
           x:= richedit1.font.color;
           richedit1.font.color := clBlack;
           richedit1.print('Radioactive Cheater');
           richedit1.font.color := x;

           richedit1.lines.Delete(0);
           richedit1.lines.Delete(0);
       end;
    end else begin
       if jazyk = 'svk' then begin
          Application.MessageBox('Nelze tlaËiù','Chyba',mb_OK + mb_iconError);
       end else begin
          Application.MessageBox('Nelze tisknout','Chyba',mb_OK + mb_iconError);
       end;
    end;


end;

procedure TForm1.NacistDBData(baze:byte);
var
bazefullname : string;
TempStr : TStringlist;
begin
   TempStr := TStringList.Create;

   case baze of

      //nejdriv problemovy databaze :
      10:
      begin
         bazefullname := directorylistbox1.directory + '\data\addb1.rc6';
         TempStr := AdDB1.SList;

      end;

      11:
      begin
         bazefullname := directorylistbox1.directory + '\data\addb2.rc6';
         TempStr := AdDB2.SList;
      end;

      // a ted seriovy:
      1:
      begin
         bazefullname := directorylistbox1.directory + '\data\pcch.rc6';
         TempStr := PCCh.SList;
      end;

      2:
      begin
         bazefullname := directorylistbox1.directory + '\data\pcn.rc6';
         TempStr := PCN.SList;
      end;

      3:
      begin
         bazefullname := directorylistbox1.directory + '\data\psxch.rc6';
         TempStr := PSXCh.SList;
      end;

      4:
      begin
         bazefullname := directorylistbox1.directory + '\data\ps2ch.rc6';
         TempStr := PS2Ch.SList;
      end;

      5:
      begin
         bazefullname := directorylistbox1.directory + '\data\gcch.rc6';
         TempStr := GCCh.SList;
      end;

      6:
      begin
         bazefullname := directorylistbox1.directory + '\data\xbch.rc6';
         TempStr := XBCh.SList;
      end;

      7:
      begin
         bazefullname := directorylistbox1.directory + '\data\n64ch.rc6';
         TempStr := N64Ch.SList;
      end;

      8:
      begin
         bazefullname := directorylistbox1.directory + '\data\sgdch.rc6';
         TempStr := SegaDCCh.SList;
      end;

      9:
      begin
         bazefullname := directorylistbox1.directory + '\data\gbcch.rc6';
         TempStr := GBoyCh.SList;
      end;

      12:
      begin
         bazefullname := directorylistbox1.directory + '\data\jok.rc6';
         TempStr := Jokes.SList;
      end;

      13:
      begin
         bazefullname := directorylistbox1.directory + '\data\egg.rc6';
         TempStr := Eggs.SList;
      end;

      14:
      begin
         bazefullname := directorylistbox1.directory + '\data\zxsp.rc6';
         TempStr := ZXSPk.SList;
      end;

      15:
      begin
         bazefullname := directorylistbox1.directory + '\data\siem.rc6';
         TempStr := SiemMel.SList;
      end;

      16:
      begin
         bazefullname := directorylistbox1.directory + '\data\nokm.rc6';
         TempStr := NokiaMel.SList;
      end;

      17:
      begin
         bazefullname := directorylistbox1.directory + '\data\alcm.rc6';
         TempStr := AlcMel.SList;
      end;

      18:
      begin
         bazefullname := directorylistbox1.directory + '\data\ericm.rc6';
         TempStr := EricMel.SList;
      end;

      19:
      begin
         bazefullname := directorylistbox1.directory + '\data\sonym.rc6';
         TempStr := SonyMel.SList;
      end;

      20:
      begin
         bazefullname := directorylistbox1.directory + '\data\panm.rc6';
         TempStr := PanMel.SList;
      end;

      21:
      begin
         bazefullname := directorylistbox1.directory + '\data\motm.rc6';
         TempStr := MotMel.SList;
      end;

      22:
      begin
         bazefullname := directorylistbox1.directory + '\data\philm.rc6';
         TempStr := PhilMel.SList;
      end;

      23:
      begin
         bazefullname := directorylistbox1.directory + '\data\bosm.rc6';
         TempStr := BoschMel.SList;
      end;

      24:
      begin
         bazefullname := directorylistbox1.directory + '\data\samsm.rc6';
         TempStr := SamsMel.SList;
      end;

      25:
      begin
         bazefullname := directorylistbox1.directory + '\data\srcz.rc6';
         TempStr := SoftRec.SList;
      end;

      26:
      begin
         bazefullname := directorylistbox1.directory + '\data\grcz.rc6';
         TempStr := GamesRec.SList;
      end;

      27:
      begin
         bazefullname := directorylistbox1.directory + '\data\citaty.rc6';
         TempStr := Citaty.SList;
      end;

      28:
      begin
         bazefullname := directorylistbox1.directory + '\data\gbach.rc6';
         TempStr := GBoyACh.SList;
      end;

   end;

   if TempStr.Count > 0 then label3.caption := GetDBName(baze) + ' : '+inttostr(TempStr.count-1);


   if not fileexists(bazefullname) then begin

      label3.Visible := false;
      label4.visible := false;

      if jazyk = 'svk' then begin
          Application.MessageBox('S˙bor defaultnÈ datab·zy nen·jden˝','Chyba...',MB_OK + MB_IconError);
      end else begin
          Application.MessageBox('Soubor v˝chozÌ datab·ze nenalezen','Chyba...',MB_OK + MB_IconError);
      end;
      listbox1.enabled := false;
      AktStr.Clear;

   end else begin

      listbox1.enabled := true;
      AktStr := TempStr;
      pitva(bazefullname,TRUE);

      label3.Visible := true;
      label4.visible := true;

   end;

end;


procedure TForm1.FormResize(Sender: TObject);   //zmÏna velikosti form1
begin
   richedit1.width := clientwidth - listbox1.width - listbox2.width - 34;

   richedit1.height := clientheight - edit1.height -  42;

   listbox1.height := richedit1.height;
   listbox2.Height := richedit1.height;
   edit1.Width := listbox1.width + listbox2.width + 5;
   edit1.left := listbox2.left;
   edit1.top := 8;

   label5.Width := edit1.width + 2;
   label5.Left := edit1.left - 1;
   label5.height := edit1.height + 2;
   label5.top := edit1.top - 1;

   label8.Width := listbox1.width + 2;
   label8.Left := listbox1.left - 1;
   label8.height := listbox1.height + 2;
   label8.top := listbox1.top - 1;

   label9.Width := listbox2.width + 2;
   label9.Left := listbox2.left - 1;
   label9.height := listbox2.height + 2;
   label9.top := listbox2.top - 1;

   label10.Width := richedit1.width + 2;
   label10.Left := richedit1.left - 1;
   label10.height := richedit1.height + 2;
   label10.top := richedit1.top - 1;

   label11.Width := panel1.width + 2;
   label11.Left := panel1.left - 1;
   label11.height := panel1.height + 2;
   label11.top := panel1.top - 1;

   label12.left := listbox2.left;
   label12.Top := listbox2.top + listbox2.Height + 7;
   label12.Width := listbox2.width + listbox1.width + richedit1.width + 15;


   label13.Left := listbox2.left-1;
   label13.Top := listbox2.Top + listbox2.height + 6;
   label13.Width := listbox2.width + listbox1.width + richedit1.width + 17;

   label13.BringToFront;
   label12.BringToFront;

   label3.BringToFront;
   label4.BringToFront;
   label6.BringToFront;

   label1.left := richedit1.left + richedit1.Width div 2 - label1.width div 2;
   label1.constraints.MaxWidth := richedit1.Width;

   if label1.left < richedit1.left then begin
      label1.left := richedit1.left;
      label1.width := richedit1.width;
   end;

   panel1.width := richedit1.width;
   panel1.left := richedit1.left;
   panel1.height := 15 ;//label5.height;


{   label2.left := AlScrollingText1.left;
   label2.width := AlScrollingText1.Width;
   label2.left := AlScrollingText1.left;}

   label3.top := listbox2.top + listbox2.Height + 7;
   label3.left := listbox2.left + 1;

   label4.top := listbox2.top + listbox2.Height + 7;
   label4.left := richedit1.left;

   label6.Left := richedit1.Left + richedit1.width - label6.width - 1;
   label6.top := listbox2.top + listbox2.Height + 7;

   listbox2.itemheight := listbox2.height div 27;


   if panel2.visible then begin
      panel2.left := richedit1.Left + (richedit1.width div 2) - (panel2.Width div 2);
      panel2.top := richedit1.top + (richedit1.height div 2) - (panel2.height div 2);

   end;

emptywidth := form1.width - 7*75;

end;

procedure TForm1.Edit1Click(Sender: TObject);
begin
    edit1.SelectAll;
end;

procedure TForm1.Oprogramu1Click(Sender: TObject);      //about
begin
    Application.CreateForm(TFormabout, Formabout);
    formabout.showmodal;
end;

procedure TForm1.Cheater1Click(Sender: TObject);  //help
begin
    Application.HelpContext(1);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
//Filtrace kl·ves v edit1
var rid : integer;
begin
   if length(edit1.text)=0 then begin

       for rid := 0 to 47 do begin
           if key = Chr(rid) then key := Chr(10);
       end;
       for rid := 58 to 64 do begin  //60 - 64
           if key = Chr(rid) then key := Chr(10);
       end;
       for rid := 91 to 96 do begin
           if key = Chr(rid) then key := Chr(10);
       end;

       for rid := 123 to 255 do begin
           if key = Chr(rid) then key := Chr(10);
       end;

//       48 - 57 - ËÌsla
//       65 - 90 - uppercase
//       97 - 122 - lowercase
//       128 - 172 - hacky, carky, ...

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


end;

procedure TForm1.Registrace1Click(Sender: TObject);
begin
//    Application.CreateForm(TFormregistrace, Formregistrace);
    formregistrace.showmodal;
end;

procedure TForm1.FullTexthledn1Click(Sender: TObject);
begin
   Application.CreateForm(TFormhledani, Formhledani);
   formhledani.showmodal;
end;

procedure TForm1.FormActivate(Sender: TObject);
var OldRegistr : TRegistry;
begin

   //nacte nastaveni pisma z registru (nevim z jakyho duvodu to nejde ve FormCreate)

   if Registr.OpenKey('\Software\RadioactiveSoftware\RadioactiveCheater6', False) = true then begin



      if length(Registr.ReadString('fontname')) > 0 then begin
         Richedit1.Font.Name := Registr.ReadString('fontname');
      end;

      Richedit1.font.size := 9;
      if Registr.ReadInteger('fontsize') > 0 then begin
         Richedit1.Font.Size := Registr.ReadInteger('fontsize');
      end;

      if (Registr.ReadBool('fontbold') = TRUE) and (Registr.ReadBool('fontitalic') = TRUE) then begin
         RichEdit1.Font.Style := [fsBold,fsItalic];
      end;

      if (Registr.ReadBool('fontbold') = TRUE) and (Registr.ReadBool('fontitalic') = FALSE) then begin
         RichEdit1.Font.Style := [fsBold];
      end;

      if (Registr.ReadBool('fontbold') = FALSE) and (Registr.ReadBool('fontitalic') = TRUE) then begin
         RichEdit1.Font.Style := [fsItalic];
      end;

   end;

RegKopie;
formresize(sender);
Jezdicitext;

listbox1.ctl3d:=false;
listbox2.ctl3d:=false;

//NaËtenÌ stavu datab·ze do Label3

//label3.caption := '';
label4.caption := '';

fontdialog1.Font.color := richedit1.font.color;
edit1.BringToFront;


   if Registr.ReadString('user') = '' then begin
      Application.CreateForm(TFormlicence, Formlicence);
      case formlicence.showmodal of

         mrYes :
         begin
            Registr.WriteString('user','unregistered');
            Application.CreateForm(TFormNastaveni, FormNastaveni);
            formnastaveni.showmodal;
            panel2.visible := true;
            //nejdriv zjisti, jestli neni stara verze, kdyz jo, tak z ni zkopiruje registraci
            OldRegistr := TRegistry.Create;
            OldRegistr.RootKey := HKEY_CURRENT_USER;

            if OldRegistr.OpenKey('\Software\RadioactiveCheater', False) = true then begin
               Registr.WriteString('user', OldRegistr.ReadString('user'));
               Registr.WriteString('pass', OldRegistr.ReadString('pass'));
               OldRegistr.CloseKey;
            end;

            OldRegistr.Free;
         end;

         mrNo:
         begin
            Application.messagebox('Bohuûel, bez souhlasu s licenËnÌmi podmÌnkami nem˘ûete tento program pouûÌvat !','Sm˘la',mb_OK + mb_iconstop);
            Close;
         end;
         else begin
            Close;
         end;

      end;


   end;

   if Registr.ReadBool('AutoUpdate') = TRUE then begin
      if aktualizovano = false then begin
         ZjistitCoAktualizovat;
         aktualizovano := true;
      end;
   end;

end;

procedure TForm1.Dotaznk1Click(Sender: TObject);
begin

   Application.CreateForm(TFormdotaz, Formdotaz);
   formdotaz.showmodal;

end;

procedure TForm1.Licence1Click(Sender: TObject);

begin
   Application.CreateForm(TFormlicence, Formlicence);
   case formlicence.showmodal of

    mrYes :
       begin

       end;

    else begin
      if jazyk = 'svk' then begin
         Application.messagebox('Bohuûiaæ, bez s˙hlasu s licenËn˝mi podmienkami nemÙûete tento program pouûÌvaù !','Smola',mb_OK + mb_iconstop);
      end else begin
         Application.messagebox('Bohuûel, bez souhlasu s licenËnÌmi podmÌnkami nem˘ûete tento program pouûÌvat !','Sm˘la',mb_OK + mb_iconstop);
      end;

      Registr.WriteString('user','');
      Close;
    end;

   end;
end;


procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = 38 then begin

       if listbox1.itemindex <> 0 then begin
          listbox1.itemindex := listbox1.itemindex - 1;
          listbox1click(sender);
          edit1.selectall;
       end;
       key := 39;
    end;

    if key = 40 then begin
       if listbox1.itemindex <> listbox1.items.count - 1 then begin
          listbox1.itemindex := listbox1.itemindex + 1;
          listbox1click(sender);
          edit1.selectall;
       end;
    end;

    if key = 37 then begin
       Key := 39;
       edit1.selectall;
    end;

    if key = 39 then begin
       edit1.selectall;
    end;

    if key = 36 then begin
       edit1.text := '';
       edit1.selectall;
    end;


    if key = 27 then begin
       edit1.selectall;
    end;




end;

procedure TForm1.Label2Click(Sender: TObject);
begin
   timer1.Enabled := not timer1.Enabled;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
   listbox1.hint := '';

   richedit1.lines.clear;
   listbox1.Items.clear;
   label1.caption := '';
   edit1.text := '';
   NacistDBData(1);

   filtr := '';
   listbox2.enabled := true;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
   listbox1.hint := '';

   richedit1.lines.clear;
   listbox1.Items.clear;
   label1.caption := '';
   edit1.text := '';
   NacistDBData(2);

   filtr := '';
   listbox2.enabled := true;
end;

procedure TForm1.FullTexthlednceldatabze1Click(Sender: TObject);
begin
   formhledani.showmodal;
end;

procedure TForm1.Filtr1Click(Sender: TObject);
begin
   Application.CreateForm(TFormfiltr, Formfiltr);
   formfiltr.showmodal;
end;

procedure TForm1.Slovnk1Click(Sender: TObject);
begin
   Application.CreateForm(TFormdefinice, Formdefinice);
   formdefinice.PageControl1.ActivePage := formdefinice.TabSheet5;
   formdefinice.showmodal;
end;


procedure TForm1.Odkazy1Click(Sender: TObject);
begin
   Application.CreateForm(TFormdefinice, Formdefinice);
   formdefinice.PageControl1.ActivePage := formdefinice.TabSheet6;
   formdefinice.showmodal;
end;

procedure TForm1.HEXEditace1Click(Sender: TObject);
begin
   Application.CreateForm(TFormdefinice, Formdefinice);
   formdefinice.PageControl1.ActivePage := formdefinice.TabSheet3;
   formdefinice.showmodal;
end;

procedure TForm1.Rady1Click(Sender: TObject);
begin
   Application.CreateForm(TFormdefinice, Formdefinice);
   formdefinice.PageControl1.ActivePage := formdefinice.TabSheet2;
   formdefinice.showmodal;
end;

procedure TForm1.Definicecheat1Click(Sender: TObject);
begin
   Application.CreateForm(TFormdefinice, Formdefinice);
   formdefinice.PageControl1.ActivePage := formdefinice.TabSheet1;
   formdefinice.showmodal;
end;

procedure TForm1.Spoluprce1Click(Sender: TObject);
begin
   Application.CreateForm(TFormsajty, Formsajty);
   formsajty.showmodal;
end;

procedure TForm1.Poznmky1Click(Sender: TObject);
begin
   Application.CreateForm(TFormpoznamky, Formpoznamky);
   Formpoznamky.showmodal;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin

//  AktStr.free;
   Chdata.free;
   AktStr.Clear;

   PCCh.SList.free;
   PCN.SList.free;

   Registr.CloseKey;

   if Registr.OpenKey('\Software\RadioactiveSoftware\RadioactiveCheater6', False) = true then begin

      Registr.WriteString('jazyk',jazyk);
      Registr.WriteString('fontname',Richedit1.Font.name);
      Registr.WriteInteger('fontsize',Richedit1.Font.Size);

      if Richedit1.Font.Style = [fsBold] then begin
         Registr.WriteBool('fontbold',TRUE);
      end else begin
         Registr.WriteBool('fontbold',FALSE);
      end;
      if Richedit1.Font.Style = [fsItalic] then begin
         Registr.WriteBool('fontitalic',TRUE);
      end else begin
         Registr.WriteBool('fontitalic',FALSE);
      end;
      if Richedit1.Font.Style = [fsBold,fsItalic] then begin
         Registr.WriteBool('fontbold',TRUE);
         Registr.WriteBool('fontitalic',TRUE);
      end;

      if form1.AlphaBlend = true then begin
         Registr.WriteBool('alphablend',TRUE);
         Registr.WriteInteger('alphablendvalue',form1.AlphaBlendValue);
      end else begin
         Registr.WriteBool('alphablend',FALSE);
      end;

      Registr.WriteInteger('WoknoWidth',form1.Width);
      Registr.WriteInteger('WoknoHeight',form1.Height);

      if form1.WindowState = wsMaximized then begin
         Registr.WriteBool('maxwokno',TRUE);
      end else begin
         Registr.WriteBool('maxwokno',FALSE);
      end;

      //   Registr.CloseKey;
      Registr.Free;
   end else begin

      Registr.RootKey := HKEY_CURRENT_USER;
      VytvorKlic;
      Registr.Free;
   end;

end;

procedure TForm1.JazykSlov;
begin
//menu

   Dotaznk1.hint := 'Zobrazenie dotaznÌka';
   TiskSubmenu1.caption :='TlaË';
   TiskSubmenu1.hint :='TlaË textu';
   Tisk1.caption := 'TlaË';
   Tisk1.hint := 'VytlaËÌ cel˝ text';
   Tiskcasti1.caption := 'TlaË Ëasti textu';
   Tiskcasti1.Hint := 'VytlaËÌ oznaËen˙ Ëasù textu';
   Konec1.caption := 'Koniec';
   FullTexthledn1.caption := 'FullText hæadanie';
   FullTexthledn1.hint := 'Hæadanie v n·zvoch hier';
   Filtr1.caption := 'Filter';
   Filtr1.hint := 'Filtrovanie n·zvov hier';
   Aktualizace1.caption := 'Nahraù nov˙ datab·zu';
   Aktualizace1.hint := 'Nahr· nov˙ datab·zu';
   Aktualizace2.caption := 'Aktualiz·cia';
   Aktualizace2.hint := 'Aktualiz·cia datab·zy';
//   Zdisku1.caption := 'Nahraù update z disku';
//   Zdisku1.hint := 'Nahr· update zo s˙boru na disku';
   Spoluprace1.caption := 'Spolupr·ca';
   Spoluprace1.hint := 'Spolupracuj˙ce sajty ';

   Prosted1.Caption := 'Prostredie';
   Prosted1.Hint := 'SkÌny, jazyk, pÌsmo...';

   Registrace1.caption := 'Registr·cia';
   Registrace1.hint := 'Registr·cia programu';
   Licence1.caption := 'Licencia';
   Licence1.hint := 'Zobrazenie licencie';
   Definicecheat1.caption := 'DefinÌcia Cheatov';
   Definicecheat1.hint := '»o s˙ cheaty';
   Rady1.caption := 'ProblÈmy pri cheatovanÌ';
   Rady1.hint := 'NejËastejöie problÈmy a ich rieöenie';
   HEXEditace1.caption := 'HEX Edit·cia';
   HEXEditace1.hint := 'N·vod na HEX Edit·ciu';
   Slovnk1.caption := 'SlovnÌk pojmov';
   Slovnk1.hint := 'SlovnÌËek z·kladn˝ch pojmov';
   Odkazy1.hint := 'InternetovÈ hernÈ odkazy';
   Cheater1.caption := 'TÈmy n·povedy';
   Cheater1.hint := 'Bez koment·ra';
   Oprogramu1.caption := 'O Aplik·cii Cheater';
   Oprogramu1.hint := 'Inform·cie o programe, histÛria, ...';
   Gamescz1.hint := 'Prv˝ hern˝ port·l v »R';
   DECHEX1.caption := 'HEX / DEC prevody';
   DECHEX1.hint := 'Prevod medzi s˙stavami';

   Hlednnainternetu1.Caption := 'Hæadanie na internete';
   Hlednnainternetu1.Hint := 'Hæadanie na internetov˝ch serveroch';

   hledaninagames.caption := 'GamesLink.cz';
   hledaninagames.hint := 'Hern˝ port·l';

   GamePlanetcz1.Caption := 'GamePlanet.cz';
   GamePlanetcz1.Hint := 'Hern˝ spravodaj';

   GamePlanetcz2.Caption := 'GamePlanet.cz';
   GamePlanetcz2.Hint := 'Od hr·Ëov pre hr·Ëov';

   Oficilnweb1.caption := 'Ofici·lny web';
   Onlineverze1.caption := 'Online verzia';

   //   HlednnaCheatysk1.Hint := 'Cheaty, n·vody, CD ob·ly, ...';

   memoPagecz1.Hint := 'Web nielen o hr·ch'; //?
   OnlineRCh.Caption := 'Online hæadanie';
   OnlineRCh.Hint := 'Online datab·za RCh';

   Spoutnsparametrem2.Caption := 'Sp˙öùanie s parametrom';
   Spoutnsparametrem2.hint := 'Sp˙öùanie programu s parametrom';

   Spoutnsparametrem1.Caption := 'Sp˙öùanie s parametrom';
   Spoutnsparametrem1.hint := 'Sp˙öùanie programu s parametrom';

   Soubor1.caption := '&S˙bor';
   Nastaven1.caption := 'N&astavenie';
   Spoluprace1.caption := '&Spolupr·cia';
   Informace1.caption := '&Inform·cie';
   Npovda1.caption := 'N·&poveda';

   KontrolaAktualizace1.Caption := 'Stiahnutie updatu z internetu';
   KontrolaAktualizace1.Hint := 'Skontroæuje a stiahne updaty';

   Databze1.caption := '&Datab·zy';

   Informaceodatabzi1.Caption := 'Inform·cie o datab·ze';

   //help
   {if fileexists(directorylistbox1.directory + '\cheatsvk.hlp') then begin
      form1.HelpFile := directorylistbox1.directory + '\cheatsvk.hlp';
   end;}

    //konec menu

   //form1 texty

    {    if PCCh.SList.count > 0 then begin
       Label3.caption := ' PoËet cheatov : ' + inttostr(PCCh.SList.count-1) + '  ';
    end;
    if PCN.SList.count > 0 then begin
       Label3.caption := label3.caption + 'PoËet n·vodov : ' + inttostr(PCN.SList.count-1) + '  ';
    end;}



    listbox1.items.clear;
    listbox1.Hint := '';
    listbox2.itemindex := -1;
    listbox2.Enabled := true;
    richedit1.lines.clear;
    label1.caption := '';
    label4.caption := '';
    filtr := '';

    NacistMenuData;
    NacistDBData(Registr.ReadInteger('defaultdb'));
end;

procedure TForm1.JazykCesky;
begin
//menu

   Dotaznk1.hint := 'ZobrazÌ dotaznÌk';
   TiskSubmenu1.caption :='Tisk';
   TiskSubmenu1.hint :='Tisk textu';
   Tisk1.caption := 'Tisk';
   Tisk1.hint := 'Vytiskne cel˝ cheat/n·vod';
   Tiskcasti1.caption := 'Tisk Ë·sti textu';
   Tiskcasti1.Hint := 'Vytiskne oznaËenou Ë·st textu';
   Konec1.caption := 'Konec';
   FullTexthledn1.caption := 'FullText hled·nÌ';
   FullTexthledn1.hint := 'Hled·nÌ v n·zvech her';
   Filtr1.caption := 'Filtr';
   Filtr1.hint := 'Filtrov·nÌ n·zv˘ her';
   Aktualizace1.caption := 'Nahr·t novou datab·zi';
   Aktualizace1.hint := 'Nahraje novou datab·zi';
   Aktualizace2.caption := 'Aktualizace';
   Aktualizace2.hint := 'Aktualizace datab·ze';
//   Zdisku1.caption := 'Nahr·t update z disku';
//   Zdisku1.hint := 'Nahraje update ze souboru na disku';
   Spoluprace1.caption := 'Spolupr·ce';
   Spoluprace1.hint := 'SpolupracujÌcÌ sajty';

   Prosted1.Caption := 'Prost¯edÌ';
   Prosted1.Hint := 'Skiny, jazyk, pÌsmo...';

   Registrace1.caption := 'Registrace';
   Registrace1.hint := 'Registrace programu';
   Licence1.caption := 'Licence';
   Licence1.hint := 'ZobrazenÌ licence';
   Definicecheat1.caption := 'Definice Cheat˘';
   Definicecheat1.hint := 'Co jsou cheaty ?';
   Rady1.caption := 'ProblÈmy p¯i cheatovanÌ';
   Rady1.hint := 'NejËastÏjöÌ problÈmy a jejich ¯eöenÌ';
   HEXEditace1.caption := 'HEX Editace';
   HEXEditace1.hint := 'N·vod na HEX Editaci';
   Slovnk1.caption := 'SlovnÌk pojm˘';
   Slovnk1.hint := 'SlovnÌËek nejpouûÌvanÏjöÌch pojm˘';
   Odkazy1.hint := 'InternetovÈ hernÌ odkazy';
   Cheater1.caption := 'TÈmata n·povÏdy';
   Cheater1.hint := 'Bez koment·¯e';
   Oprogramu1.caption := 'O aplikaci Cheater';
   Oprogramu1.hint := 'Informace o programu, historie, ...';
   Gamescz1.hint := 'PrvnÌ hernÌ port·l v »R';
   DECHEX1.caption := 'HEX / DEC p¯evody';
   DECHEX1.hint := 'P¯evod mezi soustavami';

   Hlednnainternetu1.Caption := 'Hled·nÌ na internetu';
   Hlednnainternetu1.Hint := 'Hled·nÌ na internetov˝ch serverech';

   hledaninagames.caption := '&Hled·nÌ na GamesLink.cz';
   hledaninagames.hint := 'HernÌ port·l';

   GamePlanetcz1.Caption := 'GamePlanet.cz';
   GamePlanetcz1.Hint := 'HernÌ zpravodaj';

   GamePlanetcz2.Caption := 'GamePlanet.cz';
   GamePlanetcz2.Hint := 'Od hr·Ë˘ pro hr·Ëe';

   Oficilnweb1.caption := 'Ofici·lnÌ web';
   Onlineverze1.caption := 'Online verze';


   memoPagecz1.Hint := 'Od hr·Ë˘ pro hr·Ëe'; //?
   OnlineRCh.Caption := 'Online hled·nÌ';
   OnlineRCh.Hint := 'Online datab·ze RCh';

   Spoutnsparametrem2.Caption := 'SpouötÏnÌ s parametrem';
   Spoutnsparametrem2.hint := 'SpouötÏnÌ programu s parametrem';

   Spoutnsparametrem1.Caption := 'SpouötÏnÌ s parametrem';
   Spoutnsparametrem1.hint := 'SpouötÏnÌ programu s parametrem';

   Soubor1.caption := '&Soubor';
   Nastaven1.caption := 'N&astavenÌ';
   Spoluprace1.caption := '&Spolupr·ce';
   Informace1.caption := '&Informace';
   Npovda1.caption := 'N·&povÏda';

   Databze1.caption := '&Datab·ze';

   KontrolaAktualizace1.Caption := 'StaûenÌ updatu z internetu';
   KontrolaAktualizace1.Hint := 'Zkontroluje a st·hne updaty';

   Informaceodatabzi1.Caption := 'Informace o datab·zi';

//help
   if fileexists(directorylistbox1.directory + '\cheater.hlp') then begin
      form1.HelpFile := directorylistbox1.directory + '\cheater.hlp';
   end;

 //konec menu

 //form1 texty

{   if PCCh.SList.count > 0 then begin
      Label3.caption := ' PoËet cheat˘ : ' + inttostr(PCCh.SList.count-1) + '  ';
   end;
   if PCN.SList.count > 0 then begin
      Label3.caption := label3.caption + 'PoËet n·vod˘ : ' + inttostr(PCN.SList.count-1) + '  ';
   end;}



   listbox1.items.clear;
   listbox1.Hint := '';

   listbox2.itemindex := -1;
   listbox2.Enabled := true;
   richedit1.lines.clear;
   label1.caption := '';
   label4.caption := '';
   filtr := '';

   NacistMenuData;
   NacistDBData(Registr.ReadInteger('defaultdb'));
end;


procedure TForm1.Dotaznk1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
   width:=155;
   Height:=25;
end;

procedure TForm1.Dotaznk1DrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);

var
   text,               // text na poloûce
   napoveda:string;    // n·povÏda poloûky
   zkratka:TShortCut;  // kl·vesov· zkratka
begin
with Sender as TMenuItem do  // zjistÌme info o poloûce
  begin                       // kterou jdeme kreslit
   Text:=caption;
   Zkratka:=ShortCut;
//   Image:=ImageIndex;
   Napoveda:=Hint;
  end;


  with ACanvas do
  begin
   InflateRect(Arect,1,1); // zvÏtöÌme rect o 1 na kaûdÈ stranÏ
   Pen.Style:=psSolid;     // vymaûeme to
   Pen.Width:=1;
   Pen.Color:=nevpolozka;
   ACanvas.Brush.Color:=nevpolozka;
   Rectangle(ARect);
   InflateRect(ARect,-1,-1); // a zase ho zvÏtöÌme nazp·tek
//   ARect.Left:=20;           // udÏl·me mÌsto pro lev˝ pruh...

   // nejprve nakreslÌme pozadÌ,
   // abychom poznali jestli je vybran· ...
   if Selected then
    begin
     Pen.Style:=psSolid;
     Pen.Width:=1;
     Pen.Color:=okrvybpolozka;
     ACanvas.Brush.Color:=vybpolozka;
     Rectangle(ARect);
    end
   else
    begin
     Pen.Style:=psSolid;
     Pen.Width:=1;
     Pen.Color:=nevpolozka;
     ACanvas.Brush.Color:=nevpolozka;
     Rectangle(ARect);
    end;
//  end;

Font.Name:='Tahoma';

   Delete(text,Pos('&',text),1); // odstranit & z textu

   // podle toho, jestli je poloûka vybran·
   // nakreslÌme buÔ jen samotnou, nebo i s hintem
   if selected then
    begin
     Font.Size:=8;
     Font.Style:=[fsBold];
     Font.Color:=vybpismo;
     TextOut(ARect.Left+10,ARect.Top+1,text);
//     textout(
     Font.Size:=7;
     Font.Style:=[];
     TextOut(ARect.Left+15,ARect.Top+13,napoveda);
    end
   else if selected = false then
    begin
     Font.Color:=nevpismo;
     Font.Size:=8;
     Font.Style:=[];
     TextOut(ARect.Left+10,ARect.Top+1,text);
    end;

   // SHORTCUT  - kl·vesov· zkratka
   Font.Size:=8;
   Font.Style:=[];
   TextOut(150-TextWidth(ShortCutToText(zkratka)),
   ARect.Top+3,ShortCutToText(zkratka));

   end;

end;

procedure TForm1.adebg1Click(Sender: TObject);
var adbg : byte;
begin
   for adbg := 1 to 10 do begin
   end;
end;

procedure TForm1.Pitva(clovek : string; main : boolean);
var

posit:longint;
k : string;
npomocna : byte;
P : PByte;
PitevniStul: array [0..29] of Byte;

begin

   Screen.cursor := crHourGlass;
   if main=true then begin
      Chdata.loadfromfile(clovek);

      //k:='G5ruM9ixP3AcT3hG5rdx9ixP89cT3h';
      //k:='Gh53rTucM998iPxxPi39AxcdTr35hG';
      k:='xcdTr3GhTPx5hGRPi39S3rTucM9b8i';
      for npomocna := 1 to length(k) do begin
         PitevniStul[npomocna-1] := ord(k[npomocna]);
      end;

      P := Chdata.Memory;

      for Posit := 0 to Chdata.Size - 1 do begin
         P^ := P^ xor PitevniStul[posit mod 30];
         Inc(P);
      end;
   end else begin

      UpData := TMemoryStream.Create;
      UpData.loadfromfile(clovek);

      k:='xcdTr3GhTPx5hGRPi39S3rTucM9b8i';

      for npomocna := 1 to length(k) do begin
         PitevniStul[npomocna-1] := ord(k[npomocna]);
      end;

      P := UpData.Memory;

      for Posit := 0 to UpData.Size - 1 do begin
         P^ := P^ xor PitevniStul[posit mod 30];
         Inc(P);
      end;

   end;
k := '';
Screen.cursor := crDefault;
listbox1.cursor := crHandPoint;
listbox2.cursor := crHandPoint;

end;

procedure TForm1.Ostatni1Click(Sender: TObject);
begin
   Application.CreateForm(TFormsajty, Formsajty);
   formsajty.PageControl1.ActivePage := formsajty.TabSheet5;
   formsajty.showmodal;
end;


procedure TForm1.HledaninagamesClick(Sender: TObject);
begin
   Application.CreateForm(TFormGames, FormGames);
   FormGames.showmodal;
end;

procedure TForm1.DECHEX1Click(Sender: TObject);
begin
   Application.CreateForm(TFormprevod, Formprevod);
   formprevod.showmodal;
end;

procedure TForm1.MADCheaty1Click(Sender: TObject);
begin
   Application.CreateForm(TFormsajty, Formsajty);
   formsajty.PageControl1.ActivePage := formsajty.TabSheet2;
   formsajty.showmodal;
end;

procedure TForm1.Jezdicitext;
var jezdici : byte;
begin

label2.left := panel1.Width;

randomize;
jezdici := random (6);

case jezdici of
0 :
begin
  if jazyk = 'svk' then begin
     label2.caption := 'Radioactive Cheater - datab·za cheatov, n·vodov ....  Tento program je urËen˝ pre vöetk˝ch, ktorÌ si nevedia rady alebo len tak chc˙ sk˙siù nejak˝ ten podvod. RCh je pre v·s poskytovan˝ ˙plne ZDARMA !!!';
  end else begin
     label2.caption := 'Radioactive Cheater - datab·ze cheat˘, n·vod˘ ....  Tento program je urËen pro vöechny, kte¯Ì si nevÏdÌ rady nebo jen tak chtÏjÌ zkusit nÏjak˝ ten podv˘dek. RCh je pro v·s poskytov·n zcela ZDARMA !!!';
  end;
end;

1:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'Radioactive Cheater - datab·za cheatov, n·vodov ....   RCh je jeden z najËastejöie aktualizovan˝ch programov tohoto typu. Z·kladnÈ datab·zy s˙ aktualizovanÈ kaûd˝ mesiac. StaËÌ len sledovaù www.radioactive.cz ...';
  end else begin
     label2.caption := 'Radioactive Cheater - datab·ze cheat˘, n·vod˘ ....   RCh je jeden z nejËastÏji aktualizovan˝ch program˘ tohoto typu. Z·kladnÌ datab·ze jsou aktualizov·ny kaûd˝ mÏsÌc. StaËÌ jen sledovat www.radioactive.cz ...';
  end;
end;

2:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'Zaregistrujte si svoju kÛpiu Radioactive Cheatera: pomocou formul·ra na www.radioactive.cz odoölite registraËnÈ ˙daje a obratom obdrûÌte registraËnÈ heslo, a naviac v·s budeme informovaù o nov˝ch verzi·ch a aktualiz·ci·ch ...';
  end else begin
     label2.caption := 'Zaregistrujte si svoji kopii Radioactive Cheateru: pomocÌ formul·¯e na www.radioactive.cz odeölete registraËnÌ ˙daje a obratem obdrûÌte registraËnÌ heslo, a navÌc v·s budeme informovat o nov˝ch verzÌch a aktualizacÌch ...';
  end;
end;

3:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'Ofici·lnu internetov˙ prezent·ciu programu Radioactive Cheater mÙûete navötÌviù na internetovej adrese www.radioactive.cz, kde je pre v·s k dispozÌcii mnoûstvo zaujÌmavostÌ - aktualiz·cie, inform·cie, novinky, rÙzne doplnky, ...';
  end else begin
     label2.caption := 'Ofici·lnÌ internetovou prezentaci programu Radioactive Cheater m˘ûete navötÌvit na internetovÈ adrese www.radioactive.cz, kde je pro v·s k dispozici mnoho zajÌmavostÌ - aktualizace, informace, novinky, r˘znÈ dopÚky, ...';
  end;
end;

4:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'Radioactive Cheater - datab·za cheatov, n·vodov ....   M·te nejak˝ prÌspevok, ot·zku alebo pripomienku ? Naöa emailov· adresa je cheater@radioactive.cz ... Radi v·m poradÌme, novÈ cheaty a n·vody zverejnÌme.';
  end else begin
     label2.caption := 'Radioactive Cheater - datab·ze cheat˘, n·vod˘ ....   M·te nÏjak˝ p¯ÌspÏvek, dotaz nebo p¯ipomÌnku ? Naöe emailov· adresa je cheater@radioactive.cz ... R·di v·m poradÌme, novÈ cheaty a n·vody zve¯ejnÌme.';
  end;
end;

{5:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'ABCGames.cz - ofici·lny partner programu a dod·vateæ cheatov - na serveri n·jdete cheaty, n·vody, CD obaly, wallpapery, baz·r, linky, ... , zasurfujte na adrese www.ABCGames.cz';
  end else begin
     label2.caption := 'ABCGames.cz - ofici·lnÌ partner programu a dodavatel cheat˘ - na serveru najdete cheaty, n·vody, CD obaly, wallpapery, bazar, linky, ... , zasurfujte na adrese www.ABCGames.cz';
  end;

end;}

{6:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'ABCGames.cz - ofici·lny partner programu a dod·vateæ cheatov - na serveri n·jdete cheaty, n·vody, CD obaly, wallpapery, baz·r, linky, ... , zasurfujte na adrese www.ABCGames.cz';
  end else begin
     label2.caption := 'ABCGames.cz - ofici·lnÌ partner programu a dodavatel cheat˘ - na serveru najdete cheaty, n·vody, CD obaly, wallpapery, bazar, linky, ... , zasurfujte na adrese www.ABCGames.cz';
  end;
end;}

{7:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'GamesLink.cz - ofici·lny partner programu, prv˝ hern˝ port·l v »R - tento server pon˙ka mnoûstvo "hern˝ch" odkazov - recenzie, hern˝ hardware, n·vody, inform·cie, ...';
  end else begin
     label2.caption := 'GamesLink.cz - ofici·lnÌ partner programu, prvnÌ hernÌ port·l v »R - tento server nabÌzÌ spoustu "hernÌch" odkaz˘ - recenze, hernÌ hardware, n·vody, informace, ...';
  end;
end;

8:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'GamesLink.cz - ofici·lny partner programu, prv˝ hern˝ port·l v »R - tento server pon˙ka mnoûstvo "hern˝ch" odkazov - recenzie, hern˝ hardware, n·vody, inform·cie, ...';
  end else begin
     label2.caption := 'GamesLink.cz - ofici·lnÌ partner programu, prvnÌ hernÌ port·l v »R - tento server nabÌzÌ spoustu "hernÌch" odkaz˘ - recenze, hernÌ hardware, n·vody, informace, ...';
  end;
end;}

5:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'Radioactive Cheater - Internetov· adresa: www.radioactive.cz - Email: cheater@radioactive.cz - œakujeme v·m za pouûÌvanie tohto programu a d˙fame, ûe n·m zachov·te priazeÚ aj naÔalej.';
  end else begin
     label2.caption := 'Radioactive Cheater - Internetov· adresa: www.radioactive.cz - Email: cheater@radioactive.cz - DÏkujeme v·m za pouûiv·nÌ tohoto programu a douf·me, ûe n·m zachov·te p¯ÌzeÚ i nad·le.';
  end;
end;

6:
begin
  if jazyk = 'svk' then begin
     label2.caption := 'Na adrese http://cheaty.radioactive.cz n·jdete online verziu datab·zy programu Radioactive Cheater.';
  end else begin
     label2.caption := 'Na adrese http://cheaty.radioactive.cz naleznete online verzi datab·zÌ programu Radioactive Cheater.';
  end;
end;

end;

end;

procedure TForm1.NacistSkin(jmenoskinu:string);
var name, skinst:string;
skin : textfile;
begin

assignfile(skin, jmenoskinu);
Reset(skin);

         ReadLn(skin, name);
         readLn(skin,skinst);
         form1.Color := strtoint(skinst);

         readLn(skin,skinst);
         form1.edit1.color := strtoint(skinst);

         readLn(skin,skinst);
         form1.edit1.font.color := strtoint(skinst);
         form1.label3.font.color := strtoint(skinst);
         form1.label4.font.color := strtoint(skinst);
         form1.label6.font.color := strtoint(skinst);


         readLn(skin,skinst);
         form1.ListBox2.color := strtoint(skinst);

         readLn(skin,skinst);
         form1.ListBox2.font.color := strtoint(skinst);

         readLn(skin,skinst);
         form1.ListBox1.color := strtoint(skinst);

         readLn(skin,skinst);
         form1.ListBox1.font.color := strtoint(skinst);

         readLn(skin,skinst);
         form1.richedit1.color := strtoint(skinst);
         form1.panel2.color := strtoint(skinst);
         form1.memo2.Color := strtoint(skinst);

         readLn(skin,skinst);
         form1.richedit1.font.color := strtoint(skinst);
         form1.memo2.font.Color := strtoint(skinst);
         label7.Font.Color := strtoint(skinst);

         readLn(skin,skinst);
         form1.label1.font.color := strtoint(skinst);

         ReadLn(skin,skinst);
         form1.label2.color := strtoint(skinst);
         form1.panel1.color := strtoint(skinst);

         readLn(skin,skinst);
         form1.label2.font.color := strtoint(skinst);

         ReadLn(skin,skinst);
         nevpolozka := strtoint(skinst);

         ReadLn(skin,skinst);
         vybpolozka := strtoint(skinst);

         ReadLn(skin,skinst);
         okrvybpolozka := strtoint(skinst);

         ReadLn(skin,skinst);
         nevpismo := strtoint(skinst);

         ReadLn(skin,skinst);
         vybpismo := strtoint(skinst);

         ReadLn(skin,skinst);
         if skinst <> '' then begin
            form1.tileimage1.picture.loadfromfile(directorylistbox1.directory + '\skins\'+name+ '\' + skinst);
         end else begin
            form1.tileimage1.picture := nil;
         end;

         //NAHRANI CUDLU

         readLn(skin, skinst);
         //Cheaty - form1
         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            form1.bitbtn1.Glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);
         //Navody - form1
         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            form1.bitbtn2.Glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);
         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            OKBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            ZRUSITBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
             ANOBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            NEBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            ULOZITBut.Glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            OK2But.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            NAJITBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            ZRUSITSVKBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            ANOSVKBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            NESVKBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            ULOZITSVKBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

         readLn(skin, skinst);

         if fileexists(directorylistbox1.directory + '\skins\' + name + '\' + skinst) then begin
            NAJITSVKBut.glyph.loadfromfile(directorylistbox1.directory + '\skins\' + name + '\' + skinst);
         end;

        label5.color := label1.font.color;
        label8.color := label1.font.color;
        label9.color := label1.font.color;
        label10.color := label1.font.color;
        label11.color := label1.font.color;

        label12.color := edit1.color;
        label13.Color := label1.font.color;

        //obrazky - AtomicSkin
{        readLn(skin, skinst);

        readLn(skin, skinst);
        readLn(skin, skinst);  //podcudl
        readLn(skin, skinst);  //podnazev - pozustatky AtomicSkinu}

        CloseFile(skin);

end;

procedure TForm1.regkopie;
var regfile : TMemoryStream;
m : string;
poleznaku : array [0..3] of byte;
n : byte;
ukazatel : PByte;
registered : boolean;
begin
   m := '*<>*';
   user := Registr.ReadString('user');
   rpass := Registr.ReadString('pass');

   if (user <> '') and (user <> 'unregistered') then begin
      regfile := TMemoryStream.create;
      RegFile.Seek(0, soFromBeginning);
      RegFile.Write(user[1],length(user));


      if regfile.size > 0 then begin

         ukazatel := RegFile.memory;

         for n := 1 to 4 do begin
             poleznaku[n-1] := ord(m[n]);
         end;

         for n := 0 to RegFile.Size - 1 do begin
            ukazatel^ := ukazatel^ xor poleznaku[n mod 4];
            Inc(ukazatel);
         end;

          //         m := '';
         SetLength(user,regfile.size);
         regfile.seek(0,soFromBeginning);
         regfile.read(user[1],regfile.size);

         regfile.free;

         if length(rpass) > 0 then begin
            //dekodovani hesla :

            regfile := TMemoryStream.create;
            RegFile.Seek(0, soFromBeginning);
            RegFile.Write(rpass[1],length(rpass));
            m := '*<>*';

            if regfile.size > 0 then begin

               ukazatel := RegFile.memory;

               for n := 1 to 4 do begin
                  poleznaku[n-1] := ord(m[n]);
               end;

               for n := 0 to RegFile.Size - 1 do begin
                  ukazatel^ := ukazatel^ xor poleznaku[n mod 4];
                  Inc(ukazatel);
               end;

                //               m := '';
               SetLength(rpass,regfile.size);
               regfile.seek(0,soFromBeginning);
               regfile.read(rpass[1],regfile.size);
               regfile.free;
            end;

            registered := false;
            if rpass = 'TOP500_TOXIC_USER' then registered := true;
            if rpass = '14012001' then registered := true;
            if GenPass(user) = rpass then registered := true;

            if registered = true then begin
               If Registr.ReadBool('regjmcapt') = TRUE then begin
                  if jazyk = 'svk' then begin
                     form1.caption := 'Radioactive Cheater (registrovan· kÛpia - "'+user+'")';
                  end else begin
                     form1.caption := 'Radioactive Cheater (registrovan· kopie - "'+user+'")';
                  end;
               end else begin
                  if jazyk = 'svk' then begin
                     form1.caption := 'Radioactive Cheater';
                  end else begin
                     form1.caption := 'Radioactive Cheater';
                  end;

               end;

//               registrace1.enabled := false;
            end;

         end;


      end else begin
         if jazyk = 'svk' then begin
            form1.caption := 'Radioactive Cheater (neregistrovan· kÛpia)';
         end else begin
            form1.caption := 'Radioactive Cheater (neregistrovan· kopie)';
         end;
      end;

   end else begin
      if jazyk = 'svk' then begin
         form1.caption := 'Radioactive Cheater (neregistrovan· kÛpia)';
      end else begin
         form1.caption := 'Radioactive Cheater (neregistrovan· kopie)';
      end;
   end;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
    ShellExecute(0,'open',Pchar('www.radioactive.cz'),nil,nil,Sw_ShowNormal);
end;

procedure TForm1.Spoutnsparametrem1Click(Sender: TObject);
begin
   Application.CreateForm(TFormdefinice, Formdefinice);
   formdefinice.PageControl1.ActivePage := formdefinice.TabSheet4;
   formdefinice.showmodal;
end;

procedure TForm1.MemoPagecz1Click(Sender: TObject);
begin
   Application.CreateForm(TFormsajty, Formsajty);
   formsajty.PageControl1.ActivePage := formsajty.TabSheet3;
   formsajty.showmodal;

end;

procedure TForm1.Prosted1Click(Sender: TObject);
begin
   Application.CreateForm(TFormNastaveni, FormNastaveni);
   formnastaveni.showmodal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if label2.Left + label2.width < 0 then begin
      label2.Left := panel1.Width;
   end else begin
      label2.Left := label2.left-2;
   end;
end;

procedure TForm1.Label2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
   JezdiciText;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
{   if filtr <> '' then begin
      filtr := '';
      edit1.text := '';//change
      label4.caption := '';
      listbox2.enabled := true;
      listbox2.itemindex := 0;
   end;}
end;

procedure TForm1.RichEdit1Change(Sender: TObject);
begin
   if richedit1.lines.Count > 0 then begin
      panel2.Visible := false;
   end;
end;

procedure TForm1.FormClick(Sender: TObject);
begin
   panel2.visible := false;
end;

procedure TForm1.Tiskcasti1Click(Sender: TObject);

begin
   Richedit2.Lines.clear;
   Richedit2.Lines.add(Richedit1.SelText);
   Richedit2.font := Richedit1.Font;
   Richedit2.font.Color := clBlack;

   if Richedit2.Lines.Count > 0 then begin
      if printer.Printers.count > 0 then begin

         If PrintDialog1.Execute then begin

            richedit2.lines.insert(0,'Radioactive Cheater - '+label1.caption+'(nekompletnÌ)');
            richedit2.lines.Insert(1,'');
            richedit2.font.color := clBlack;
            richedit2.print('Radioactive Cheater');

         end;
      end else begin
         if jazyk = 'svk' then begin
            Application.MessageBox('Nelze tlaËiù','Chyba',mb_OK + mb_iconError);
         end else begin
            Application.MessageBox('Nelze tisknout','Chyba',mb_OK + mb_iconError);
         end;
      end;
   end;




end;

procedure TForm1.HlednnaCheatysk1Click(Sender: TObject);
begin
   Application.CreateForm(TFormCheatySK, FormCheatySK);
   FormCheatySK.showmodal;
end;

procedure TForm1.OnlineRChClick(Sender: TObject);
begin
   Application.CreateForm(TFormOnlineRCh, FormOnlineRCh);
   FormOnlineRCh.Showmodal;
end;

procedure TForm1.KontrolaAktualizace1Click(Sender: TObject);
begin
   ZjistitCoAktualizovat;
end;

procedure TForm1.VytvorKlic;
begin
   //vytvori neues klic
   Registr.OpenKey('\Software\RadioactiveSoftware\RadioactiveCheater6', true);

   Registr.WriteString('user','');
   Registr.WriteString('pass','');

   Registr.WriteString('jazyk','cze');
   jazyk := 'cze';

   Registr.WriteString('skin','default');
   Registr.WriteString('fontname','Lucida Console');
   Registr.WriteInteger('fontsize',8);

   Registr.WriteString('notespath',DirectoryListBox1.Directory + '\notes.txt');

   Registr.WriteBool('fontbold',FALSE);
   Registr.WriteBool('fontitalic',FALSE);

   Registr.WriteBool('RandomSkin',FALSE);

   Registr.WriteBool('alphablend',FALSE);
   Registr.WriteInteger('alphablendvalue',200);
   form1.AlphaBlend := false;

   Registr.WriteBool('AutoUpdate',FALSE);
//   Registr.WriteBool('DelOldAkt',TRUE);

   Registr.WriteBool('regjmcapt',TRUE);

   Registr.WriteBool('maxwokno',FALSE);
   Registr.WriteInteger('WoknoWidth', width);
   Registr.WriteInteger('WoknoHeight', height);
//   form1.WindowState := wsNormal;

   Registr.WriteInteger('Defaultdb', 1);
   Registr.WriteString('Defaultdbstr', 'PC Cheaty');

   Registr.WriteBool('useproxy',FALSE);
   Registr.WriteString('proxyhost','');
   Registr.WriteString('proxyport','');

end;

procedure TForm1.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   //posun dolu
   if listbox1.itemindex = listbox1.items.count-1 then begin
      if Key=40 then begin
         if (listbox2.itemindex > -1) and (listbox2.itemindex < 26) then begin
            ListBox2.ItemIndex := Listbox2.ItemIndex + 1;
            listbox2click(Sender);
            listbox1.itemindex := -1;
         end;
         if listbox2.itemindex = 26 then begin
            if listbox1.itemindex = listbox1.items.count-1 then begin
               ListBox2.ItemIndex := 0;
               listbox2click(Sender);
               listbox1.itemindex := -1;
            end;
         end;
      end;
   end;

  { //posun nahoru
   if listbox1.itemindex = 0 then begin
      if Key=38 then begin
         if (listbox2.itemindex > 0) and (listbox2.itemindex < 27) then begin
            ListBox2.ItemIndex := Listbox2.ItemIndex - 1;
            listbox2click(Sender);
            listbox1.itemindex := listbox1.items.count-1;
         end;
         if listbox2.itemindex = 0 then begin
            if listbox1.itemindex = 0 then begin
               ListBox2.ItemIndex := 26;
               listbox2click(Sender);
               listbox1.itemindex := listbox1.items.count-1;
            end;
         end;
      end;
   end;}
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   listbox1.hint := '';
   filtr := '';
   listbox2.enabled := true;

   richedit1.lines.clear;
   listbox1.Items.clear;
   label1.caption := '';
   edit1.text := '';
   NacistDBData(4);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   listbox1.hint := '';
   filtr := '';
   listbox2.enabled := true;

   richedit1.lines.clear;
   listbox1.Items.clear;
   label1.caption := '';
   edit1.text := '';
   NacistDBData(5);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   listbox1.hint := '';
   filtr := '';
   listbox2.enabled := true;

   richedit1.lines.clear;
   listbox1.Items.clear;
   label1.caption := '';
   edit1.text := '';
   NacistDBData(6);
end;

function TForm1.GetDBName(baze:byte):string;
begin
   case baze of
      1: result := PCCh.nazev;
      2: result := PCN.nazev;
      3: result := PSXCh.nazev;
      4: result := PS2Ch.nazev;
      5: result := GCCh.nazev;
      6: result := XBCh.nazev;
      7: result := N64Ch.nazev;
      8: result := SegaDCCh.nazev;
      9: result := GBoyCh.nazev;
      10: result := AdDB1.nazev;
      11: result := AdDB2.nazev;
      12: result := Jokes.nazev;
      13: result := Eggs.nazev;
      14: result := ZXSPk.nazev;
      15: result := SiemMel.nazev;
      16: result := NokiaMel.nazev;
      17: result := AlcMel.nazev;
      18: result := EricMel.nazev;
      19: result := SonyMel.nazev;
      20: result := PanMel.nazev;
      21: result := MotMel.nazev;
      22: result := PhilMel.nazev;
      23: result := BoschMel.nazev;
      24: result := SamsMel.nazev;
      25: result := SoftRec.nazev;
      26: result := GamesRec.nazev;
      27: result := Citaty.nazev;
      28: result := GBoyACh.nazev;      
   end;


end;

procedure TForm1.NacistCelouBazi(baze:byte);
begin
   listbox1.hint := '';
   filtr := '';
   listbox2.enabled := true;
   richedit1.lines.clear;
   listbox1.Items.clear;
   label1.caption := '';
   label4.caption := '';
   edit1.text := '';

   case baze of
      1: NacistDBData(1);
      2: NacistDBData(2);
      3: NacistDBData(3);
      4: NacistDBData(4);
      5: NacistDBData(5);
      6: NacistDBData(6);
      7: NacistDBData(7);
      8: NacistDBData(8);
      9: NacistDBData(9);
      10: NacistDBData(10);
      11: NacistDBData(11);
      12: NacistDBData(12);
      13: NacistDBData(13);
      14: NacistDBData(14);
      15: NacistDBData(15);
      16: NacistDBData(16);
      17: NacistDBData(17);
      18: NacistDBData(18);
      19: NacistDBData(19);
      20: NacistDBData(20);
      21: NacistDBData(21);
      22: NacistDBData(22);
      23: NacistDBData(23);
      24: NacistDBData(24);
      25: NacistDBData(25);
      26: NacistDBData(26);
      27: NacistDBData(27);
      28: NacistDBData(28);
   end;

end;

procedure TForm1.datab1Click(Sender: TObject);
begin
   NacistCelouBazi((Sender as TMenuItem).tag);
end;

procedure TForm1.Soubor1DrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
var
   text:string;               // text na poloûce

begin
   Text := (Sender as TMenuItem).caption;

  with ACanvas do
  begin
//   InflateRect(Arect,1,1); // zvÏtöÌme rect o 1 na kaûdÈ stranÏ
   Pen.Style:=psSolid;     // vymaûeme to
   Pen.Width:=1;
   Pen.Color:=nevpolozka;
   ACanvas.Brush.Color:=nevpolozka;
   Rectangle(ARect);
   InflateRect(ARect,-1,-1); // a zase ho zvÏtöÌme nazp·tek


   // nejprve nakreslÌme pozadÌ,
   // abychom poznali jestli je vybran· ...
   if Selected then
    begin
     Pen.Style:=psSolid;
     Pen.Width:=1;
     Pen.Color:=okrvybpolozka;
     ACanvas.Brush.Color:=vybpolozka;
     Rectangle(ARect);
    end
   else
    begin
     Pen.Style:=psSolid;
     Pen.Width:=1;
     Pen.Color:=nevpolozka;
     ACanvas.Brush.Color:=nevpolozka;
     Rectangle(ARect);
    end;
//  end;

Font.Name:='Tahoma';

   Delete(text,Pos('&',text),1); // odstranit & z textu

   // podle toho, jestli je poloûka vybran·
   // nakreslÌme buÔ jen samotnou, nebo i s hintem
   if selected then
    begin
     Font.Size:=8;
     Font.Style:=[fsBold];
     Font.Color:=vybpismo;
     TextOut(ARect.Left+10,ARect.Top+1,text);
    end
   else if selected = false then
    begin
     Font.Color:=nevpismo;
     Font.Size:=8;
     Font.Style:=[fsBold];
     TextOut(ARect.Left+10,ARect.Top+1,text);
    end;

   end;

end;



procedure TForm1.Soubor1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
   width := 75;
   Height:=20;
end;

procedure TForm1.N1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
   width := form1.width - 7*75;
   Height:=20;
end;

procedure TForm1.nacistmenudata;

begin
     //nejdriv problemovy databaze ....
   if fileexists(form1.directorylistbox1.Directory + '\data\addb1.rc6') then begin
      NacistDBStr(10);
      datab10.caption := GetDBName(10);
      datab10.Hint := inttostr(AdDB1.SList.count-1);
      if jazyk = 'svk' then datab10.Hint := datab10.hint + ' poloûiek' else datab10.Hint := datab10.hint + ' poloûek';
      datab10.Enabled := true;
      datab10.Visible := true;
      idatab10.caption := GetDBName(10);
      idatab10.Hint := datab10.Hint;
      idatab10.Enabled := true;
      idatab10.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\addb2.rc6') then begin
      NacistDBStr(11);
      datab11.caption := GetDBName(11);
      datab11.Hint := inttostr(AdDB2.SList.count-1);
      if jazyk = 'svk' then datab11.Hint := datab11.hint + ' poloûiek' else datab11.Hint := datab11.hint + ' poloûek';
      datab11.Enabled := true;
      datab11.Visible := true;
      idatab11.caption := GetDBName(11);
      idatab11.Hint := datab11.Hint;
      idatab11.Enabled := true;
      idatab11.Visible := true;

   end;

     //a hned po nich seriovy ....
   if fileexists(form1.directorylistbox1.Directory + '\data\pcch.rc6') then begin
      NacistDBStr(1);
      datab1.caption := GetDBName(1);
      datab1.Hint := inttostr(PCCh.SList.count-1);
      if jazyk = 'svk' then datab1.Hint := datab1.hint + ' poloûiek' else datab1.Hint := datab1.hint + ' poloûek';
      datab1.Enabled := true;
      datab1.Visible := true;
      idatab1.caption := GetDBName(1);
      idatab1.Hint := datab1.Hint;
      idatab1.Enabled := true;
      idatab1.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\pcn.rc6') then begin
      NacistDBStr(2);
      datab2.caption := GetDBName(2);
      datab2.Hint := inttostr(PCN.SList.count-1);
      if jazyk = 'svk' then datab2.Hint := datab2.hint + ' poloûiek' else datab2.Hint := datab2.hint + ' poloûek';
      datab2.Enabled := true;
      datab2.Visible := true;
      idatab2.caption := GetDBName(2);
      idatab2.Hint := datab2.Hint;
      idatab2.Enabled := true;
      idatab2.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\psxch.rc6') then begin
      NacistDBStr(3);
      datab3.caption := GetDBName(3);
      datab3.Hint := inttostr(PSXCh.SList.count-1);
      if jazyk = 'svk' then datab3.Hint := datab3.hint + ' poloûiek' else datab3.Hint := datab3.hint + ' poloûek';
      datab3.Enabled := true;
      datab3.Visible := true;
      idatab3.caption := GetDBName(3);
      idatab3.Hint := datab3.Hint;
      idatab3.Enabled := true;
      idatab3.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\ps2ch.rc6') then begin
      NacistDBStr(4);
      datab4.caption := GetDBName(4);
      datab4.Hint := inttostr(PS2Ch.SList.count-1);
      if jazyk = 'svk' then datab4.Hint := datab4.hint + ' poloûiek' else datab4.Hint := datab4.hint + ' poloûek';
      datab4.Enabled := true;
      datab4.Visible := true;
      idatab4.caption := GetDBName(4);
      idatab4.Hint := datab4.Hint;
      idatab4.Enabled := true;
      idatab4.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\gcch.rc6') then begin
      NacistDBStr(5);
      datab5.caption := GetDBName(5);
      datab5.Hint := inttostr(GCCh.SList.count-1);
      if jazyk = 'svk' then datab5.Hint := datab5.hint + ' poloûiek' else datab5.Hint := datab5.hint + ' poloûek';
      datab5.Enabled := true;
      datab5.Visible := true;
      idatab5.caption := GetDBName(5);
      idatab5.Hint := datab5.Hint;
      idatab5.Enabled := true;
      idatab5.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\xbch.rc6') then begin
      NacistDBStr(6);
      datab6.caption := GetDBName(6);
      datab6.Hint := inttostr(XBCh.SList.count-1);
      if jazyk = 'svk' then datab6.Hint := datab6.hint + ' poloûiek' else datab6.Hint := datab6.hint + ' poloûek';
      datab6.Enabled := true;
      datab6.Visible := true;
      idatab6.caption := GetDBName(6);
      idatab6.Hint := datab6.Hint;
      idatab6.Enabled := true;
      idatab6.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\n64ch.rc6') then begin
      NacistDBStr(7);
      datab7.caption := GetDBName(7);
      datab7.Hint := inttostr(N64Ch.SList.count-1);
      if jazyk = 'svk' then datab7.Hint := datab7.hint + ' poloûiek' else datab7.Hint := datab7.hint + ' poloûek';
      datab7.Enabled := true;
      datab7.Visible := true;
      idatab7.caption := GetDBName(7);
      idatab7.Hint := datab7.Hint;
      idatab7.Enabled := true;
      idatab7.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\sgdch.rc6') then begin
      NacistDBStr(8);
      datab8.caption := GetDBName(8);
      datab8.Hint := inttostr(SegaDCCh.SList.count-1);
      if jazyk = 'svk' then datab8.Hint := datab8.hint + ' poloûiek' else datab8.Hint := datab8.hint + ' poloûek';
      datab8.Enabled := true;
      datab8.Visible := true;
      idatab8.caption := GetDBName(8);
      idatab8.Hint := datab8.Hint;
      idatab8.Enabled := true;
      idatab8.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\gbcch.rc6') then begin
      NacistDBStr(9);
      datab9.caption := GetDBName(9);
      datab9.Hint := inttostr(GBoyCh.SList.count-1);
      if jazyk = 'svk' then datab9.Hint := datab9.hint + ' poloûiek' else datab9.Hint := datab9.hint + ' poloûek';
      datab9.Enabled := true;
      datab9.Visible := true;
      idatab9.caption := GetDBName(9);
      idatab9.Hint := datab9.Hint;
      idatab9.Enabled := true;
      idatab9.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\jok.rc6') then begin
      NacistDBStr(12);
      datab12.caption := GetDBName(12);
      datab12.Hint := inttostr(Jokes.SList.count-1);
      if jazyk = 'svk' then datab12.Hint := datab12.hint + ' poloûiek' else datab12.Hint := datab12.hint + ' poloûek';
      datab12.Enabled := true;
      datab12.Visible := true;
      idatab12.caption := GetDBName(12);
      idatab12.Hint := datab12.Hint;
      idatab12.Enabled := true;
      idatab12.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\egg.rc6') then begin
      NacistDBStr(13);
      datab13.caption := GetDBName(13);
      datab13.Hint := inttostr(Eggs.SList.count-1);
      if jazyk = 'svk' then datab13.Hint := datab13.hint + ' poloûiek' else datab13.Hint := datab13.hint + ' poloûek';
      datab13.Enabled := true;
      datab13.Visible := true;
      idatab13.caption := GetDBName(13);
      idatab13.Hint := datab13.Hint;
      idatab13.Enabled := true;
      idatab13.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\zxsp.rc6') then begin
      NacistDBStr(14);
      datab14.caption := GetDBName(14);
      datab14.Hint := inttostr(ZXSPk.SList.count-1);
      if jazyk = 'svk' then datab14.Hint := datab14.hint + ' poloûiek' else datab14.Hint := datab14.hint + ' poloûek';
      datab14.Enabled := true;
      datab14.Visible := true;
      idatab14.caption := GetDBName(14);
      idatab14.Hint := datab14.Hint;
      idatab14.Enabled := true;
      idatab14.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\siem.rc6') then begin
      NacistDBStr(15);
      datab15.caption := GetDBName(15);
      datab15.Hint := inttostr(SiemMel.SList.count-1);
      if jazyk = 'svk' then datab15.Hint := datab15.hint + ' poloûiek' else datab15.Hint := datab15.hint + ' poloûek';
      datab15.Enabled := true;
      datab15.Visible := true;
      idatab15.caption := GetDBName(15);
      idatab15.Hint := datab15.Hint;
      idatab15.Enabled := true;
      idatab15.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\nokm.rc6') then begin
      NacistDBStr(16);
      datab16.caption := GetDBName(16);
      datab16.Hint := inttostr(NokiaMel.SList.count-1);
      if jazyk = 'svk' then datab16.Hint := datab16.hint + ' poloûiek' else datab16.Hint := datab16.hint + ' poloûek';
      datab16.Enabled := true;
      datab16.Visible := true;
      idatab16.caption := GetDBName(16);
      idatab16.Hint := datab16.Hint;
      idatab16.Enabled := true;
      idatab16.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\alcm.rc6') then begin
      NacistDBStr(17);
      datab17.caption := GetDBName(17);
      datab17.Hint := inttostr(AlcMel.SList.count-1);
      if jazyk = 'svk' then datab17.Hint := datab17.hint + ' poloûiek' else datab17.Hint := datab17.hint + ' poloûek';
      datab17.Enabled := true;
      datab17.Visible := true;
      idatab17.caption := GetDBName(17);
      idatab17.Hint := datab17.Hint;
      idatab17.Enabled := true;
      idatab17.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\ericm.rc6') then begin
      NacistDBStr(18);
      datab18.caption := GetDBName(18);
      datab18.Hint := inttostr(EricMel.SList.count-1);
      if jazyk = 'svk' then datab18.Hint := datab18.hint + ' poloûiek' else datab18.Hint := datab18.hint + ' poloûek';
      datab18.Enabled := true;
      datab18.Visible := true;
      idatab18.caption := GetDBName(18);
      idatab18.Hint := datab18.Hint;
      idatab18.Enabled := true;
      idatab18.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\sonym.rc6') then begin
      NacistDBStr(19);
      datab19.caption := GetDBName(19);
      datab19.Hint := inttostr(SonyMel.SList.count-1);
      if jazyk = 'svk' then datab19.Hint := datab19.hint + ' poloûiek' else datab19.Hint := datab19.hint + ' poloûek';
      datab19.Enabled := true;
      datab19.Visible := true;
      idatab19.caption := GetDBName(19);
      idatab19.Hint := datab19.Hint;
      idatab19.Enabled := true;
      idatab19.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\panm.rc6') then begin
      NacistDBStr(20);
      datab20.caption := GetDBName(20);
      datab20.Hint := inttostr(PanMel.SList.count-1);
      if jazyk = 'svk' then datab20.Hint := datab20.hint + ' poloûiek' else datab20.Hint := datab20.hint + ' poloûek';
      datab20.Enabled := true;
      datab20.Visible := true;
      idatab20.caption := GetDBName(20);
      idatab20.Hint := datab20.Hint;
      idatab20.Enabled := true;
      idatab20.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\motm.rc6') then begin
      NacistDBStr(21);
      datab21.caption := GetDBName(21);
      datab21.Hint := inttostr(MotMel.SList.count-1);
      if jazyk = 'svk' then datab21.Hint := datab21.hint + ' poloûiek' else datab21.Hint := datab21.hint + ' poloûek';
      datab21.Enabled := true;
      datab21.Visible := true;
      idatab21.caption := GetDBName(21);
      idatab21.Hint := datab21.Hint;
      idatab21.Enabled := true;
      idatab21.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\philm.rc6') then begin
      NacistDBStr(22);
      datab22.caption := GetDBName(22);
      datab22.Hint := inttostr(PhilMel.SList.count-1);
      if jazyk = 'svk' then datab22.Hint := datab22.hint + ' poloûiek' else datab22.Hint := datab22.hint + ' poloûek';
      datab22.Enabled := true;
      datab22.Visible := true;
      idatab24.caption := GetDBName(24);
      idatab24.Hint := datab24.Hint;
      idatab22.Enabled := true;
      idatab22.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\bosm.rc6') then begin
      NacistDBStr(23);
      datab23.caption := GetDBName(23);
      datab23.Hint := inttostr(BoschMel.SList.count-1);
      if jazyk = 'svk' then datab23.Hint := datab23.hint + ' poloûiek' else datab23.Hint := datab23.hint + ' poloûek';
      datab23.Enabled := true;
      datab23.Visible := true;
      idatab23.caption := GetDBName(23);
      idatab23.Hint := datab23.Hint;
      idatab23.Enabled := true;
      idatab23.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\samsm.rc6') then begin
      NacistDBStr(24);
      datab24.caption := GetDBName(24);
      datab24.Hint := inttostr(SamsMel.SList.count-1);
      if jazyk = 'svk' then datab24.Hint := datab24.hint + ' poloûiek' else datab24.Hint := datab24.hint + ' poloûek';
      datab24.Enabled := true;
      datab24.Visible := true;
      idatab24.caption := GetDBName(24);
      idatab24.Hint := datab24.Hint;
      idatab24.Enabled := true;
      idatab24.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\srcz.rc6') then begin
      NacistDBStr(25);
      datab25.caption := GetDBName(25);
      datab25.Hint := inttostr(SoftRec.SList.count-1);
      if jazyk = 'svk' then datab25.Hint := datab25.hint + ' poloûiek' else datab25.Hint := datab25.hint + ' poloûek';
      datab25.Enabled := true;
      datab25.Visible := true;
      idatab25.caption := GetDBName(25);
      idatab25.Hint := datab25.Hint;
      idatab25.Enabled := true;
      idatab25.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\grcz.rc6') then begin
      NacistDBStr(26);
      datab26.caption := GetDBName(26);
      datab26.Hint := inttostr(GamesRec.SList.count-1);
      if jazyk = 'svk' then datab26.Hint := datab26.hint + ' poloûiek' else datab26.Hint := datab26.hint + ' poloûek';
      datab26.Enabled := true;
      datab26.Visible := true;
      idatab26.caption := GetDBName(26);
      idatab26.Hint := datab26.Hint;
      idatab26.Enabled := true;
      idatab26.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\citaty.rc6') then begin
      NacistDBStr(27);
      datab27.caption := GetDBName(27);
      datab27.Hint := inttostr(Citaty.SList.count-1);
      if jazyk = 'svk' then datab27.Hint := datab27.hint + ' poloûiek' else datab27.Hint := datab27.hint + ' poloûek';
      datab27.Enabled := true;
      datab27.Visible := true;
      idatab27.caption := GetDBName(27);
      idatab27.Hint := datab27.Hint;
      idatab27.Enabled := true;
      idatab27.Visible := true;
   end;

   if fileexists(form1.directorylistbox1.Directory + '\data\gbach.rc6') then begin
      NacistDBStr(28);
      datab28.caption := GetDBName(28);
      datab28.Hint := inttostr(GBoyACh.SList.count-1);
      if jazyk = 'svk' then datab28.Hint := datab28.hint + ' poloûiek' else datab28.Hint := datab28.hint + ' poloûek';
      datab28.Enabled := true;
      datab28.Visible := true;
      idatab28.caption := GetDBName(28);
      idatab28.Hint := datab28.Hint;
      idatab28.Enabled := true;
      idatab28.Visible := true;
   end;


end;

procedure TForm1.ZjistitCoAktualizovat;
var
    Aktualni : TStringList;
    CountOfAll : array [1..28,0..1] of integer;
    Aktualizovat : array [1..28] of boolean;

    dbct, afcount, spcount : byte;
    afname, TempVal, TempSP : string;
    HTTP: THTTPSend;
    budeakt : boolean;
begin
   FormAktual.RichEdit1.lines.clear;

   HTTP := THTTPSend.Create;
   if Registr.ReadBool('useproxy') = TRUE then begin
      HTTP.ProxyHost := Registr.ReadString('proxyhost');
      HTTP.ProxyPort := Registr.ReadString('proxyport');
   end;
   unit4.newbuild := false;

   if HTTP.HTTPMethod('GET', 'http://www.radioactive.cz/downl/aktinf6.rup') = true then begin

      //if HTTP.HTTPMethod('GET', 'http://127.0.0.1/!RCh/aktinf5.rup') = true then begin
      Aktualni := TStringList.Create;
      Aktualni.LoadFromStream(HTTP.Document);

      if build < strtoint(Aktualni.values[Aktualni.Names[0]]) then unit4.newbuild := true;

      for dbct := 0 to 27 do begin   // do pole nacte pocet cheatu na netu a pocet akt. souboru
        CountOfAll[dbct+1,0] := strtoint(Midstr(Aktualni.Values[Aktualni.names[dbct+1]],1,5)); //pocet polozek na netu
      end;

           // zjisti, ktere databaze nejsou aktualni
      if (fileexists(DirectoryListBox1.directory + '\data\pcch.rc6') and (CountOfAll[1,0] > PCCh.SList.Count)) then begin
         Aktualizovat[1] := true;
         FormAktual.RichEdit1.Lines.add(PCCh.nazev + ' ('+ inttostr(PCCh.SList.Count-1) + '/' + inttostr(CountOfAll[1,0]) + ')');
      end else begin
         Aktualizovat[1] := false;
      end;

      if (fileexists(DirectoryListBox1.directory + '\data\pcn.rc6') and (CountOfAll[2,0] > PCN.SList.Count)) then begin
         Aktualizovat[2] := true;
         FormAktual.RichEdit1.Lines.add(PCN.nazev + ' ('+ inttostr(PCN.SList.Count-1) + '/' + inttostr(CountOfAll[2,0]) + ')');
      end else Aktualizovat[2] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\psxch.rc6') and (CountOfAll[3,0] > PSXCh.SList.Count)) then begin
         Aktualizovat[3] := true;
         FormAktual.RichEdit1.Lines.add(PSXCh.nazev + ' ('+ inttostr(PSXCh.SList.Count-1) + '/' + inttostr(CountOfAll[3,0]) + ')');
      end else Aktualizovat[3] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\ps2ch.rc6') and (CountOfAll[4,0] > PS2Ch.SList.Count)) then begin
         Aktualizovat[4] := true;
         FormAktual.RichEdit1.Lines.add(PS2Ch.nazev + ' ('+ inttostr(PS2Ch.SList.Count-1) + '/' + inttostr(CountOfAll[4,0]) + ')');
      end else Aktualizovat[4] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\gcch.rc6') and (CountOfAll[5,0] > GCCh.SList.Count)) then begin
         Aktualizovat[5] := true;
         FormAktual.RichEdit1.Lines.add(GCCh.nazev + ' ('+ inttostr(GCCh.SList.Count-1) + '/' + inttostr(CountOfAll[5,0]) + ')');
      end else Aktualizovat[5] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\xbch.rc6') and (CountOfAll[6,0] > XBCh.SList.Count)) then begin
         Aktualizovat[6] := true;
         FormAktual.RichEdit1.Lines.add(XBCh.nazev + ' ('+ inttostr(XBCh.SList.Count-1) + '/' + inttostr(CountOfAll[6,0]) + ')');
      end else Aktualizovat[6] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\n64ch.rc6') and (CountOfAll[7,0] > N64Ch.SList.Count)) then begin
         Aktualizovat[7] := true;
         FormAktual.RichEdit1.Lines.add(N64Ch.nazev + ' ('+ inttostr(N64Ch.SList.Count-1) + '/' + inttostr(CountOfAll[7,0]) + ')');
      end else Aktualizovat[7] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\sgdch.rc6') and (CountOfAll[8,0] > SegaDCCh.SList.Count)) then begin
         Aktualizovat[8] := true;
         FormAktual.RichEdit1.Lines.add(SegaDCCh.nazev + ' ('+ inttostr(SegaDCCh.SList.Count-1) + '/' + inttostr(CountOfAll[8,0]) + ')');
      end else Aktualizovat[8] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\gbcch.rc6') and (CountOfAll[9,0] > GBoyCh.SList.Count)) then begin
         Aktualizovat[9] := true;
         FormAktual.RichEdit1.Lines.add(GBoyCh.nazev + ' ('+ inttostr(GBoyCh.SList.Count-1) + '/' + inttostr(CountOfAll[9,0]) + ')');
      end else Aktualizovat[9] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\addb1.rc6') and (CountOfAll[10,0] > AdDB1.SList.Count)) then begin
         Aktualizovat[10] := true;
         FormAktual.RichEdit1.Lines.add(AdDB1.nazev + ' ('+ inttostr(AdDB1.SList.Count-1) + '/' + inttostr(CountOfAll[10,0]) + ')');
      end else Aktualizovat[10] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\addb2.rc6') and (CountOfAll[11,0] > AdDB2.SList.Count)) then begin
         Aktualizovat[11] := true;
         FormAktual.RichEdit1.Lines.add(AdDB2.nazev + ' ('+ inttostr(AdDB2.SList.Count-1) + '/' + inttostr(CountOfAll[11,0]) + ')');
      end else Aktualizovat[11] := false;
      
      if (fileexists(DirectoryListBox1.directory + '\data\jok.rc6') and (CountOfAll[12,0] > Jokes.SList.Count)) then begin
         Aktualizovat[12] := true;
         FormAktual.RichEdit1.Lines.add(Jokes.nazev + ' ('+ inttostr(Jokes.SList.Count-1) + '/' + inttostr(CountOfAll[12,0]) + ')');
      end else Aktualizovat[12] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\egg.rc6') and (CountOfAll[13,0] > Eggs.SList.Count)) then begin
         Aktualizovat[13] := true;
         FormAktual.RichEdit1.Lines.add(Eggs.nazev + ' ('+ inttostr(Eggs.SList.Count-1) + '/' + inttostr(CountOfAll[13,0]) + ')');
      end else Aktualizovat[13] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\zxsp.rc6') and (CountOfAll[14,0] > ZXSPk.SList.Count)) then begin
         Aktualizovat[14] := true;
         FormAktual.RichEdit1.Lines.add(ZXSPk.nazev + ' ('+ inttostr(ZXSPk.SList.Count-1) + '/' + inttostr(CountOfAll[14,0]) + ')');
      end else Aktualizovat[14] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\siem.rc6') and (CountOfAll[15,0] > SiemMel.SList.Count)) then begin
         Aktualizovat[15] := true;
         FormAktual.RichEdit1.Lines.add(SiemMel.nazev + ' ('+ inttostr(SiemMel.SList.Count-1) + '/' + inttostr(CountOfAll[15,0]) + ')');
      end else Aktualizovat[15] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\nokm.rc6') and (CountOfAll[16,0] > NokiaMel.SList.Count)) then begin
         Aktualizovat[16] := true;
         FormAktual.RichEdit1.Lines.add(NokiaMel.nazev + ' ('+ inttostr(NokiaMel.SList.Count-1) + '/' + inttostr(CountOfAll[16,0]) + ')');
      end else Aktualizovat[16] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\alcm.rc6') and (CountOfAll[17,0] > AlcMel.SList.Count)) then begin
         Aktualizovat[17] := true;
         FormAktual.RichEdit1.Lines.add(AlcMel.nazev + ' ('+ inttostr(AlcMel.SList.Count-1) + '/' + inttostr(CountOfAll[17,0]) + ')');
      end else Aktualizovat[17] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\ericm.rc6') and (CountOfAll[18,0] > EricMel.SList.Count)) then begin
         Aktualizovat[18] := true;
         FormAktual.RichEdit1.Lines.add(EricMel.nazev + ' ('+ inttostr(EricMel.SList.Count-1) + '/' + inttostr(CountOfAll[18,0]) + ')');
      end else Aktualizovat[18] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\sonym.rc6') and (CountOfAll[19,0] > SonyMel.SList.Count)) then begin
         Aktualizovat[19] := true;
         FormAktual.RichEdit1.Lines.add(SonyMel.nazev + ' ('+ inttostr(SonyMel.SList.Count-1) + '/' + inttostr(CountOfAll[19,0]) + ')');
      end else Aktualizovat[19] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\panm.rc6') and (CountOfAll[20,0] > PanMel.SList.Count)) then begin
         Aktualizovat[20] := true;
         FormAktual.RichEdit1.Lines.add(PanMel.nazev + ' ('+ inttostr(PanMel.SList.Count-1) + '/' + inttostr(CountOfAll[20,0]) + ')');
      end else Aktualizovat[20] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\motm.rc6') and (CountOfAll[21,0] > MotMel.SList.Count)) then begin
         Aktualizovat[21] := true;
         FormAktual.RichEdit1.Lines.add(MotMel.nazev + ' ('+ inttostr(MotMel.SList.Count-1) + '/' + inttostr(CountOfAll[21,0]) + ')');
      end else Aktualizovat[21] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\philm.rc6') and (CountOfAll[22,0] > PhilMel.SList.Count)) then begin
         Aktualizovat[22] := true;
         FormAktual.RichEdit1.Lines.add(PhilMel.nazev + ' ('+ inttostr(PhilMel.SList.Count-1) + '/' + inttostr(CountOfAll[22,0]) + ')');
      end else Aktualizovat[22] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\bosm.rc6') and (CountOfAll[23,0] > BoschMel.SList.Count)) then begin
         Aktualizovat[23] := true;
         FormAktual.RichEdit1.Lines.add(BoschMel.nazev + ' ('+ inttostr(BoschMel.SList.Count-1) + '/' + inttostr(CountOfAll[23,0]) + ')');
      end else Aktualizovat[23] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\samsm.rc6') and (CountOfAll[24,0] > SamsMel.SList.Count)) then begin
         Aktualizovat[24] := true;
         FormAktual.RichEdit1.Lines.add(SamsMel.nazev + ' ('+ inttostr(SamsMel.SList.Count-1) + '/' + inttostr(CountOfAll[24,0]) + ')');
      end else Aktualizovat[24] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\srcz.rc6') and (CountOfAll[25,0] > SoftRec.SList.Count)) then begin
         Aktualizovat[25] := true;
         FormAktual.RichEdit1.Lines.add(SoftRec.nazev + ' ('+ inttostr(SoftRec.SList.Count-1) + '/' + inttostr(CountOfAll[25,0]) + ')');
      end else Aktualizovat[25] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\grcz.rc6') and (CountOfAll[26,0] > GamesRec.SList.Count)) then begin
         Aktualizovat[26] := true;
         FormAktual.RichEdit1.Lines.add(GamesRec.nazev + ' ('+ inttostr(GamesRec.SList.Count-1) + '/' + inttostr(CountOfAll[26,0]) + ')');
      end else Aktualizovat[26] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\citaty.rc6') and (CountOfAll[27,0] > Citaty.SList.Count)) then begin
         Aktualizovat[27] := true;
         FormAktual.RichEdit1.Lines.add(Citaty.nazev + ' ('+ inttostr(Citaty.SList.Count-1) + '/' + inttostr(CountOfAll[27,0]) + ')');
      end else Aktualizovat[27] := false;

      if (fileexists(DirectoryListBox1.directory + '\data\gbach.rc6') and (CountOfAll[28,0] > GBoyACh.SList.Count)) then begin
         Aktualizovat[28] := true;
         FormAktual.RichEdit1.Lines.add(GBoyACh.nazev + ' ('+ inttostr(GBoyACh.SList.Count-1) + '/' + inttostr(CountOfAll[28,0]) + ')');
      end else Aktualizovat[28] := false;


      //FormAktual.RichEdit1.Lines.Clear;
      Formaktual.ComboBox1.Items.Clear;
      Formaktual.ComboBox1.Items.Add('é·dnou');
      Formaktual.ComboBox1.Items.Add('Vöechny');
      Formaktual.ComboBox1.Itemindex := 0;
      budeakt := false;


      for dbct := 1 to 28 do begin
         if Aktualizovat[dbct] = true then begin
            budeakt := true;
            Formaktual.ComboBox1.Items.Add(GetDBName(dbct));

            case dbct of
               1: afname := 'pcch';
               2: afname := 'pcn';
               3: afname := 'psxch';
               4: afname := 'ps2ch';
               5: afname := 'gcch';
               6: afname := 'xbch';
               7: afname := 'n64ch';
               8: afname := 'sgdch';
               9: afname := 'gbcch';
               10: afname := 'addb1';
               11: afname := 'addb2';
               12: afname := 'jok';
               13: afname := 'egg';
               14: afname := 'zxsp';
               15: afname := 'siem';
               16: afname := 'nokm';
               17: afname := 'alcm';
               18: afname := 'ericm';
               19: afname := 'sonym';
               20: afname := 'panm';
               21: afname := 'motm';
               22: afname := 'philm';
               23: afname := 'bosm';
               24: afname := 'samsm';
               25: afname := 'srcz';
               26: afname := 'grcz';
               27: afname := 'citaty';
               28: afname := 'gbach';
           end;

            // doplni do radku pocet polozek na  internetu
            {if jazyk = 'svk' then begin
               TempVal := TempVal + '(' + inttostr(CountOfAll[dbct,0])+ ' poloûiek)';
            end else begin
               TempVal := TempVal + '(' + inttostr(CountOfAll[dbct,0])+ ' poloûek)';
            end;}

          //formaktual.RichEdit1.Lines.Add(TempVal);

         end;
      end;

      if budeakt = true then begin
         Formaktual.Show;
      end else begin
         if jazyk = 'svk' then begin
            Application.MessageBox('Vöechny datab·ze jsou kompletnÌ','OK',MB_OK + MB_iconAsterisk);
         end else begin
            Application.MessageBox('Vöechny datab·ze jsou kompletnÌ','OK',MB_OK + MB_iconAsterisk);
         end;
      end;

   end else begin
      if jazyk = 'svk' then begin
         Application.MessageBox('Nie je moûnÈ stiahnuù inform·cie o updatoch (problÈm s pripojenÌm k internetu)','Chyba...',MB_OK + MB_iconError);
      end else begin
         Application.MessageBox('NenÌ moûnÈ st·hnout informace o updatech (problÈm s p¯ipojenÌm k internetu)','Chyba...',MB_OK + MB_iconError);
      end;
   end;

   HTTP.Free;

end;

procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   edit1.Text := inttostr(Key);
end;

procedure TForm1.AktualizujDB();
var
   delkanazvu, nazevdb, delkaautora, datum, delkapoznamky, delkakecu, delkahlavky, ObsAktCt, delsoubor, DelOldAktCt : string;
   hlavka : TStringList;
   HlavkaStream : TMemoryStream;
   bufferadr, bufferfile : array [0..255] of char;
   //pocetaktualizaci : byte;
   pocetpolozek : integer;

begin
   SetLength(delkahlavky,6);
   SetLength(delkanazvu,2);
   SetLength(ObsAktCt,2);
   SetLength(DelOldAktCt,2);
   SetLength(delkaautora,2);
   SetLength(delkapoznamky,2);
   SetLength(delkakecu,5);

      OpenDialog1.Filter := 'Radioactive Cheater datab·ze (*.rc6)|*.rc6';
      Opendialog1.DefaultExt := 'rc6';
      if opendialog1.Execute then begin
         pocetpolozek := 0;

         // pocet polozek, ktere ma stara databaze
         if ExtractFileName(OpenDialog1.FileName) = 'pcch.rc6' then pocetpolozek := PCCh.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'pcn.rc6' then pocetpolozek := PCN.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'psxch.rc6' then pocetpolozek := PSXCh.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'ps2ch.rc6' then pocetpolozek := PS2Ch.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'gcch.rc6' then pocetpolozek := GCCh.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'xbch.rc6' then pocetpolozek := XBCh.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'n64ch.rc6' then pocetpolozek := N64Ch.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'sgdch.rc6' then pocetpolozek := SegaDCCh.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'gbcch.rc6' then pocetpolozek := GBoyCh.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'addb1.rc6' then pocetpolozek := AdDB1.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'addb2.rc6' then pocetpolozek := AdDB2.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'jok.rc6' then pocetpolozek := Jokes.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'egg.rc6' then pocetpolozek := Eggs.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'zxsp.rc6' then pocetpolozek := ZXSPk.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'siem.rc6' then pocetpolozek := SiemMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'nokm.rc6' then pocetpolozek := NokiaMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'alcm.rc6' then pocetpolozek := AlcMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'ericm.rc6' then pocetpolozek := EricMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'sonym.rc6' then pocetpolozek := SonyMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'panm.rc6' then pocetpolozek := PanMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'motm.rc6' then pocetpolozek := MotMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'philm.rc6' then pocetpolozek := PhilMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'bosm.rc6' then pocetpolozek := BoschMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'samsm.rc6' then pocetpolozek := SamsMel.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'srcz.rc6' then pocetpolozek := SoftRec.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'grcz.rc6' then pocetpolozek := GamesRec.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'citaty.rc6' then pocetpolozek := Citaty.SList.Count-1;
         if ExtractFileName(OpenDialog1.FileName) = 'gbach.rc6' then pocetpolozek := GBoyACh.SList.Count-1;

         pitva(opendialog1.FileName,false);

         UpData.seek(1,soFromBeginning);
         UpData.Read(DelOldAktCt[1],2);
         //  UpData.seek(3,soFromBeginning);
         UpData.Read(delkanazvu[1],2);
         SetLength(nazevdb,strtoint(delkanazvu));
         UpData.Read(nazevdb[1],strtoint(delkanazvu));

         UpData.Read(delkaautora[1],2);
         UpData.Seek(strtoint(delkaautora),soFromCurrent);
         //datum
         UpData.Seek(10,soFromCurrent);
         UpData.Read(delkapoznamky[1],2);
         UpData.Seek(strtoint(delkapoznamky),soFromCurrent);

         UpData.Read(delkakecu[1],5);
         UpData.Seek(strtoint(delkakecu),soFromCurrent);

         UpData.Read(delkahlavky[1],6);

         HlavkaStream := TMemoryStream.Create;
         HlavkaStream.Seek(0,soFromBeginning);

         //UpData.Seek(17 + strtoint(delkanazvu),soFromBeginning);

         HlavkaStream.CopyFrom(UpData,strtoint(delkahlavky)-strtoint(delkanazvu)-strtoint(delkaautora)-strtoint(delkapoznamky)-strtoint(delkakecu)-30);
         HlavkaStream.Seek(0,soFromBeginning);
         hlavka := TStringList.Create;
         hlavka.LoadFromStream(HlavkaStream);
         HlavkaStream.Free;

         hlavka.Delete(0);
         hlavka.Delete(1);

         Chdata.seek(0,soFromBeginning);


         if fileexists(DirectoryListBox1.Directory + '\data\' + ExtractFileName(opendialog1.FileName)) then begin
            // uz tam jednou je, pak zkontroluje pocet polozek a podle toho hodi hlasku:
            if hlavka.Count > pocetpolozek then begin
               //stavajici databaze je starsi nez otevirana

               if jazyk = 'svk' then begin
                  strpcopy(bufferfile,('Tato datab·za (' + nazevdb + ') obsahuje ' + inttostr(hlavka.count) +' poloûiek, '+ Chr(13) +'vaöa aktu·lna datab·za obsahuje '+ inttostr(pocetpolozek) +' poloûiek. Prajete si ju nahradiù ?'));
               end else begin
                  strpcopy(bufferfile,('T·to datab·ze (' + nazevdb + ') obsahuje ' + inttostr(hlavka.count) +' poloûek, '+ Chr(13) +'vaöe st·vajÌcÌ datab·ze obsahuje '+ inttostr(pocetpolozek) +' poloûek. P¯ejete si ji nahradit ?'));
               end;

               if Application.MessageBox(bufferfile,'Ot·zka',MB_YesNo + MB_IconQuestion) = 6 then begin
                  strpcopy(bufferadr, opendialog1.FileName);
                  strpcopy(bufferfile, directorylistbox1.directory + '\data\'+ExtractFileName(opendialog1.FileName));
                  if CopyFile(bufferadr, bufferfile, false) then begin

                     if jazyk = 'svk' then begin
                        Application.MessageBox('Datab·za bola ˙speöne nahran·','OK',MB_OK + MB_IconAsterisk);
                     end else begin
                        Application.MessageBox('Datab·ze byla ˙spÏönÏ nahr·na','OK',MB_OK + MB_IconAsterisk);
                     end;

                  end;
                  Application.processmessages;
               end;
            end else begin
               //stavajici databaze je novejsi nez otevirana:
               if jazyk = 'svk' then begin
                  strpcopy(bufferfile,('T·to datab·za (' + nazevdb + ') nieje novöia ako vaöa aktu·lna datab·za, preto nebude nahran·.'));
                    Application.MessageBox(bufferfile,'Toto nepÙjde...',MB_OK + MB_IconAsterisk);
               end else begin
                  strpcopy(bufferfile,('Tato datab·ze (' + nazevdb + ') nenÌ novÏjöÌ neû vaöe st·vajÌcÌ datab·ze, proto nebude nahr·na.'));
                  Application.MessageBox(bufferfile,'Tohle nep˘jde...',MB_OK + MB_IconAsterisk);
               end;

            end;

         end else begin
            //jeste tam neni

            //konverze typu PChar na string
            if jazyk =  'svk' then begin
               strpcopy(bufferfile,('Prajete si nahraù nov˙ datab·zu - ' + nazevdb + ' ?'));
            end else begin
               strpcopy(bufferfile,('P¯ejete si nahr·t novou datab·zi - ' + nazevdb + ' ?'));
            end;

            if Application.MessageBox(bufferfile,'Ot·zka',MB_YESNO + MB_ICONQUESTION) = 6 then begin  //odpoved ANO

               strpcopy(bufferadr, opendialog1.FileName);
               strpcopy(bufferfile, directorylistbox1.directory + '\data\'+ExtractFileName(opendialog1.FileName));
               if CopyFile(bufferadr, bufferfile, true) then begin

                  if jazyk = 'svk' then begin
                     Application.MessageBox('Datab·za bola ˙speöne nahraden·','OK',MB_OK + MB_IconAsterisk);
                  end else begin
                     Application.MessageBox('Datab·ze byla ˙spÏönÏ nahr·na','OK',MB_OK + MB_IconAsterisk);
                  end;

               end;
               Application.processmessages;
            end;
         end;

      end;

      NacistMenuData;   //aktualizuje udaje v menu a stringlistech

      NacistDBData(Registr.ReadInteger('defaultdb'));

end;



procedure TForm1.Aktualizace1Click(Sender: TObject);
begin
   AktualizujDB;
end;

procedure TForm1.datab1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
   width:=250;
   Height:=25;
end;

procedure TForm1.datab1DrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
var
   text,               // text na poloûce
   napoveda:string;    // n·povÏda poloûky
   zkratka:TShortCut;  // kl·vesov· zkratka
begin
with Sender as TMenuItem do  // zjistÌme info o poloûce
  begin                       // kterou jdeme kreslit
   Text:=caption;
   Zkratka:=ShortCut;
//   Image:=ImageIndex;
   Napoveda:=Hint;
  end;


  with ACanvas do
  begin
   InflateRect(Arect,1,1); // zvÏtöÌme rect o 1 na kaûdÈ stranÏ
   Pen.Style:=psSolid;     // vymaûeme to
   Pen.Width:=1;
   Pen.Color:=nevpolozka;
   ACanvas.Brush.Color:=nevpolozka;
   Rectangle(ARect);
   InflateRect(ARect,-1,-1); // a zase ho zvÏtöÌme nazp·tek
//   ARect.Left:=20;           // udÏl·me mÌsto pro lev˝ pruh...

   // nejprve nakreslÌme pozadÌ,
   // abychom poznali jestli je vybran· ...
   if Selected then
    begin
     Pen.Style:=psSolid;
     Pen.Width:=1;
     Pen.Color:=okrvybpolozka;
     ACanvas.Brush.Color:=vybpolozka;
     Rectangle(ARect);
    end
   else
    begin
     Pen.Style:=psSolid;
     Pen.Width:=1;
     Pen.Color:=nevpolozka;
     ACanvas.Brush.Color:=nevpolozka;
     Rectangle(ARect);
    end;
//  end;

Font.Name:='Tahoma';

   Delete(text,Pos('&',text),1); // odstranit & z textu

   // podle toho, jestli je poloûka vybran·
   // nakreslÌme buÔ jen samotnou, nebo i s hintem
   if selected then
    begin
     Font.Size:=8;
     Font.Style:=[fsBold];
     Font.Color:=vybpismo;
     TextOut(ARect.Left+10,ARect.Top+1,text);
//     textout(
     Font.Size:=7;
     Font.Style:=[];
     TextOut(ARect.Left+15,ARect.Top+13,napoveda);
    end
   else if selected = false then
    begin
     Font.Color:=nevpismo;
     Font.Size:=8;
     Font.Style:=[];
     TextOut(ARect.Left+10,ARect.Top+1,text);
    end;

   // SHORTCUT  - kl·vesov· zkratka
   Font.Size:=8;
   Font.Style:=[];
   TextOut(250-TextWidth(ShortCutToText(zkratka)),
   ARect.Top+3,ShortCutToText(zkratka));

//   end;

end;


end;

procedure TForm1.Button1Click(Sender: TObject);
//var n:byte;
begin

{      memo1.lines.add(inttostr(form1.Color));

      memo1.lines.add(inttostr(form1.edit1.color));
      memo1.lines.add(inttostr(form1.edit1.font.color));

      memo1.lines.add(inttostr(form1.ListBox1.color));
      memo1.lines.add(inttostr(form1.ListBox1.font.color));

      memo1.lines.add(inttostr(form1.ListBox2.color));
      memo1.lines.add(inttostr(form1.ListBox2.font.color));

      memo1.lines.add(inttostr(form1.richedit1.color));
      memo1.lines.add(inttostr(form1.richedit1.font.color));

      memo1.lines.add(inttostr(form1.label1.font.color));

      memo1.lines.add(inttostr(form1.label2.color));
      memo1.lines.add(inttostr(form1.label2.font.color));

      ///menu
      label1.color := RGB(0,0,75);
      memo1.lines.add(inttostr(label1.color));
      label1.color := RGB(0,0,115);
      memo1.lines.add(inttostr(label1.color));
      label1.color := RGB(0,0,155);
      memo1.lines.add(inttostr(label1.color));
      label1.color := clSilver;
      memo1.lines.add(inttostr(label1.color));
      label1.color := clWhite;
      memo1.lines.add(inttostr(label1.color));

      memo1.lines.add('textura');
      memo1.lines.add('levej');
      memo1.lines.add('bottom');
      memo1.lines.add('podcudl');
      memo1.lines.add('podlabel');


      for n := 1 to 14 do begin

            memo1.lines.add('');

      end;

      memo1.lines.savetofile ('E:\default.rcs');

         }
end;

procedure TForm1.idatab1Click(Sender: TObject);
begin
   OtevritDBinfo((Sender as TMenuItem).tag);
end;

procedure TForm1.OtevritDBinfo(baze:byte);
begin
   case baze of

      1:
      begin
         FormDBinfo.edit1.Text := PCCh.nazev;
         FormDBinfo.edit2.text := PCCh.autor;
         FormDBinfo.edit4.text := PCCh.datum;
         FormDBinfo.edit3.text := PCCh.note;
         FormDBinfo.Memo1.lines := PCCh.kecy;
      end;

      2:
      begin
         FormDBinfo.edit1.Text := PCN.nazev;
         FormDBinfo.edit2.text := PCN.autor;
         FormDBinfo.edit4.text := PCN.datum;
         FormDBinfo.edit3.text := PCN.note;
         FormDBinfo.Memo1.lines := PCN.kecy;
      end;

      3:
      begin
         FormDBinfo.edit1.Text := PSXCh.nazev;
         FormDBinfo.edit2.text := PSXCh.autor;
         FormDBinfo.edit4.text := PSXCh.datum;
         FormDBinfo.edit3.text := PSXCh.note;
         FormDBinfo.Memo1.lines := PSXCh.kecy;
      end;

      4:
      begin
         FormDBinfo.edit1.Text := PS2Ch.nazev;
         FormDBinfo.edit2.text := PS2Ch.autor;
         FormDBinfo.edit4.text := PS2Ch.datum;
         FormDBinfo.edit3.text := PS2Ch.note;
         FormDBinfo.Memo1.lines := PS2Ch.kecy;
      end;

      5:
      begin
         FormDBinfo.edit1.Text := GCCh.nazev;
         FormDBinfo.edit2.text := GCCh.autor;
         FormDBinfo.edit4.text := GCCh.datum;
         FormDBinfo.edit3.text := GCCh.note;
         FormDBinfo.Memo1.lines := GCCh.kecy;
      end;

      6:
      begin
         FormDBinfo.edit1.Text := XBCh.nazev;
         FormDBinfo.edit2.text := XBCh.autor;
         FormDBinfo.edit4.text := XBCh.datum;
         FormDBinfo.edit3.text := XBCh.note;
         FormDBinfo.Memo1.lines := XBCh.kecy;
      end;

      7:
      begin
         FormDBinfo.edit1.Text := N64Ch.nazev;
         FormDBinfo.edit2.text := N64Ch.autor;
         FormDBinfo.edit4.text := N64Ch.datum;
         FormDBinfo.edit3.text := N64Ch.note;
         FormDBinfo.Memo1.lines := N64Ch.kecy;
      end;

      8:
      begin
         FormDBinfo.edit1.Text := SegaDCCh.nazev;
         FormDBinfo.edit2.text := SegaDCCh.autor;
         FormDBinfo.edit4.text := SegaDCCh.datum;
         FormDBinfo.edit3.text := SegaDCCh.note;
         FormDBinfo.Memo1.lines := SegaDCCh.kecy;
      end;

      9:
      begin
         FormDBinfo.edit1.Text := GBoyCh.nazev;
         FormDBinfo.edit2.text := GBoyCh.autor;
         FormDBinfo.edit4.text := GBoyCh.datum;
         FormDBinfo.edit3.text := GBoyCh.note;
         FormDBinfo.Memo1.lines := GBoyCh.kecy;
      end;

      10:
      begin
         FormDBinfo.edit1.Text := AdDB1.nazev;
         FormDBinfo.edit2.text := AdDB1.autor;
         FormDBinfo.edit4.text := AdDB1.datum;
         FormDBinfo.edit3.text := AdDB1.note;
         FormDBinfo.Memo1.lines := AdDB1.kecy;
      end;

      11:
      begin
         FormDBinfo.edit1.Text := AdDB2.nazev;
         FormDBinfo.edit2.text := AdDB2.autor;
         FormDBinfo.edit4.text := AdDB2.datum;
         FormDBinfo.edit3.text := AdDB2.note;
         FormDBinfo.Memo1.lines := AdDB2.kecy;
      end;

      12:
      begin
         FormDBinfo.edit1.Text := Jokes.nazev;
         FormDBinfo.edit2.text := Jokes.autor;
         FormDBinfo.edit4.text := Jokes.datum;
         FormDBinfo.edit3.text := Jokes.note;
         FormDBinfo.Memo1.lines := Jokes.kecy;
      end;

      13:
      begin
         FormDBinfo.edit1.Text := Eggs.nazev;
         FormDBinfo.edit2.text := Eggs.autor;
         FormDBinfo.edit4.text := Eggs.datum;
         FormDBinfo.edit3.text := Eggs.note;
         FormDBinfo.Memo1.lines := Eggs.kecy;
      end;

      14:
      begin
         FormDBinfo.edit1.Text := ZXSPk.nazev;
         FormDBinfo.edit2.text := ZXSPk.autor;
         FormDBinfo.edit4.text := ZXSPk.datum;
         FormDBinfo.edit3.text := ZXSPk.note;
         FormDBinfo.Memo1.lines := ZXSPk.kecy;
      end;

      15:
      begin
         FormDBinfo.edit1.Text := SiemMel.nazev;
         FormDBinfo.edit2.text := SiemMel.autor;
         FormDBinfo.edit4.text := SiemMel.datum;
         FormDBinfo.edit3.text := SiemMel.note;
         FormDBinfo.Memo1.lines := SiemMel.kecy;
      end;

      16:
      begin
         FormDBinfo.edit1.Text := NokiaMel.nazev;
         FormDBinfo.edit2.text := NokiaMel.autor;
         FormDBinfo.edit4.text := NokiaMel.datum;
         FormDBinfo.edit3.text := NokiaMel.note;
         FormDBinfo.Memo1.lines := NokiaMel.kecy;
      end;

      17:
      begin
         FormDBinfo.edit1.Text := AlcMel.nazev;
         FormDBinfo.edit2.text := AlcMel.autor;
         FormDBinfo.edit4.text := AlcMel.datum;
         FormDBinfo.edit3.text := AlcMel.note;
         FormDBinfo.Memo1.lines := AlcMel.kecy;
      end;

      18:
      begin
         FormDBinfo.edit1.Text := EricMel.nazev;
         FormDBinfo.edit2.text := EricMel.autor;
         FormDBinfo.edit4.text := EricMel.datum;
         FormDBinfo.edit3.text := EricMel.note;
         FormDBinfo.Memo1.lines := EricMel.kecy;
      end;

      19:
      begin
         FormDBinfo.edit1.Text := SonyMel.nazev;
         FormDBinfo.edit2.text := SonyMel.autor;
         FormDBinfo.edit4.text := SonyMel.datum;
         FormDBinfo.edit3.text := SonyMel.note;
         FormDBinfo.Memo1.lines := SonyMel.kecy;
      end;

      20:
      begin
         FormDBinfo.edit1.Text := PanMel.nazev;
         FormDBinfo.edit2.text := PanMel.autor;
         FormDBinfo.edit4.text := PanMel.datum;
         FormDBinfo.edit3.text := PanMel.note;
         FormDBinfo.Memo1.lines := PanMel.kecy;
      end;

      21:
      begin
         FormDBinfo.edit1.Text := MotMel.nazev;
         FormDBinfo.edit2.text := MotMel.autor;
         FormDBinfo.edit4.text := MotMel.datum;
         FormDBinfo.edit3.text := MotMel.note;
         FormDBinfo.Memo1.lines := MotMel.kecy;
      end;

      22:
      begin
         FormDBinfo.edit1.Text := PhilMel.nazev;
         FormDBinfo.edit2.text := PhilMel.autor;
         FormDBinfo.edit4.text := PhilMel.datum;
         FormDBinfo.edit3.text := PhilMel.note;
         FormDBinfo.Memo1.lines := PhilMel.kecy;
      end;

      23:
      begin
         FormDBinfo.edit1.Text := BoschMel.nazev;
         FormDBinfo.edit2.text := BoschMel.autor;
         FormDBinfo.edit4.text := BoschMel.datum;
         FormDBinfo.edit3.text := BoschMel.note;
         FormDBinfo.Memo1.lines := BoschMel.kecy;
      end;

      24:
      begin
         FormDBinfo.edit1.Text := SamsMel.nazev;
         FormDBinfo.edit2.text := SamsMel.autor;
         FormDBinfo.edit4.text := SamsMel.datum;
         FormDBinfo.edit3.text := SamsMel.note;
         FormDBinfo.Memo1.lines := SamsMel.kecy;
      end;

      25:
      begin
         FormDBinfo.edit1.Text := SoftRec.nazev;
         FormDBinfo.edit2.text := SoftRec.autor;
         FormDBinfo.edit4.text := SoftRec.datum;
         FormDBinfo.edit3.text := SoftRec.note;
         FormDBinfo.Memo1.lines := SoftRec.kecy;
      end;

      26:
      begin
         FormDBinfo.edit1.Text := GamesRec.nazev;
         FormDBinfo.edit2.text := GamesRec.autor;
         FormDBinfo.edit4.text := GamesRec.datum;
         FormDBinfo.edit3.text := GamesRec.note;
         FormDBinfo.Memo1.lines := GamesRec.kecy;
      end;

      27:
      begin
         FormDBinfo.edit1.Text := Citaty.nazev;
         FormDBinfo.edit2.text := Citaty.autor;
         FormDBinfo.edit4.text := Citaty.datum;
         FormDBinfo.edit3.text := Citaty.note;
         FormDBinfo.Memo1.lines := Citaty.kecy;
      end;

      28:
      begin
         FormDBinfo.edit1.Text := GBoyACh.nazev;
         FormDBinfo.edit2.text := GBoyACh.autor;
         FormDBinfo.edit4.text := GBoyACh.datum;
         FormDBinfo.edit3.text := GBoyACh.note;
         FormDBinfo.Memo1.lines := GBoyACh.kecy;
      end;



   end;

   FormDBinfo.show
end;



procedure TForm1.Spoutnsparametrem2Click(Sender: TObject);
begin
    Application.CreateForm(TFormParametr, FormParametr);
    FormParametr.showmodal;
end;

procedure TForm1.Oficilnweb1Click(Sender: TObject);
begin
    ShellExecute(0,'open',Pchar('www.radioactive.cz'),nil,nil,Sw_ShowNormal);
end;

procedure TForm1.Onlineverze1Click(Sender: TObject);
begin
    ShellExecute(0,'open',Pchar('http://cheaty.radioactive.cz'),nil,nil,Sw_ShowNormal);
end;

procedure TForm1.Frum1Click(Sender: TObject);
begin
    ShellExecute(0,'open',Pchar('www.radioactive.cz/forum.php'),nil,nil,Sw_ShowNormal);
end;

procedure TForm1.GamePlanetcz1Click(Sender: TObject);
begin
   Application.CreateForm(TFormGamePlanet, FormGamePlanet);
   FormGamePlanet.Showmodal;
end;

end.

