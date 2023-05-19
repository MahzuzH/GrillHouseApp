unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit6, StdCtrls, Mask, EditType, EditTypeDB, Grids, DBGrids,
  SMDBGrid, jpeg, ExtCtrls;

type
  TForm9 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    smdbgrd1: TSMDBGrid;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    btn4: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edt_idtrans: TDBEditTyped;
    edt_username: TEdit;
    edt_kode: TEdit;
    edt_matang: TEdit;
    edt_harga: TEdit;
    edt_stok: TEdit;
    edt_total: TEdit;
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
  Form9: TForm9;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
var
  id, user, kode, matang, harga, total, stok, sql : string;
begin
  id:=edt_idtrans.Text;
  user:=edt_username.Text;
  kode:=edt_kode.Text;
  matang:=edt_matang.Text;
  harga:=edt_harga.Text;
  stok:=edt_stok.Text;
  total:=edt_total.Text;
  sql:=DM.zqry_transaksi.SQL.Text;

  DM.zqry_transaksi.Active:=False;
  DM.zqry_transaksi.SQL.Clear;
  DM.zqry_transaksi.SQL.Text:='insert into transaksi (id_transaksi, username, kode_daging, tingkat_kematangan, harga, stok, total) values ("NULL","'+user+'","'+kode+'","'+matang+'","'+harga+'","'+stok+'","'+total+'")';
  DM.zqry_transaksi.ExecSQL;

  DM.zqry_transaksi.Active:=False;
  DM.zqry_transaksi.SQL.Text:=sql;
  DM.zqry_transaksi.Active:=True;
  Application.MessageBox('Data Transaksi Berhasil Ditambah','Tambah Transaksi',MB_OK+MB_ICONINFORMATION);

  edt_username.Clear;
  edt_kode.Clear;
  edt_matang.Clear;
  edt_harga.Clear;
  edt_stok.Clear;
  edt_total.Clear;
end;

procedure TForm9.btn2Click(Sender: TObject);
var
  id, user, kode, matang, harga, total, stok, sql : string;
begin
  id:=edt_idtrans.Text;
  user:=edt_username.Text;
  kode:=edt_kode.Text;
  matang:=edt_matang.Text;
  harga:=edt_harga.Text;
  stok:=edt_stok.Text;
  total:=edt_total.Text;
  sql:=DM.zqry_transaksi.SQL.Text;

  DM.zqry_transaksi.Active:=False;
  DM.zqry_transaksi.SQL.Clear;
  DM.zqry_transaksi.SQL.Add('update transaksi set username = "'+user+'", kode_daging = "'+kode+'", tingkat_kematangan = "'+matang+'", harga = "'+harga+'", stok = "'+stok+'", total = "'+total+'" where id_transaksi = "'+id+'"');
  DM.zqry_transaksi.ExecSQL;

  DM.zqry_transaksi.SQL.Clear;
  DM.zqry_transaksi.Active:=False;
  DM.zqry_transaksi.SQL.Text:=sql;
  DM.zqry_transaksi.Active:=True;
  Application.MessageBox('Data Transaksi Berhasil Diubah','Ubah Transaksi',MB_OK+MB_ICONINFORMATION);

  edt_username.Clear;
  edt_kode.Clear;
  edt_matang.Clear;
  edt_harga.Clear;
  edt_stok.Clear;
  edt_total.Clear;
end;

procedure TForm9.btn3Click(Sender: TObject);
var
  id, user, kode, matang, harga, total, stok, sql : string;
begin
  id:=edt_idtrans.Text;
  user:=edt_username.Text;
  kode:=edt_kode.Text;
  matang:=edt_matang.Text;
  harga:=edt_harga.Text;
  total:=edt_total.Text;
  stok:=edt_stok.Text;
  sql:=DM.zqry_transaksi.SQL.Text;

  DM.zqry_transaksi.Active:=False;
  DM.zqry_transaksi.SQL.Clear;
  DM.zqry_transaksi.SQL.Add('delete from transaksi where id_transaksi = "'+id+'"');
  DM.zqry_transaksi.ExecSQL;

  DM.zqry_transaksi.SQL.Clear;
  DM.zqry_transaksi.Active:=False;
  DM.zqry_transaksi.SQL.Text:=sql;
  DM.zqry_transaksi.Active:=True;
  Application.MessageBox('Data Transaksi Berhasil Dihapus','Hapus Transaksi',MB_OK+MB_ICONINFORMATION);

  edt_username.Clear;
  edt_kode.Clear;
  edt_matang.Clear;
  edt_harga.Clear;
  edt_stok.Clear;
  edt_total.Clear;
end;

procedure TForm9.btn4Click(Sender: TObject);
begin
  if (Application.MessageBox('Ingin Kembali?','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    Form9.Hide;
    form2.show;
  end;
end;

end.
