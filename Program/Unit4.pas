unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls,Unit3, frxClass;

type
  TForm4 = class(TForm)
    img1: TImage;
    mmo1: TMemo;
    mmo2: TMemo;
    mmo3: TMemo;
    lst1: TListBox;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    frxrprt1: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  semua, i : Integer;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
  semua:=0;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
  if (Application.MessageBox('Ingin Membayar?','Pembayaran',MB_OKCANCEL)=ID_OK) then begin
    frxrprt1.LoadFromFile('struk.fr3');
    TfrxMemoView(frxrprt1.FindObject('memo7')).Memo.Text:=mmo2.Text;
    TfrxMemoView(frxrprt1.FindObject('memo8')).Memo.Text:=mmo3.Text;
    TfrxMemoView(frxrprt1.FindObject('memo9')).Memo.Text:=lst1.Items.Text;
    TfrxMemoView(frxrprt1.FindObject('memo11')).Memo.Text:=Form3.edt4.Text;
    TfrxMemoView(frxrprt1.FindObject('memo12')).Memo.Text:=edt1.Text;
    frxrprt1.ShowReport();
    MessageBox(Handle,'Daging Sedang Dimasak','Pembelian Berhasil',MB_ICONINFORMATION);

    mmo2.Lines.Clear;
    mmo3.Lines.Clear;
    lst1.Clear;
    edt1.Clear;

    Form3.img2.Visible:=False;
    Form3.img3.Visible:=False;
    Form3.img4.Visible:=False;
    Form3.img5.Visible:=False;
    Form3.cbb1.Text:='';
    Form3.cbb2.Text:='';
    Form3.cbb3.Text:='';
    Form3.edt1.Text:='1';
    Form3.edt2.Clear;
  end;

end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  Form4.Hide;
  Form3.Show;

  Form3.img2.Visible:=False;
  Form3.img3.Visible:=False;
  Form3.img4.Visible:=False;
  Form3.img5.Visible:=False;
  Form3.cbb1.Text:='';
  Form3.cbb2.Text:='';
  Form3.cbb3.Text:='';
  Form3.edt1.Text:='1';
  Form3.edt2.Clear;
  Form3.edt3.Clear;

end;

end.
