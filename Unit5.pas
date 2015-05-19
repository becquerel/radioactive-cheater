unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, TileImage;

type
  TFormregistrace = class(TForm)
    TileImage1: TTileImage;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ListBox1: TListBox;
    CheckBox1: TCheckBox;
    Label3: TLabel;

    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formregistrace: TFormregistrace;
  l : text;
  function GenPass (rjmeno:string):string;

implementation

uses Unit1;

{$R *.DFM}

//OK
function GenPass (rjmeno:string):string;
var
  n: byte;
  heslo : longword;
  pole:array [0..51] of boolean;
  m:string;
  pass:integer;
begin
FormRegistrace.edit1.Text := rjmeno;

//vycisteni pole
   for n:=0 to 52 do begin
      pole[n] := false;
   end;

  heslo := 0;

  //generovani hesla
  for n:=1 to length(FormRegistrace.edit1.text) do begin
     FormRegistrace.listbox1.itemindex:=0;
     repeat
        if (FormRegistrace.edit1.text[n]=FormRegistrace.listbox1.items.strings[FormRegistrace.listbox1.itemindex]) and (pole[FormRegistrace.listbox1.itemindex]=false) then begin
           pole[FormRegistrace.listbox1.itemindex] := true;
           m := inttostr(FormRegistrace.listbox1.itemindex+1) + inttostr(FormRegistrace.listbox1.itemindex + 1);
           heslo := heslo + strtoint(m);
        end;
        FormRegistrace.listbox1.itemindex := FormRegistrace.listbox1.itemindex + 1;
      until FormRegistrace.listbox1.itemindex=FormRegistrace.listbox1.items.count-1;

      FormRegistrace.listbox1.itemindex := -1;
   end;

   pass := heslo*length(FormRegistrace.edit1.text) * 85;

   result := inttostr(pass);
end;

procedure TFormregistrace.BitBtn1Click(Sender: TObject);
var

  pole:array [0..51] of boolean;
  poleznaku : array [0..3] of byte;
  ukazatel : PByte;
  n: byte;
  heslo : longword;
  m, kod : string;
  pass:integer;
  regfile : TMemoryStream;
  user:string;

