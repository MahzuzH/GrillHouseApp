unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit6, Grids, DBGrids, SMDBGrid, jpeg, ExtCtrls, StdCtrls, Mask,
  EditType, EditTypeDB;

type
  TForm7 = class(TForm)
    img1: TImage;
    smdbgrd1: TSMDBGrid;
    lbl1: TLabel;
    edt_no: TDBEditTyped;
    edt_username: TEdit;
    edt_password: TEdit;
    edt_role: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
var
  no_akun, user, pass, role, sql : string;
begin
  no_akun:=edt_no.Text;
  user:=edt_username.Text;
  pass:=edt_password.Text;
  role:=edt_role.Text;
  sql:=DM.zqry_user.SQL.Text;

  DM.zqry_user.Active:=False;
  DM.zqry_user.SQL.Clear;
  DM.zqry_user.SQL.Text:='insert into userpass (no_akun, username, password, role) values ("NULL","'+user+'","'+pass+'","'+role+'")';
  DM.zqry_user.ExecSQL;

  DM.zqry_user.Active:=False;
  DM.zqry_user.SQL.Text:=sql;
  DM.zqry_user.Active:=True;
  Application.MessageBox('Data User Berhasil Ditambah','Tambah User',MB_OK+MB_ICONINFORMATION);

  edt_username.Clear;
  edt_password.Clear;
  edt_role.Clear;
end;

procedure TForm7.btn2Click(Sender: TObject);
var
    no_akun, user, pass, role, sql : string;
begin
  no_akun:=edt_no.Text;
  user:=edt_username.Text;
  pass:=edt_password.Text;
  role:=edt_role.Text;
  sql:=DM.zqry_user.SQL.Text;

  DM.zqry_user.Active:=False;
  DM.zqry_user.SQL.Clear;
  DM.zqry_user.SQL.Add('update userpass set username = "'+user+'", password = "'+pass+'", role = "'+role+'" where no_akun = "'+no_akun+'"');
  DM.zqry_user.ExecSQL;

  DM.zqry_user.SQL.Clear;
  DM.zqry_user.Active:=False;
  DM.zqry_user.SQL.Text:=sql;
  DM.zqry_user.Active:=True;
  Application.MessageBox('Data User Berhasil Diubah','Ubah User',MB_OK+MB_ICONINFORMATION);

  edt_username.Clear;
  edt_password.Clear;
  edt_role.Clear;
end;

procedure TForm7.btn3Click(Sender: TObject);
var
    no_akun, user, pass, role, sql : string;
begin
  no_akun:=edt_no.Text;
  user:=edt_username.Text;
  pass:=edt_password.Text;
  role:=edt_role.Text;
  sql:=DM.zqry_user.SQL.Text;

  DM.zqry_user.Active:=False;
  DM.zqry_user.SQL.Clear;
  DM.zqry_user.SQL.Add('delete from userpass where no_akun = "'+no_akun+'"');
  DM.zqry_user.ExecSQL;

  DM.zqry_user.SQL.Clear;
  DM.zqry_user.Active:=False;
  DM.zqry_user.SQL.Text:=sql;
  DM.zqry_user.Active:=True;
  Application.MessageBox('Data User Berhasil DIhapus','Hapus User',MB_OK+MB_ICONINFORMATION);

  edt_username.Clear;
  edt_password.Clear;
  edt_role.Clear;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
  if (Application.MessageBox('Ingin Kembali?','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    Form7.Hide;
    form2.show;
  end;
end;

end.
