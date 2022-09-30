unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    img1: TImage;
    pnl1: TPanel;
    img2: TImage;
    lbl_judul: TLabel;
    lbl_username: TLabel;
    lbl_password: TLabel;
    edt_username: TEdit;
    edt_password: TEdit;
    btn_login: TBitBtn;
    procedure btn_loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn_loginClick(Sender: TObject);
begin
  if (edt_username.text ='ekiaja123') and (edt_password.text = '12345') then
  begin
    Application.MessageBox('Selamat Datang , Maleakhi Ekklesia !' + #13#10 + 
      '         Xena Secure ur Bike !', '', MB_OK + MB_ICONINFORMATION);
    Form1.Hide;
    Form2.Show;
  end
  else if (edt_username.Text <> 'ekiaja123') then
  begin
    Application.MessageBox('Username Yang Anda Masukkan Salah !', 'Warming', MB_OK + MB_ICONSTOP);
  end
  else if (edt_username.Text <> '12345') then
  begin
    Application.MessageBox('Password Yang Anda Masukkan Salah !', 'Warming', MB_OK
    + MB_ICONSTOP);
  end ;
  edt_username.Clear;
  edt_password.Clear;
end;
end.
