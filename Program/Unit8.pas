unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit6, StdCtrls, Mask, EditType, EditTypeDB, Grids, DBGrids,
  SMDBGrid, jpeg, ExtCtrls;

type
  TForm8 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    smdbgrd1: TSMDBGrid;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt_kode: TDBEditTyped;
    btn4: TButton;
    edt_bagian: TEdit;
    edt_grade: TEdit;
    edt_stok: TEdit;
    edt_harga: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
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
  Form8: TForm8;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
var
  kode, bagian, grade, stok, harga, sql : string;
begin
  kode:=edt_kode.Text;
  bagian:=edt_bagian.Text;
  grade:=edt_grade.Text;
  stok:=edt_stok.Text;
  harga:=edt_harga.Text;
  sql:=DM.zqry_daging.SQL.Text;

  DM.zqry_daging.Active:=False;
  DM.zqry_daging.SQL.Clear;
  DM.zqry_daging.SQL.Text:='insert into daging (kode_daging, bagian_daging, grade, stok, harga) values ("'+kode+'","'+bagian+'","'+grade+'","'+stok+'","'+harga+'")';
  DM.zqry_daging.ExecSQL;

  DM.zqry_daging.Active:=False;
  DM.zqry_daging.SQL.Text:=sql;
  DM.zqry_daging.Active:=True;
  Application.MessageBox('Data Daging Berhasil Ditambah','Tambah Daging',MB_OK+MB_ICONINFORMATION);

  edt_bagian.Clear;
  edt_grade.Clear;
  edt_stok.Clear;
  edt_harga.Clear;
end;

procedure TForm8.btn2Click(Sender: TObject);
var
  kode, bagian, grade, stok, harga, sql : string;
begin
  kode:=edt_kode.Text;
  bagian:=edt_bagian.Text;
  grade:=edt_grade.Text;
  stok:=edt_stok.Text;
  harga:=edt_harga.Text;
  sql:=DM.zqry_daging.SQL.Text;

  DM.zqry_daging.Active:=False;
  DM.zqry_daging.SQL.Clear;
  DM.zqry_daging.SQL.Add('update daging set bagian_daging = "'+bagian+'", grade = "'+grade+'", stok = "'+stok+'", harga = "'+harga+'" where kode_daging = "'+kode+'"');
  DM.zqry_daging.ExecSQL;

  DM.zqry_daging.SQL.Clear;
  DM.zqry_daging.Active:=False;
  DM.zqry_daging.SQL.Text:=sql;
  DM.zqry_daging.Active:=True;
  Application.MessageBox('Data Daging Berhasil Diubah','Ubah Daging',MB_OK+MB_ICONINFORMATION);

  edt_bagian.Clear;
  edt_grade.Clear;
  edt_stok.Clear;
  edt_harga.Clear;
end;

procedure TForm8.btn3Click(Sender: TObject);
var
  kode, bagian, grade, stok, harga, sql : string;
begin
  kode:=edt_kode.Text;
  bagian:=edt_bagian.Text;
  grade:=edt_grade.Text;
  stok:=edt_stok.Text;
  harga:=edt_harga.Text;
  sql:=DM.zqry_daging.SQL.Text;

  DM.zqry_daging.Active:=False;
  DM.zqry_daging.SQL.Clear;
  DM.zqry_daging.SQL.Add('delete from daging where kode_daging = "'+kode+'"');
  DM.zqry_daging.ExecSQL;

  DM.zqry_daging.SQL.Clear;
  DM.zqry_daging.Active:=False;
  DM.zqry_daging.SQL.Text:=sql;
  DM.zqry_daging.Active:=True;
  Application.MessageBox('Data Daging Berhasil Dihapus','Hapus Daging',MB_OK+MB_ICONINFORMATION);

  edt_bagian.Clear;
  edt_grade.Clear;
  edt_stok.Clear;
  edt_harga.Clear;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
  if (Application.MessageBox('Ingin Kembali?','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    Form8.Hide;
    form2.show;
  end;
end;

end.
 