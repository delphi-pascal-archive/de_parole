unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, ExtCtrls, ComCtrls, Menus, TeEngine, Series, TeeProcs,
  Chart;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    Label4: TLabel;
    Label5: TLabel;
    Button4: TButton;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Label6: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Button5: TButton;
    FontDialog1: TFontDialog;
    StatusBar1: TStatusBar;
    RadioButton8: TRadioButton;
    GroupBox2: TGroupBox;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Label7: TLabel;
    ColorDialog1: TColorDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    Chart1: TChart;
    Series1: TLineSeries;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Chart2: TChart;
    Series2: TLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure Chart1DblClick(Sender: TObject);
 //   procedure FormKeyDown(Sender: TObject; var Key: Word;
 //     Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
//const fileview:string='spectro.dat';

var
  Form2: TForm2;

implementation

uses Unit1,unit3;

{$R *.DFM}
var
m1:array[1..6553500] of byte;
be:longint=0;
en:longint=0;
fs:cardinal;
flag:boolean;
step:integer=1;
flag_new:boolean=true;
col1,row1,col2,row2:integer;
colr:Tcolor=claqua;
//перевод из 16 в 10
function P_16To10(s:string):longint;
var i:byte;
    j:cardinal;
    r:longint;
function f16_10(c:char):byte;
begin
result:=16;
 case c of
  '0':result:=0;
  '1':result:=1;
  '2':result:=2;
  '3':result:=3;
  '4':result:=4;
  '5':result:=5;
  '6':result:=6;
  '7':result:=7;
  '8':result:=8;
  '9':result:=9;
  'a','A':result:=10;
  'b','B':result:=11;
  'c','C':result:=12;
  'd','D':result:=13;
  'e','E':result:=14;
  'f','F':result:=15;
 end;
end;
begin
 result:=0;
 j:=1;
 for i:=length(s) downto 1 do
  begin
   if s[i]<>'0' then
   begin
    r:=f16_10(s[i]);
    if r=16 then
    begin
     showmessage('Недопустимый символ! Диапазон 0-F');
     exit;
    end;
    result:=result+r*j;
   end;
   j:=16*j;
  end;
end;

function Adress(col0,row0:integer):longint;
begin
 result:=-1;
with form2.StringGrid1 do
begin
 if trim(cells[col0,0])<>'' then
 result:=P_16To10(cells[col0,0])+P_16To10(cells[0,row0]);
end;
end;

PROCEDURE ReadFile(var siz:cardinal);
  VAR
    F : file;
BEGIN
    AssignFile(F,fileview);
    Reset(F,1);
    siz:=filesize(f);
    //if siz>50000 then
    //siz:=50000;
    seek(f,0);
    blockread(f,m1,siz);
    closeFile(f);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
 form1.show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
// Button6.Caption:=#18;
// Button7.Caption:=#23;
// Button8.Caption:=#24;
// Button9.Caption:=#25;
 stringgrid1.Cells[0,0]:='Адрес';
end;

procedure TForm2.FormShow(Sender: TObject);
var i,j,k,m:cardinal;
    s:string;
begin
if flag_new then
begin
 readfile(fs);
 flag_new:=false;
end;
 label1.Caption:='Файл: '+fileview;
 label2.Caption:='Размер файла: '+inttostr(fs)+' байт';
 label4.Caption:='Начало: '+Format('%x',[be])+' ('+IntTostr(be)+')';
 label5.Caption:='Конец: '+Format('%x',[en])+' ('+IntTostr(en)+')';
 with stringgrid1 do
 begin
  rowcount:=fs div 16 +2;
  label3.Caption:='Количество строк: '+inttostr(rowcount-1);
  if rowcount<24 then rowcount:=24;
  k:=1;  //строка
  j:=1; //столбец
  m:=1;
  s:='';
  stringgrid1.cells[0,1]:='00000000';
  for i:=1 to fs do
  begin
   stringgrid1.cells[m+18,k]:=chr(m1[i]);
   if j=9 then inc(j);
   s:=format('%x',[m1[i]]);
   if length(s)=1 then s:='0'+s;
   stringgrid1.cells[j,k]:=s;
   s:=format('%x',[m-1]);
   s:='0'+s;
   if k=1 then
   begin
    stringgrid1.cells[j,0]:=s;
    stringgrid1.cells[m+18,0]:=s;
   end;
   inc(j);
   inc(m);
   if (i=fs) or (i=(i div 16)*16) then
    begin
     s:=format('%x',[i]);
     while length(s)<8 do
     s:='0'+s;
     stringgrid1.cells[0,k+1]:=s;
     inc(k);
     j:=1;
     m:=1;
    end;
  end;
 end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 if opendialog1.Execute then
 begin
  fileview:=opendialog1.FileName;
  flag_new:=true;
  formshow(self);
 end;
