unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, StdCtrls, Buttons, jpeg, ExtCtrls,
  RpDefine, RpRave;

type
  TForm3 = class(TForm)
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button11: TButton;
    Button12: TButton;
    RvProject1: TRvProject;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
//    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Form3.Close();
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ���������');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin

Button5.Visible:=True;
Button4.Visible:=True;
Button3.Visible:=True;
Button2.Visible:=True;
Button6.Visible:=True;

Button7.Visible:=False;
Button8.Visible:=False;
Button9.Visible:=False;

Button11.Visible:=False;



end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
Button5.Visible:=False;
Button4.Visible:=False;
Button3.Visible:=False;
Button2.Visible:=False;
Button6.Visible:=False;

Button7.Visible:=True;
Button8.Visible:=True;
Button9.Visible:=True;

Button11.Visible:=True;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
try
    if (Trim(Edit1.Text)='') or (Trim(Edit2.Text)='') then
     begin
      exit;
     end;
    ADOQuery1.Insert;
    ADOQuery1.FieldByName('�����_����������').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('���_����������').AsString:=Edit2.Text;
     ADOQuery1.FieldByName('������_������').AsString:=Edit3.Text;
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;

    ADOQuery1.Active:=True;
    ADOQuery1.Post;
   except
    on e:Exception do
   end;
end;

procedure TForm3.Button3Click(Sender: TObject);
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

procedure TForm3.Button4Click(Sender: TObject);
begin
ADOQuery1.Prior;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
ADOQuery1.Next;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
try
    ADOQuery1.Edit;
  ADOQuery1.FieldByName('�����_����������').AsInteger:=StrToInt(Edit1.Text);
    ADOQuery1.FieldByName('���_����������').AsString:=Edit2.Text;
     ADOQuery1.FieldByName('������_������').AsString:=Edit3.Text;
   except
    on e:Exception do
   end;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
 try
    Edit1.Text:=IntToStr(ADOQuery1.FieldByName('�����_����������').AsInteger);
    Edit2.Text:=ADOQuery1.FieldByName('���_����������').AsString;
    Edit3.Text:=ADOQuery1.FieldByName('������_������').AsString;
   except
    on e:Exception do
   end;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ��������� where �����_���������� like  "%'+Edit1.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ��������� where ���_���������� like  "%'+Edit2.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ��������� where ������_������ like  "%'+Edit3.Text+'%"');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;


procedure TForm3.Button11Click(Sender: TObject);
begin
try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ���������');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm3.Button12Click(Sender: TObject);
begin
RvProject1.Execute;
end;

end.
