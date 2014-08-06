unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB, jpeg, ExtCtrls, Buttons,
  Menus, RpCon, RpConDS, RpDefine, RpRave;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button12: TButton;
    Button13: TButton;
    Button11: TButton;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Form2.Close();
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Клиент');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
 try
    if (Trim(Edit1.Text)='') or (Trim(Edit2.Text)='') then
     begin
      exit;
     end;
    ADOQuery1.Insert;
    ADOQuery1.FieldByName('Номер_клиента').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('ФИО_клиента').AsString:=Edit2.Text;
    ADOQuery1.FieldByName('Дополнительная_информация').AsString:=Edit3.Text;
    ADOQuery1.FieldByName('Скидки').AsString:=Edit4.Text;
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    ADOQuery1.Active:=True;
    ADOQuery1.Post;
   except
    on e:Exception do
   end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
   try
    if Application.MessageBox('Delete?','ADO',MB_YESNO)=IDYES then
     begin
      ADOQuery1.Delete;
     end;
   except
    on e:Exception do
   end;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  try
    Edit1.Text:=IntToStr(ADOQuery1.FieldByName('Номер_клиента').AsInteger);
    Edit2.Text:=ADOQuery1.FieldByName('ФИО_клиента').AsString;
    Edit3.Text:=ADOQuery1.FieldByName('Дополнительная_информация').AsString;
    Edit4.Text:=ADOQuery1.FieldByName('Скидки').AsString;
   except
    on e:Exception do
   end;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
ADOQuery1.Prior;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
ADOQuery1.Next;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
 try
    ADOQuery1.Edit;
    ADOQuery1.FieldByName('Номер_клиента').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('ФИО_клиента').AsString:=Edit2.Text;
    ADOQuery1.FieldByName('Дополнительная_информация').AsString:=Edit3.Text;
    ADOQuery1.FieldByName('Скидки').AsString:=Edit4.Text;
   except
    on e:Exception do
   end;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin

Button5.Visible:=True;
Button4.Visible:=True;
Button3.Visible:=True;
Button2.Visible:=True;
Button6.Visible:=True;


Button7.Visible:=False;
Button8.Visible:=False;
Button9.Visible:=False;
Button10.Visible:=False;
Button12.Visible:=False;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin

Button5.Visible:=False;
Button4.Visible:=False;
Button3.Visible:=False;
Button2.Visible:=False;
Button6.Visible:=False;


Button7.Visible:=True;
Button8.Visible:=True;
Button9.Visible:=True;
Button10.Visible:=True;
Button12.Visible:=True;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Клиент where Номер_клиента like  "%'+Edit1.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
   try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Клиент where ФИО_клиента like  "%'+Edit2.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Клиент where Дополнительная_информация like  "%'+Edit3.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Клиент where Скидки like  "%'+Edit4.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;


procedure TForm2.Button12Click(Sender: TObject);
begin
   try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Клиент');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm2.Button13Click(Sender: TObject);
begin
RvProject1.Execute;
end;

end.