end;

var ww:byte=0;
procedure TForm2.StringGrid1Click(Sender: TObject);
begin
if ww=0 then
begin
 be:=Adress(stringgrid1.col,stringgrid1.row);
 if be <0 then exit;
 ww:=1;
 label4.Caption:='Начало: '+Format('%x',[be])+' ('+IntTostr(be)+')';
 exit;
end;
if ww=1 then
begin
 en:=Adress(stringgrid1.col,stringgrid1.row);
 if en <0 then exit;
 if be>en then
 begin
  showmessage('Конец не может быть меньше начала!');
  ww:=0;
  exit;
 end;
 ww:=0;
 label5.Caption:='Конец: '+Format('%x',[en])+' ('+IntTostr(en)+')';
 updown1.Position:=en-be+1;
 Button4Click(self);
end;
end;

procedure TForm2.Button4Click(Sender: TObject);
const tit='Окно просмотра ';
var i:longint;
    s:string;
    pi4:^integer;
    pi2:^smallint;
    pi2w:^word;
    pi4w:^Cardinal;
    pr4:^single;
    pr8:^double;
    pr6:^real48;
    mb:array[1..4] of byte;
begin
 formshow(self);
 memo1.Clear;
 if radiobutton1.Checked then
 begin
  groupbox1.Caption:=tit+'(символьный тип 1 байт памяти)';
  s:='';
  for i:=be to en do
   s:=s+chr(m1[i+1]);
  memo1.Lines.Add(s);
 end;
 if radiobutton2.Checked then
 begin
  groupbox1.Caption:=tit+'(тип Byte [0..255] 1 байт памяти)';
  s:='';
  series1.Clear;
  for i:=be to en do
  begin
   s:=s+inttostr(m1[i+1])+'  ';
   series1.AddXY(i,m1[i+1],'',clred);
  end;
  memo1.Lines.Add(s);
 end;
 if radiobutton3.Checked then
 begin
  series1.Clear;
  groupbox1.Caption:=tit+'(тип SmallInt [-32768..32767] 2 байта памяти)';
  s:='';
  i:=be;
  while i<=en do
  begin
   pi2:=@m1[i+1];
   s:=s+inttostr(pi2^)+'  ';
   series1.AddXY(i,pi2^,'',clred);
   inc(i,2);
  end;
  memo1.Lines.Add(s);
 end;
 if radiobutton6.Checked then
 begin
  series1.Clear;
  groupbox1.Caption:=tit+'(тип Word [0..65536] 2 байта памяти)';
  s:='';
  i:=be;
  while i<=en do
  begin
   pi2w:=@m1[i+1];
   s:=s+inttostr(pi2w^)+'  ';
   series1.AddXY(i,pi2w^,'',clred);
   inc(i,2);
  end;
  memo1.Lines.Add(s);
 end;
 if radiobutton7.Checked then
 begin
  series1.Clear;
  groupbox1.Caption:=tit+'(тип Word [0..4294967295] 4 байта памяти)';
  s:='';
  i:=be;
  while i<=en do
  begin
   pi4w:=@m1[i+1];
   s:=s+inttostr(pi4w^)+'  ';
   series1.AddXY(i,pi4w^,'',clred);
   inc(i,4);
  end;
  memo1.Lines.Add(s);
 end;
 if radiobutton4.Checked then
 begin
  groupbox1.Caption:=tit+'(тип Integer [-2147483648..2147483647] 4 байта памяти)';
  s:='';
  i:=be;
  series1.Clear;
  while i<=en do
  begin
   pi4:=@m1[i+1];
   s:=s+inttostr(pi4^)+'  ';
   series1.AddXY(i,pi4^,'',clred);
   inc(i,4);
  end;
  memo1.Lines.Add(s);
 end;
 if radiobutton9.Checked then
 begin
  groupbox1.Caption:=tit+'(тип Int3 [-2147483648..2147483647] 4 байта памяти)';
  s:='';
  i:=be;
  series1.Clear;
  while i<=en do
  begin
   mb[1]:=m1[i+1];
   mb[2]:=m1[i+2];
   mb[3]:=m1[i+3];
   mb[4]:=0;

   pi4:=@mb;
   s:=s+inttostr(pi4^)+'  ';
   series1.AddXY(i,pi4^,'',clred);
   inc(i,3);
  end;
  memo1.Lines.Add(s);
 end;
 if radiobutton5.Checked then
 begin
  groupbox1.Caption:=tit+'(тип Single [1.5E-45..3.4E+38] 4 байта памяти 7-8 разрядов)';
  s:='';
  i:=be;
  series1.Clear;
  while i<=en do
  begin
   pr4:=@m1[i+1];
   s:=s+floattostr(pr4^)+'  ';
   series1.AddXY(i,pr4^,'',clred);
   inc(i,4);
  end;
  memo1.Lines.Add(s);
 end;
 if radiobutton8.Checked then
 begin
  groupbox1.Caption:=tit+'(тип Double [5.0E-324..1.7E+308] 8 байта памяти 15-16 разрядов)';
  s:='';
  i:=be;
  series1.Clear;
  while i<=en do
  begin
   pr8:=@m1[i+1];
   s:=s+floattostr(pr8^)+'  ';
   series1.AddXY(i,pr8^,'',clred);
   inc(i,8);
  end;
  memo1.Lines.Add(s);
 end;
 if radiobutton10.Checked then
 begin
  groupbox1.Caption:=tit+'(тип Real48 [5.0E-324..1.7E+308] 8 байта памяти 15-16 разрядов)';
  s:='';
  i:=be;
  series1.Clear;
  while i<=en do
  begin
   pr6:=@m1[i+1];
   s:=s+floattostr(pr6^)+'  ';
   series1.AddXY(i,pr6^,'',clred);
   inc(i,6);
  end;
  memo1.Lines.Add(s);
 end;
