unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, Grids, DBGrids, StdCtrls, DB, ADODB,
  RpDefine, RpRave;

type
  TForm4 = class(TForm)
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    DBGrid1: TDBGrid;
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
    Button11: TButton;
    Button12: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    RvProject1: TRvProject;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM �����');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form4.Close();
end;

procedure TForm4.Button3Click(Sender: TObject);
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

procedure TForm4.Button4Click(Sender: TObject);
begin
ADOQuery1.Prior;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
ADOQuery1.Next;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
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
Button11.Visible:=False;


end;

procedure TForm4.BitBtn2Click(Sender: TObject);
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
Button11.Visible:=True;



end;

procedure TForm4.Button2Click(Sender: TObject);
begin
    try
    if (Trim(Edit1.Text)='') or (Trim(Edit2.Text)='') then
     begin
      exit;
     end;
    ADOQuery1.Insert;
    ADOQuery1.FieldByName('�����_������').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('�����_������').AsString:=Edit2.Text;
    ADOQuery1.FieldByName('��������').AsInteger:=StrToInt(Edit3.Text);
    ADOQuery1.FieldByName('�����_�������').AsInteger:=StrToInt(Edit4.Text);
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

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
 try
    Edit1.Text:=IntToStr(ADOQuery1.FieldByName('�����_������').AsInteger);
    Edit2.Text:=ADOQuery1.FieldByName('�����_������').AsString;
    Edit3.Text:=ADOQuery1.FieldByName('��������').AsString;
    Edit4.Text:=ADOQuery1.FieldByName('�����_�������').AsString;
    Edit5.Text:=ADOQuery1.FieldByName('�����������').AsString;
    Edit6.Text:=ADOQuery1.FieldByName('����').AsString;

   except
    on e:Exception do
   end;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
try
    ADOQuery1.Edit;
    ADOQuery1.FieldByName('�����_������').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('�����_������').AsString:=Edit2.Text;
    ADOQuery1.FieldByName('��������').AsInteger:=StrToInt(Edit3.Text);
    ADOQuery1.FieldByName('�����_�������').AsInteger:=StrToInt(Edit4.Text);
   except
    on e:Exception do
   end;
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ����� where �����_������ like  "%'+Edit1.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm4.Button9Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ����� where �������� like  "%'+Edit3.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ����� where �����_������ like  "%'+Edit2.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm4.Button10Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ����� where �����_������� like  "%'+Edit4.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm4.Button11Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM �����');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm4.Button12Click(Sender: TObject);
begin
RvProject1.Execute;
end;

end.
 