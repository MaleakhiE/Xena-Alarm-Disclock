unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  TForm4 = class(TForm)
    lbl_judul: TLabel;
    lbl1: TLabel;
    Image1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    img10: TImage;
    img11: TImage;
    img12: TImage;
    img13: TImage;
    img14: TImage;
    pnl1: TPanel;
    lbl_pembayaran: TLabel;
    img15: TImage;
    lbl_metodepembayaran: TLabel;
    lbl_uang: TLabel;
    lbl_total: TLabel;
    mmo1: TMemo;
    edt_jumlahuang: TEdit;
    btn_bayar: TBitBtn;
    mmo2: TMemo;
    btn_kembali: TBitBtn;
    lbl_barang1: TLabel;
    lbl_barang2: TLabel;
    lbl_barang3: TLabel;
    lbl_barang4: TLabel;
    lbl_barang5: TLabel;
    lbl_barang6: TLabel;
    lbl_barang7: TLabel;
    lbl_barang8: TLabel;
    lbl_barang9: TLabel;
    lbl_barang10: TLabel;
    lbl_barang11: TLabel;
    lbl_barang12: TLabel;
    lbl_kembalian: TLabel;
    cbb_metodepengiriman: TComboBox;
    img1: TImage;
    lbl_pengiriman: TLabel;
    lbl2: TLabel;
    btn_printhasil: TBitBtn;
    lbl_voucher: TLabel;
    edt_voucher: TEdit;
    edt_barang1: TEdit;
    edt_barang2: TEdit;
    edt_barang3: TEdit;
    edt_barang4: TEdit;
    edt_barang5: TEdit;
    edt_barang6: TEdit;
    edt_barang7: TEdit;
    edt_barang8: TEdit;
    edt_barang9: TEdit;
    edt_barang10: TEdit;
    edt_barang11: TEdit;
    edt_barang12: TEdit;
    procedure cbb_metodepengirimanChange(Sender: TObject);
    procedure btn_kembaliClick(Sender: TObject);
    procedure btn_printhasilClick(Sender: TObject);
    procedure btn_bayarClick(Sender: TObject);
    procedure edt_barang1Click(Sender: TObject);
    procedure edt_barang2Click(Sender: TObject);
    procedure edt_barang3Click(Sender: TObject);
    procedure edt_barang4Click(Sender: TObject);
    procedure edt_barang5Click(Sender: TObject);
    procedure edt_barang6Click(Sender: TObject);
    procedure edt_barang7Click(Sender: TObject);
    procedure edt_barang8Click(Sender: TObject);
    procedure edt_barang9Click(Sender: TObject);
    procedure edt_barang10Click(Sender: TObject);
    procedure edt_barang11Click(Sender: TObject);
    procedure edt_barang12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  kirim,total,barang1,barang2,barang3,barang4,barang5,barang6,barang7,barang8,barang9,barang10,barang11,barang12 : Integer;
  disc, totalharga,bayar,uang : Integer;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm4.cbb_metodepengirimanChange(Sender: TObject);
begin
 if cbb_metodepengiriman.ItemIndex = 0 then
 begin
   lbl_pengiriman.Caption := 'Rp.20.000,-';
   kirim:= 20000;
 end
 else if cbb_metodepengiriman.ItemIndex = 1 then
 begin
   lbl_pengiriman.Caption := 'Rp.35.899,-';
   kirim:= 35899;
 end
 else if cbb_metodepengiriman.ItemIndex = 2 then
 begin
    lbl_pengiriman.Caption := 'Rp.34.000,-';
    kirim:= 34000;
 end
 else if cbb_metodepengiriman.ItemIndex = 3 then
 begin
    lbl_pengiriman.Caption := 'Rp.0,-';
    kirim:= 0;
 end;
end;
procedure TForm4.btn_kembaliClick(Sender: TObject);
begin
 Form4.Hide;
 Form2.Show;
end;

