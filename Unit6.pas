unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, jpeg, ExtCtrls, Buttons,
  RpDefine, RpRave;

type
  TForm6 = class(TForm)
    Image1: TImage;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    RvProject1: TRvProject;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
Form6.Close();
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Связь');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Button5.Visible:=True;
Button4.Visible:=True;
Button3.Visible:=True;
Button2.Visible:=True;
Button6.Visible:=True;


Button7.Visible:=False;
Button8.Visible:=False;
Button9.Visible:=False;

end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
Button5.Visible:=False;
Button4.Visible:=False;
Button3.Visible:=False;
Button2.Visible:=False;
Button6.Visible:=False;


Button7.Visible:=True;
Button8.Visible:=True;
Button9.Visible:=True;

end;

procedure TForm6.Button3Click(Sender: TObject);
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

procedure TForm6.Button4Click(Sender: TObject);
begin
ADOQuery1.Prior;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
ADOQuery1.Next;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
 try
    if (Trim(Edit1.Text)='') or (Trim(Edit2.Text)='') then
     begin
      exit;
     end;
    ADOQuery1.Insert;
    ADOQuery1.FieldByName('Номер_сотрудника').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('Номер_клиента').AsInteger:=StrToInt(Edit2.Text);
    Edit1.Clear;
    Edit2.Clear;
    ADOQuery1.Active:=True;
    ADOQuery1.Post;
   except
    on e:Exception do
   end;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
 try
    ADOQuery1.Edit;
    ADOQuery1.FieldByName('Номер_сотрудника').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('Номер_клиента').AsInteger:=StrToInt(Edit2.Text);
   except
    on e:Exception do
   end;
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
 try
    Edit1.Text:=IntToStr(ADOQuery1.FieldByName('Номер_сотрудника').AsInteger);
    Edit2.Text:=IntToStr(ADOQuery1.FieldByName('Номер_клиента').AsInteger);

   except
    on e:Exception do
   end;
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
   try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Связь where Номер_сотрудника like  "%'+Edit1.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm6.Button8Click(Sender: TObject);
begin
    try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Связь where Номер_клиента like  "%'+Edit2.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm6.Button9Click(Sender: TObject);
begin
   try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Связь');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm6.Button10Click(Sender: TObject);
begin
RvProject1.Execute;
end;

end.
