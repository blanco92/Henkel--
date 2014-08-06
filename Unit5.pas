unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Grids, DBGrids, ADODB, jpeg, ExtCtrls,
  RpDefine, RpRave;

type
  TForm5 = class(TForm)
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button13: TButton;
    Button14: TButton;
    RvProject1: TRvProject;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
//    procedure Button11Click(Sender: TObject);
//    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Товар');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
Form5.Close();
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
 try
    Edit1.Text:=IntToStr(ADOQuery1.FieldByName('Номер_товара').AsInteger);
    Edit2.Text:=ADOQuery1.FieldByName('Название').AsString;
    Edit3.Text:=ADOQuery1.FieldByName('количество').AsString;
    Edit4.Text:=ADOQuery1.FieldByName('Цена').AsString;
   except
    on e:Exception do
   end;
end;

procedure TForm5.Button3Click(Sender: TObject);
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

procedure TForm5.Button4Click(Sender: TObject);
begin
ADOQuery1.Prior;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
ADOQuery1.Next;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
try
    if (Trim(Edit1.Text)='') or (Trim(Edit2.Text)='') then
     begin
      exit;
     end;
    ADOQuery1.Insert;
    ADOQuery1.FieldByName('Номер_товара').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('Название').AsString:=Edit2.Text;
    ADOQuery1.FieldByName('Количество').AsString:=Edit3.Text;
    ADOQuery1.FieldByName('Цена').AsString:=Edit4.Text;

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

procedure TForm5.Button6Click(Sender: TObject);
begin
try
    ADOQuery1.Edit;
    ADOQuery1.FieldByName('Номер_товара').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('Название').AsString:=Edit2.Text;
    ADOQuery1.FieldByName('Количество').AsString:=Edit3.Text;
    ADOQuery1.FieldByName('Цена').AsString:=Edit4.Text;
   except
    on e:Exception do
   end;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
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

Button13.Visible:=False;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
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

Button13.Visible:=True;
end;

procedure TForm5.Button7Click(Sender: TObject);
begin
 try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Товар where Номер_товара like  "%'+Edit1.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm5.Button8Click(Sender: TObject);
begin
   try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Товар where Название like  "%'+Edit2.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm5.Button9Click(Sender: TObject);
begin
  try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Товар where Количество like  "%'+Edit3.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm5.Button10Click(Sender: TObject);
begin
  try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Товар where Цена like  "%'+Edit4.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm5.Button13Click(Sender: TObject);
begin
   try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Товар');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm5.Button14Click(Sender: TObject);
begin
RvProject1.Execute;
end;

end.
 