procedure TForm4.btn_printhasilClick(Sender: TObject);
begin
   barang1:=StrToInt(edt_barang1.text);
   barang2:=StrToInt(edt_barang2.text);
   barang3:=StrToInt(edt_barang3.text);
   barang4:=StrToInt(edt_barang4.text);
   barang5:=StrToInt(edt_barang5.text);
   barang6:=StrToInt(edt_barang6.text);
   barang7:=StrToInt(edt_barang7.text);
   barang8:=StrToInt(edt_barang8.text);
   barang9:=StrToInt(edt_barang9.text);
   barang10:=StrToInt(edt_barang10.text);
   barang11:=StrToInt(edt_barang11.text);
   barang12:=StrToInt(edt_barang12.text);
   mmo1.Clear;
   mmo1.Lines.Append('--------Total Pembelanjaan--------');
   mmo1.Lines.Append('1. XZZ6L(SS)    - '+(edt_barang1.Text) +' Pcs '+' - Rp. '+IntToStr(barang1*1300000));
   mmo1.Lines.Append('2. XZZ6L(BLCK)  - '+(edt_barang2.Text) +' Pcs '+' - Rp. '+IntToStr(barang2*1250000));
   mmo1.Lines.Append('3. XZZ6L(GRN)   - '+(edt_barang3.Text) +' Pcs '+' - Rp. '+IntToStr(barang3*1199000));
   mmo1.Lines.Append('4. XZZ6L(YLW)   - '+(edt_barang4.Text) +' Pcs '+' - Rp. '+IntToStr(barang4*1100000));
   mmo1.Lines.Append('5. XZZ6L(RED)   - '+(edt_barang5.Text) +' Pcs '+' - Rp. '+IntToStr(barang5*1150000));
   mmo1.Lines.Append('6. XZZ6S(SS)    - '+(edt_barang6.Text) +' Pcs '+' - Rp. '+IntToStr(barang6*1780000));
   mmo1.Lines.Append('7. XZZ6SS(SS)   - '+(edt_barang7.Text) +' Pcs '+' - Rp. '+IntToStr(barang7*1900000));
   mmo1.Lines.Append('8. XZZ6SW(SS)   - '+(edt_barang8.Text) +' Pcs '+' - Rp. '+IntToStr(barang8*1850000));
   mmo1.Lines.Append('9. XZZ6S(WHT)   - '+(edt_barang9.Text) +' Pcs '+' - Rp. '+IntToStr(barang9*1680000));
   mmo1.Lines.Append('10. XYY         - '+(edt_barang10.Text)+' Pcs '+' - Rp. '+IntToStr(barang10*1690000));
   mmo1.Lines.Append('11. XYY6S       - '+(edt_barang11.Text)+' Pcs '+' - Rp. '+IntToStr(barang11*1790000));
   mmo1.Lines.Append('12. XXZ         - '+(edt_barang12.Text)+' Pcs '+' - Rp. '+IntToStr(barang12*2489999));
   mmo1.Lines.Append('------------------------------------');
   mmo1.Lines.Append('Metode Pengiriman - '+(cbb_metodepengiriman.Text) +''+ ( lbl_pengiriman.Caption ));
   if (edt_voucher.text = 'XENA1212') then
   begin
      mmo1.Lines.Append('Voucher Anda - XENA1212 ( Disc. Rp.12.000,- )');
      disc:=12000;
   end
   else if (edt_voucher.Text <> 'XENA1212') then
   begin
     Application.MessageBox('Voucher Anda Telah Expired atau Salah!', '',
       MB_OK + MB_ICONSTOP);
   end ;
   if (edt_voucher.Text = '-') then
   begin
     disc := 0;
   end;
   total:= (barang1*1300000)+(barang2*1250000)+(barang3*1199000)+(barang4*1100000)+(barang5*1150000)+(barang6*1780000)+(barang7*1900000)+(barang8*1850000)+ (barang9*1680000) +(barang10*169000)+(barang10*1690000)+(barang11*1790000)+(barang12*2489999);
   totalharga:= (total + kirim)  - disc;
   mmo1.Lines.Append('------------------------------------');
   mmo1.Lines.Append('Total Harga  : Rp. ' + IntToStr(totalharga));
   if (cbb_metodepengiriman.text) = '-' then
   begin
     Application.MessageBox('Masukan Metode Pengiriman !', '', MB_OK +
       MB_ICONSTOP);
     mmo1.clear;
   end;
   if (total)= 0 then
   begin
     Application.MessageBox('Masukan Barang Yang Akan Di Beli Dengan Benar!',
       '', MB_OK + MB_ICONSTOP);
     mmo1.clear;
   end;
end;
procedure TForm4.btn_bayarClick(Sender: TObject);
begin
    mmo2.Clear;
    uang:=StrToInt(edt_jumlahuang.text);
    bayar:=uang - totalharga;
    mmo2.Lines.Append('Total Kembalian  :  Rp. ' + IntToStr(bayar));
    mmo2.Lines.Append('--------------Terima Kasih !--------------');
    if (uang) < (totalharga) then
    begin
      Application.MessageBox('Uang Yang Anda Berikan Kurang !', '', MB_OK +
        MB_ICONSTOP);
      mmo2.clear;
    end;
end;

procedure TForm4.edt_barang1Click(Sender: TObject);
begin
 edt_barang1.Clear;
 edt_barang1.Text := '0';
end;

procedure TForm4.edt_barang2Click(Sender: TObject);
begin
 edt_barang2.Clear;
 edt_barang2.Text := '0';
end;

procedure TForm4.edt_barang3Click(Sender: TObject);
begin
 edt_barang3.Clear;
 edt_barang3.Text := '0';
end;

procedure TForm4.edt_barang4Click(Sender: TObject);
begin
 edt_barang4.Clear;
 edt_barang4.Text := '0';
end;

procedure TForm4.edt_barang5Click(Sender: TObject);
begin
  edt_barang5.Clear;
  edt_barang5.Text := '0';
end;

procedure TForm4.edt_barang6Click(Sender: TObject);
begin
  edt_barang6.Clear;
  edt_barang6.Text := '0';
end;

procedure TForm4.edt_barang7Click(Sender: TObject);
begin
  edt_barang7.Clear;
  edt_barang7.Text := '0';
end;

procedure TForm4.edt_barang8Click(Sender: TObject);
begin
  edt_barang8.Clear;
  edt_barang8.Text := '0';
end;

procedure TForm4.edt_barang9Click(Sender: TObject);
begin
  edt_barang9.Clear;
  edt_barang9.Text := '0';
end;

procedure TForm4.edt_barang10Click(Sender: TObject);
begin
  edt_barang10.Clear;
  edt_barang10.Text := '0';
end;

procedure TForm4.edt_barang11Click(Sender: TObject);
begin
  edt_barang11.Clear;
  edt_barang11.Text := '0';
end;

procedure TForm4.edt_barang12Click(Sender: TObject);
begin
  edt_barang12.Clear;
  edt_barang12.Text := '0';
end;



end.