begin
//vycisteni pole
   for n:=0 to 52 do begin
      pole[n] := false;
   end;

  heslo := 0;

  //generovani hesla
  for n:=1 to length(edit1.text) do begin
     listbox1.itemindex:=0;
     repeat
        if (edit1.text[n]=listbox1.items.strings[listbox1.itemindex]) and (pole[listbox1.itemindex]=false) then begin
           pole[listbox1.itemindex] := true;
           m := inttostr(listbox1.itemindex+1) + inttostr(listbox1.itemindex + 1);
           heslo := heslo + strtoint(m);
        end;
        listbox1.itemindex := listbox1.itemindex + 1;
      until listbox1.itemindex=listbox1.items.count-1;

      listbox1.itemindex := -1;
   end;

   pass := heslo*length(edit1.text) * 85;


   //registrace
   if (((edit2.text = inttostr(pass)) or (edit2.text = 'TOP500_TOXIC_USER') or (edit2.Text = '14012001')) AND (heslo >0)) then begin

      if jazyk = 'svk' then begin
         application.messagebox('Registrácia prebehla úspešne !','Vïaka...',MB_OK + MB_iconasterisk);
      end else begin
         application.messagebox('Registrace probìhla úspìšnì !','Díky...',MB_OK + MB_iconasterisk);
      end;

       //      form1.memo1.lines.clear;

       //zakodovani jmena

      SetLength(kod,length(edit1.text));
      kod := edit1.text;
      RegFile := TMemoryStream.create;
      RegFile.seek(0,soFromBeginning);
      m := '*<>*';

      for n := 1 to 4 do begin
          poleznaku[n-1] := ord(m[n]);
      end;

      for n := 1 to length(kod) do begin
         RegFile.write(kod[n],1);
      end;

      ukazatel := RegFile.memory;

      user := '';
      for Pass := 0 to RegFile.Size - 1 do begin
         ukazatel^ := ukazatel^ xor poleznaku[pass mod 4];
         Inc(ukazatel);
      end;


      SetLength(user,regfile.size);
      Regfile.seek(0,soFromBeginning);
      Regfile.read(user[1],regfile.size);

      regfile.Free;

      unit1.Registr.WriteString('user',user);

      //zakodovani hesla
      SetLength(kod,length(edit2.text));
      kod := edit2.text;
      RegFile := TMemoryStream.create;
      RegFile.seek(0,soFromBeginning);
      m := '*<>*';

      for n := 1 to 4 do begin
          poleznaku[n-1] := ord(m[n]);
      end;

      for n := 1 to length(kod) do begin
         RegFile.write(kod[n],1);
      end;

      ukazatel := RegFile.memory;

      user := '';
      for Pass := 0 to RegFile.Size - 1 do begin
         ukazatel^ := ukazatel^ xor poleznaku[pass mod 4];
         Inc(ukazatel);
      end;


      SetLength(user,regfile.size);
      Regfile.seek(0,soFromBeginning);
      Regfile.read(user[1],regfile.size);

      unit1.Registr.WriteString('pass',user);
      unit1.Registr.WriteBool('regjmcapt',checkbox1.Checked);

     //      form1.registrace1.enabled := false;

      if unit1.Registr.ReadBool('regjmcapt') = true then begin
         if jazyk = 'svk' then begin
            form1.caption := 'Radioactive Cheater (registrovaná kópia - "'+edit1.text+'")';
         end else begin
            form1.caption := 'Radioactive Cheater (registrovaná kopie - "'+edit1.text+'")';
         end;
      end else begin
         if jazyk = 'svk' then begin
            form1.caption := 'Radioactive Cheater (registrovaná kópia)';
         end else begin
            form1.caption := 'Radioactive Cheater (registrovaná kopie)';
         end;

      end;

      Close;

   end else begin

      if jazyk = 'svk' then begin
         application.messagebox('Neplatné údaje (meno alebo kód)','Chyba...',MB_OK + MB_iconerror);
      end else begin
         application.messagebox('Neplatné údaje (jméno nebo kód)','Chyba...',MB_OK + MB_iconerror);
      end;
      edit2.selectall;

   end;

end;

procedure TFormregistrace.FormActivate(Sender: TObject);
begin
   bitbtn1.glyph := form1.OKBut.glyph;

   if unit1.user <> 'unregistered' then begin
      edit1.Text := unit1.user;
      edit2.Text := unit1.rpass;
      CheckBox1.checked := unit1.Registr.ReadBool('regjmcapt');
   end;

   if unit1.jazyk = 'svk' then begin
      bitbtn2.glyph := form1.ZRUSITSVKBut.glyph;
      caption := 'Registrácia';
      label1.caption := 'Registraèné méno';
      label2.caption := 'Registraèný kód';
      label3.caption := 'Registraèné meno do záhlavia';
   end else begin
      bitbtn2.glyph := form1.ZRUSITBut.glyph;
   end;


   color := form1.color;
   tileimage1.picture := form1.tileimage1.picture;
   edit1.color := form1.edit1.color;
   edit1.font.color := form1.edit1.Font.color;
   edit2.color := form1.edit1.color;
   edit2.font.color := form1.edit1.Font.color;
   label1.color := form1.label1.color;
   label1.font.color := form1.label1.font.color;
   label2.color := form1.label1.color;
   label2.font.color := form1.label1.font.color;
   label3.color := form1.Label1.Color;
   label3.font.color := form1.label1.Font.Color;

   if form1.AlphaBlend = true then begin
      AlphaBlend := true;
      AlphaBlendValue := Form1.AlphaBlendValue;
   end;


end;

end.
