unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.Show;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form3.Show;
 
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Form4.Show;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  Form1.Close();
end;



procedure TForm1.Timer1Timer(Sender: TObject);
begin
 Button1.Visible:=True;
 Button2.Visible:=True;
 Button3.Visible:=True;
 Button4.Visible:=True;
 Button5.Visible:=True;


 Image1.Visible:=True;
 Image2.Visible:=True;
 Image3.Visible:=True;
 Image4.Visible:=False;
end;


procedure TForm1.Button4Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Form7.Show;
end;

end.
