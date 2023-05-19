unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Unit6;

type
  TForm3 = class(TForm)
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    cbb2: TComboBox;
    cbb3: TComboBox;
    edt1: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt2: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    btn1: TButton;
    btn2: TButton;
    img6: TImage;
    btn3: TButton;
    cbb1: TComboBox;
    lbl7: TLabel;
    btn4: TSpeedButton;
    lbl8: TLabel;
    btn5: TSpeedButton;
    edt3: TEdit;
    edt4: TEdit;
    lbl9: TLabel;
    procedure btn3Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure cbb2Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  qty: Integer;
  total, jumlah, harga, price : Real;
  temp: string;

implementation

uses Unit4, Unit1;

{$R *.dfm}


procedure TForm3.btn3Click(Sender: TObject);
begin
  if ((cbb1.Text = '') and (cbb2.Text = '') and (cbb3.Text = '')) then
    MessageBox(Handle,'Masukkan Bagian, Grade, dan Tingkat Kematangan','Error',MB_ICONERROR)

  else if ((cbb1.Text = '') and (cbb2.Text = '')) then
    MessageBox(Handle,'Masukkan Bagian dan Grade Daging','Error',MB_ICONERROR)

  else if ((cbb1.Text = '') and (cbb3.Text = '')) then
    MessageBox(Handle,'Masukkan Bagian dan Tingkat Kematangan Daging','Error',MB_ICONERROR)

  else if ((cbb2.Text = '') and (cbb3.Text = '')) then
    MessageBox(Handle,'Masukkan Grade dan Tingkat Kematangan Daging','Error',MB_ICONERROR)

  else if cbb1.Text = '' then
    MessageBox(Handle,'Masukkan Bagian Daging','Error',MB_ICONERROR)

  else if cbb2.Text = '' then
    MessageBox(Handle,'Masukkan Grade Daging','Error',MB_ICONERROR);

  jumlah := StrToFloat(edt1.Text);
  // Bagian Sirloin
  if cbb1.Text = 'Sirloin' then
  begin
    if cbb3.Text = '' then begin
      MessageBox(Handle,'Masukkan Tingkat Kematangan Daging','Error',MB_ICONERROR);
    end

    else if cbb2.Text = 'A1' then
    begin
      price := 100000;
      harga := 100000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='SIRA1';
    end

    else if cbb2.Text = 'A2' then
    begin
      price := 350000;
      harga := 350000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='SIRA2';
    end

    else if cbb2.Text = 'A3' then
    begin
      price := 800000;
      harga := 800000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='SIRA3';
    end

    else if cbb2.Text = 'A4' then
    begin
      price := 1000000;
      harga := 1000000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='SIRA4';
    end

    else if cbb2.Text = 'A5' then
    begin
      price := 1800000;
      harga := 1800000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='SIRA5';
    end

    else
  end;

  // Bagian Tenderloin
  if cbb1.Text = 'Tenderloin' then
  begin
    if cbb3.Text = '' then begin
      MessageBox(Handle,'Masukkan Tingkat Kematangan Daging','Error',MB_ICONERROR);
    end

    else if cbb2.Text = 'A1' then
    begin
      price := 150000;
      harga := 150000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TENA1';
    end

    else if cbb2.Text = 'A2' then
    begin
      price := 450000;
      harga := 450000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TENA2';
    end

    else if cbb2.Text = 'A3' then
    begin
      price := 900000;
      harga := 900000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TENA3';
    end

    else if cbb2.Text = 'A4' then
    begin
      price := 1500000;
      harga := 1500000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TENA4';
    end

    else if cbb2.Text = 'A5' then
    begin
      price := 2000000;
      harga := 2000000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TENA5';
    end;
  end;

  // Bagian Rib Eye
  if cbb1.Text = 'Rib Eye' then
  begin
    if cbb3.Text = '' then begin
      MessageBox(Handle,'Masukkan Tingkat Kematangan Daging','Error',MB_ICONERROR);
    end

    else if cbb2.Text = 'A1' then
    begin
      price := 180000;
      harga := 180000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='RIBA1';
    end

    else if cbb2.Text = 'A2' then
    begin
      price := 500000;
      harga := 500000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='RIBA2';
    end

    else if cbb2.Text = 'A3' then
    begin
      price := 1100000;
      harga := 1100000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='RIBA3';
    end

    else if cbb2.Text = 'A4' then
    begin
      price := 1800000;
      harga := 1800000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='RIBA4';
    end

    else if cbb2.Text = 'A5' then
    begin
      price := 2400000;
      harga := 2400000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='RIBA5';
    end;
  end;

  // Bagian Tomahawk
  if cbb1.Text = 'Tomahawk' then
  begin
    if cbb3.Text = '' then begin
      MessageBox(Handle,'Masukkan Tingkat Kematangan Daging','Error',MB_ICONERROR);
    end

    else if cbb2.Text = 'A1' then
    begin
      price := 250000;
      harga := 250000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TOMA1';
    end

    else if cbb2.Text = 'A2' then
    begin
      price := 750000;
      harga := 750000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TOMA2';
    end

    else if cbb2.Text = 'A3' then
    begin
      price := 1500000;
      harga := 1500000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TOMA3';
    end

    else if cbb2.Text = 'A4' then
    begin
      price := 2400000;
      harga := 2400000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TOMA4';
    end

    else if cbb2.Text = 'A5' then
    begin
      price := 3000000;
      harga := 3000000*jumlah;
      edt2.Text:=FloatToStr(harga);
      edt3.Text:='TOMA5';
    end;
  end;
