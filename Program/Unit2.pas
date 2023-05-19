unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, acPNG;

type
  TForm2 = class(TForm)
    img1: TImage;
    btn1: TButton;
    img2: TImage;
    img3: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img4: TImage;
    lbl3: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit5, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
  if (Application.MessageBox('Ingin Kembali?','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    Form1.lbledt1.Clear;
    Form1.lbledt2.Clear;

    form1.show;
    form2.hide;
  end;

end;

procedure TForm2.img3Click(Sender: TObject);
begin
  if (Application.MessageBox('Menuju Form User','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    form2.Hide;
    form7.show;
  end;
end;

procedure TForm2.img2Click(Sender: TObject);
begin
  if (Application.MessageBox('Menuju Form Stocks','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    form2.Hide;
    form8.show;
  end;
end;

procedure TForm2.img4Click(Sender: TObject);
begin
  if (Application.MessageBox('Menuju Form Transaksi','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    form2.Hide;
    form9.show;
  end;
end;

end.
 