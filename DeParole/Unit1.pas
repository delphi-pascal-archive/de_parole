unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, ComCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Edit2: TEdit;
    Label2: TLabel;
    UpDown2: TUpDown;
    Edit3: TEdit;
    Label3: TLabel;
    UpDown3: TUpDown;
    Edit4: TEdit;
    Label4: TLabel;
    UpDown4: TUpDown;
    Edit5: TEdit;
    Label5: TLabel;
    UpDown5: TUpDown;
    Label6: TLabel;
    Edit6: TEdit;
    UpDown6: TUpDown;
    Label7: TLabel;
    Edit7: TEdit;
    UpDown7: TUpDown;
    Label8: TLabel;
    Edit8: TEdit;
    UpDown8: TUpDown;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown3Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown4Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown5Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown6Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown7Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown8Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}
uses unit3;
//const fileview:string='spectro.dat';

var
m1:array[1..65535] of byte;
m2:array[1..65535] of smallint;
m4i:array[1..65535] of integer;
m4r:array[1..65535] of single;
m6r:array[1..65535] of double;
be,en,fs:cardinal;
flag:boolean;
  PROCEDURE ReadFile(all:boolean; beg1,end1:cardinal; byt:byte; var siz:cardinal);
  VAR
    F : file;
    beg0,end0 : INTEGER;
  BEGIN
    AssignFile(F,fileview);
    Reset(F,1);
    if all then
    begin
    beg0:=$00;
    end0:=fileSize(f);
    fs:=end0;
    end
    else
    begin
    beg0:=beg1;
    end0:=end1;
    if end0>filesize(f) then end0:=filesize(f);
    end;
    siz:=end0-beg0;
    seek(f,beg0);
    case byt of
    1:
     begin
      blockread(f,m1,siz);
     end;
    2:
     begin
      siz:=siz div 2;
      blockread(f,m2,siz);
     end;
    3:
     begin
      siz:=siz div 4;
      blockread(f,m4i,siz);
     end;
    4:
     begin
      siz:=siz div 4;
      blockread(f,m4r,siz);
     end;
    end;
    closeFile(f);
end;

procedure ck(all:boolean; b1,e1:cardinal; by:byte);
var v,i,k,b,e:cardinal;
    s:string;
begin
b:=b1;
e:=e1;
if all then b:=0;
with form1 do
 case by of
 1:
 begin
 readfile(all,b,e,1,v);
 s:='';
 k:=1;
 for i:=0 to 1 do
  stringgrid1.Cols[i].Clear;
 stringgrid1.Cells[0,0]:='Адрес';
 stringgrid1.Cells[1,0]:='    Код';
 for i:=1 to v do
 begin
  s:=s+chr(m1[i]);
  if (i=v) or (i=(i div 7)*7) then
  begin
  stringgrid1.cells[1,k]:=s;
  stringgrid1.cells[0,k]:=format('%x-%x',[b+i-length(s),b+i-1]);
  inc(k);
  s:='';
  end;
 end;
 end;
 2:
 begin
 readfile(all,b,e,2,v);
 for i:=0 to 1 do
  stringgrid2.Cols[i].Clear;
 stringgrid2.Cells[0,0]:='Адрес';
 stringgrid2.Cells[1,0]:='    Код';
 for i:=1 to v do
 begin
  stringgrid2.cells[1,i]:=inttostr(m2[i]);
  stringgrid2.cells[0,i]:=format('%x',[b+2*(i-1)]);
 end;
 end;
 3:
 begin
 readfile(all,b,e,3,v);
 for i:=0 to 1 do
  stringgrid3.Cols[i].Clear;
 stringgrid3.Cells[0,0]:='Адрес';
 stringgrid3.Cells[1,0]:='    Код';
 for i:=1 to v do
 begin
  stringgrid3.cells[1,i]:=inttostr(m4i[i]);
  stringgrid3.cells[0,i]:=format('%x',[b+4*(i-1)]);
 end
 end;
 4:
 begin
 readfile(all,b,e,4,v);
 for i:=0 to 1 do
  stringgrid4.Cols[i].Clear;
 stringgrid4.Cells[0,0]:='Адрес';
 stringgrid4.Cells[1,0]:='    Код';
 for i:=1 to v do
 begin
  stringgrid4.cells[1,i]:=floattostr(m4r[i]);
  stringgrid4.cells[0,i]:=format('%x',[b+4*(i-1)]);
 end
 end;
 end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var i:integer;
begin
for i:=1 to 4 do
if TCheckbox(findcomponent('checkbox'+inttostr(i))).checked then
 ck(flag,be,en,i);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
stringgrid1.Cells[0,0]:='Адрес';
stringgrid1.Cells[1,0]:='    Код';
stringgrid2.Cells[0,0]:='Адрес';
stringgrid2.Cells[1,0]:='    Код';
stringgrid3.Cells[0,0]:='Адрес';
stringgrid3.Cells[1,0]:='    Код';
stringgrid4.Cells[0,0]:='Адрес';
stringgrid4.Cells[1,0]:='    Код';
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
 edit1.Text:=format('%x',[updown1.position]);
 be:=updown1.position;
end;

procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
 edit2.Text:=format('%x',[updown2.position]);
 be:=updown2.position;
end;

procedure TForm1.UpDown3Click(Sender: TObject; Button: TUDBtnType);
begin
 edit3.Text:=format('%x',[updown3.position]);
 be:=updown3.position;
end;

procedure TForm1.UpDown4Click(Sender: TObject; Button: TUDBtnType);
begin
 edit4.Text:=format('%x',[updown4.position]);
 be:=updown4.position;
end;

procedure TForm1.UpDown5Click(Sender: TObject; Button: TUDBtnType);
begin
 edit5.Text:=format('%x',[updown5.position]);
 en:=updown5.position;
end;

procedure TForm1.UpDown6Click(Sender: TObject; Button: TUDBtnType);
begin
 edit6.Text:=format('%x',[updown6.position]);
 en:=updown6.position;
end;

procedure TForm1.UpDown7Click(Sender: TObject; Button: TUDBtnType);
begin
 edit7.Text:=format('%x',[updown7.position]);
 en:=updown7.position;
end;

procedure TForm1.UpDown8Click(Sender: TObject; Button: TUDBtnType);
begin
 edit8.Text:=format('%x',[updown8.position]);
 en:=updown8.position;
end;

procedure TForm1.FormShow(Sender: TObject);
var i:cardinal;
begin
 for i:=1 to 4 do
 ck(true,7,20,i);
 flag:=false;
 be:=0;
 en:=fs-1;
 updown5.Position:=en;
 edit5.Text:=format('%x',[updown5.position]);
 updown6.Position:=en;
 edit6.Text:=format('%x',[updown6.position]);
 updown7.Position:=en;
 edit7.Text:=format('%x',[updown7.position]);
 updown8.Position:=en;
 edit8.Text:=format('%x',[updown8.position]);

end;

end.
