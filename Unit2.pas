unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  TForm2 = class(TForm)
    img1: TImage;
    lbl_judul: TLabel;
    img2: TImage;
    img3: TImage;
    rb_promo: TRadioButton;
    rb_belanja: TRadioButton;
    img4: TImage;
    btn_signout: TBitBtn;
    procedure rb_promoClick(Sender: TObject);
    procedure rb_belanjaClick(Sender: TObject);
    procedure btn_signoutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit1;

{$R *.dfm}

procedure TForm2.rb_promoClick(Sender: TObject);
begin
 Form2.Hide;
 form3.show;
end;

procedure TForm2.rb_belanjaClick(Sender: TObject);
begin
 Form2.Hide;
 form4.Show;
end;

procedure TForm2.btn_signoutClick(Sender: TObject);
begin
 Form2.Hide;
 Application.MessageBox('Terima Kasih Telah Berbelanja, Maleakhi Ekklesia !', 
   '', MB_OK + MB_ICONWARNING);
 Form1.Show;
end;

end.
