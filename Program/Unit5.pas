unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Unit6;

type
  TForm5 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    rb_admin: TRadioButton;
    rb_pelanggan: TRadioButton;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Ingin Kembali?','Kembali',MB_OKCANCEL)=ID_OK) then
  begin
    form1.show;
    Form5.Hide;
  end;
end;

procedure TForm5.btn2Click(Sender: TObject);
var
  uname, password, role : string;
begin
  uname:=edt1.Text;
  password:=edt2.Text;

  if rb_admin.Checked = True then
  begin
    role:='admin';
  end;

  if rb_pelanggan.Checked = True then
  begin
    role:='pelanggan'
  end;

  DM.zqry1.Active:=False;
  DM.zqry1.SQL.Clear;
  DM.zqry1.SQL.Text:= 'insert into userpass (no_akun, username, password, role) values ("NULL","'+uname+'","'+password+'","'+role+'")';
  DM.zqry1.ExecSQL;

  edt1.Clear;
  edt2.Clear;

  Application.MessageBox('Registrasi Berhasil','Register', MB_OK + MB_ICONINFORMATION);

  form5.Hide;
  form1.show;
end;

end.
