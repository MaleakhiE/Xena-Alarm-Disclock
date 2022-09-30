unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    img1: TImage;
    lbl_judul: TLabel;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    lbl_barang1: TLabel;
    lbl_barang2: TLabel;
    lbl_barang3: TLabel;
    btn_checkout: TBitBtn;
    img6: TImage;
    lbl1: TLabel;
    btn_keluar: TBitBtn;
    procedure btn_checkoutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit4, Unit2;

{$R *.dfm}

procedure TForm3.btn_checkoutClick(Sender: TObject);
begin
 Form3.Hide;
 Form2.Show;
end;

end.