end;


procedure TForm3.cbb1Change(Sender: TObject);
begin
  img2.Visible:=False;
  img3.Visible:=False;
  img4.Visible:=False;
  img5.Visible:=False;
  cbb2.Enabled:=True;
  cbb3.Enabled:=True;
  cbb2.Text:='';
  cbb3.Text:='';
  edt1.Text:='1';
  edt2.Clear;
  edt3.Clear;

  if cbb1.Text = 'Sirloin' then
    begin
      img2.Visible:=True;
    end

  else if cbb1.Text = 'Tenderloin' then
    begin
      img3.Visible:=True;
    end

  else if cbb1.Text = 'Rib Eye' then
    begin
      img4.Visible:=True;
    end

  else if cbb1.Text = 'Tomahawk' then
    begin
      img5.Visible:=True;
    end;
end;

procedure TForm3.cbb2Change(Sender: TObject);
begin
  edt2.Clear;
  edt1.Text:='1';
  cbb3.Text:='';
end;

procedure TForm3.btn2Click(Sender: TObject);
var
  id, user, kode, matang, harga, total_price, stok, sql : string;
  i : Integer;
  list_hrg : integer;
begin
  user:=edt4.Text;
  kode:=edt3.Text;
  matang:=cbb3.Text;
  harga:=FloatToStr(price);
  total_price:=edt2.Text;
  stok:=edt1.Text;
  sql:=DM.zqry_transaksi.SQL.Text;
  total:=0;
  list_hrg:=0;
  if edt2.Text = '' then begin
    MessageBox(Handle,'Silahkan Cek Harga Dahulu','Error',MB_ICONERROR)
  end

  else begin
    Application.MessageBox('Barang Sudah Masuk Keranjang','Form Pembelian');
    Application.MessageBox('Pencet Keranjang Jika Ingin Chekout','Form Pembelian',MB_ICONINFORMATION);

    DM.zqry_transaksi.Active:=False;
    DM.zqry_transaksi.SQL.Clear;
    DM.zqry_transaksi.SQL.Text:='insert into transaksi (id_transaksi, username, kode_daging, tingkat_kematangan, harga, stok, total) values ("NULL","'+user+'","'+kode+'","'+matang+'","'+harga+'","'+stok+'","'+total_price+'")';
    DM.zqry_transaksi.ExecSQL;

    DM.zqry_transaksi.Active:=False;
    DM.zqry_transaksi.SQL.Text:=sql;
    DM.zqry_transaksi.Active:=True;

    form4.mmo2.Lines.Append(cbb1.Text+'('+cbb2.Text+','+cbb3.Text+')');
    form4.mmo3.Lines.Append(edt1.Text);
    Form4.lst1.Items.Add(edt2.Text);

    for i:=0 to (Form4.lst1.Items.Count-1) do
    begin
      list_hrg:=StrToInt(Form4.lst1.Items.Strings[i]);
      total:=total+list_hrg;
    end;
//
//    total:=total+strtofloat(Form4.lst1.Items.Strings[list_hrg]);
    Form4.edt1.Text:=FloatToStr(total);
  end;

end;

procedure TForm3.img6Click(Sender: TObject);
begin
  if (Application.MessageBox('Ingin Checkout?','Peringatan',MB_OKCANCEL)=ID_OK) then
  begin
    Form3.Hide;
    Form4.Show;
    Application.MessageBox('Silahkan Bayar','Checkout');
  end;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  if (Application.MessageBox('Kembali Ke Halaman Utama?','Peringatan',MB_OKCANCEL)=ID_OK) then
  begin
    Form3.Hide;
    Form1.Show;

    Form1.lbledt1.Clear;
    Form1.lbledt2.Clear;
  end;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  qty:= StrToInt(edt1.Text);
  qty:=qty+1;
  edt1.Text:= IntToStr(qty);
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
  qty:= StrToInt(edt1.Text);
  qty:=qty-1;
  edt1.Text:= IntToStr(qty);
end;

end.