end;

procedure TForm2.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
 en:=be+updown1.Position-1;
 if en>fs then
  begin
   en:=fs;
   updown1.Position:=en-be+1;
  end;
  label5.Caption:='Конец: '+Format('%x',[en])+' ('+IntTostr(en)+')';
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 case key of
 '0'..'9',#8:exit;
 #13:
  begin
   updown1.Position:=strtoint(edit1.text);
   en:=be+updown1.Position-1;
   if en>fs then
    begin
     en:=fs;
     updown1.Position:=en-be+1;
    end;
   label5.Caption:='Конец: '+Format('%x',[en])+' ('+IntTostr(en)+')';
   end;
 else key:=#0;
 end;
end;

procedure TForm2.Edit1Exit(Sender: TObject);
begin
   updown1.Position:=strtoint(edit1.text);
   en:=be+updown1.Position-1;
   if en>fs then
    begin
     en:=fs;
     updown1.Position:=en-be+1;
    end;
   label5.Caption:='Конец: '+Format('%x',[en])+' ('+IntTostr(en)+')';
end;

procedure TForm2.RadioButton1Click(Sender: TObject);
begin
 button5.Enabled:=true;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
 button5.Enabled:=false;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.RadioButton3Click(Sender: TObject);
begin
 button5.Enabled:=false;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.RadioButton4Click(Sender: TObject);
begin
 button5.Enabled:=false;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.RadioButton6Click(Sender: TObject);
begin
 button5.Enabled:=false;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.RadioButton7Click(Sender: TObject);
