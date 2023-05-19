unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons,Unit2,Unit3;

type
  TForm1 = class(TForm)
    btn1: TButton;
    chk1: TCheckBox;
    img1: TImage;
    lbl3: TLabel;
    lbledt1: TLabeledEdit;
    lbledt2: TLabeledEdit;
    btn2: TButton;
    lbl1: TLabel;
    Image1: TImage;
    procedure btn1Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure lbl1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  a,b : string;
  Form1: TForm1;

implementation

uses Unit5, Unit6;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  uname, password, role : string;
begin
  a:=lbledt1.Text;
  b:=lbledt2.Text;
  DM.zqry1.Active:=False;
  DM.zqry1.SQL.Text:='select * from userpass where username="' + lbledt1.Text + '"';
  DM.zqry1.Active:=True;

  if DM.zqry1.RecordCount = 0 then begin
    MessageBox(Handle,'Username Salah','Error', MB_ICONERROR);
  end
  else begin
    uname:= DM.zqry1['username'];
    password:= DM.zqry1['password'];
    role:= DM.zqry1['role'];

    if (uname = lbledt1.Text) and (password = lbledt2.Text) then
    begin
      Application.MessageBox('Login Berhasil','Login', MB_OK + MB_ICONINFORMATION);
      if(role = 'admin') then begin
        Form2.Show;
        Form1.Hide;
        lbledt1.Clear;
        lbledt2.Clear;
      end

      else begin
        Form3.edt4.Text:= uname;
        form3.Show;
        Form1.Hide;
        lbledt1.Clear;
        lbledt2.Clear;
      end
    end

    else if a='' then
      Application.MessageBox('Username belum diisi','Error')

    else if b='' then
      Application.MessageBox('Password belum diisi','Error')

    else if (a='') and (b='') then
      Application.MessageBox('Username dan Password belum diisi','Error')

    else
      Application.MessageBox('Username dan Password salah','Error');
    end;
  end;


procedure TForm1.chk1Click(Sender: TObject);
begin
  if (chk1.Checked) then
    begin
      lbledt2.PasswordChar:=#0;
    end
  else
    lbledt2.PasswordChar:='*';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if (Application.MessageBox('Mau Keluar?','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    close;
  end;
end;

procedure TForm1.lbl1Click(Sender: TObject);
begin
  form5.show;
  Form1.Hide;
end;

end.
