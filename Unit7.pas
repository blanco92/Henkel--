unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, jpeg, ExtCtrls;

type
  TForm7 = class(TForm)
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
Form7.Close();
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT �����.�����_������,�����.�����_������,������.�����_�������,������.���_�������,�����.�������� FROM �����,������ ');
    ADOQuery1.SQL.Add('Where ������.�����_�������=�����.�����_������� ');
//    ADOQuery1.Active:=True;
   except
    on e:Exception do
   end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
sleep(1800);
if MessageDlg('Printer not found',
            mtError, [mbOk], 0) = mrOk
            then begin close;
             Form7.show;
             end;
end;

end.