begin
 button5.Enabled:=false;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.RadioButton5Click(Sender: TObject);
begin
 button5.Enabled:=false;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
 if fontdialog1.Execute then
 begin
  memo1.Font.Name:=fontdialog1.Font.Name;
 end;
end;

procedure TForm2.RadioButton8Click(Sender: TObject);
begin
 button5.Enabled:=false;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
if be<16*step then exit;
 be:=be-16*step;
 en:=en-16*step;
 label4.Caption:='Начало: '+Format('%x',[be])+' ('+IntTostr(be)+')';
 label5.Caption:='Конец: '+Format('%x',[en])+' ('+IntTostr(en)+')';
 Button4Click(self);
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
if en+16*step>fs then exit;
 be:=be+16*step;
 en:=en+16*step;
 label4.Caption:='Начало: '+Format('%x',[be])+' ('+IntTostr(be)+')';
 label5.Caption:='Конец: '+Format('%x',[en])+' ('+IntTostr(en)+')';
 Button4Click(self);
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
if be-step<0 then exit;
 be:=be-step;
 en:=en-step;
 label4.Caption:='Начало: '+Format('%x',[be])+' ('+IntTostr(be)+')';
 label5.Caption:='Конец: '+Format('%x',[en])+' ('+IntTostr(en)+')';
 Button4Click(self);
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
if en+step>fs then exit;
 be:=be+step;
 en:=en+step;
 label4.Caption:='Начало: '+Format('%x',[be])+' ('+IntTostr(be)+')';
 label5.Caption:='Конец: '+Format('%x',[en])+' ('+IntTostr(en)+')';
 Button4Click(self);
end;

var fl:boolean=false;
procedure TForm2.Button10Click(Sender: TObject);
begin
 if fl then dec(step) else inc(step);
 if step<1 then step:=1;
 label7.caption:='Шаг='+inttostr(step);
end;

procedure TForm2.Button10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if ssShift in Shift then fl:=true else fl:=false;
end;

procedure TForm2.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var s:string;
begin
   with Sender as TDrawGrid do
  begin
    Canvas.Brush.Color := clred;
    Canvas.DrawFocusRect(Rect);
    if (Acol*Arow>0) and (Arow<fs div 16+1) then
    if (adress(Acol,Arow)>=be) and (adress(Acol,Arow)<=en) then
    begin
    s:=stringgrid1.Cells[Acol,Arow];
    Canvas.Brush.Color := colr;
   // Canvas.pen.Color := clwhite;
    canvas.fillRect(rect);
    canvas.textout(rect.left+2,rect.Top+2,s);
    end;
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  flag_new:=true;
end;

procedure TForm2.N2Click(Sender: TObject);
begin
 if colordialog1.Execute then
  colr:=colordialog1.Color;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
 if colordialog1.Execute then
  stringgrid1.color:=colordialog1.Color;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
 if colordialog1.Execute then
  stringgrid1.font.color:=colordialog1.Color;
end;

procedure TForm2.N4Click(Sender: TObject);
begin
 if colordialog1.Execute then
  memo1.color:=colordialog1.Color;
end;

procedure TForm2.N5Click(Sender: TObject);
begin
 if colordialog1.Execute then
  memo1.font.color:=colordialog1.Color;
end;
{
procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case key of
  VK_Left: Button8Click(self);
  VK_Right: Button9Click(self);
  VK_Up: Button6Click(self);
  VK_Down: Button7Click(self);
 end;
end;
}
procedure TForm2.RadioButton9Click(Sender: TObject);
begin
 button5.Enabled:=false;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.RadioButton10Click(Sender: TObject);
begin
 button5.Enabled:=false;
 memo1.Font.Name:='MS Sans Serif';
 Button4Click(self);
end;

procedure TForm2.Chart1DblClick(Sender: TObject);
var i:integer;
begin
 chart2.Visible:=not chart2.Visible;
 if chart2.Visible then
 begin
  series2.Clear;
  for i:=0 to series1.Count-1 do
  series2.AddXY(series1.XValues[i],series1.YValues[i],'',clred);
 end;
end;

end.
