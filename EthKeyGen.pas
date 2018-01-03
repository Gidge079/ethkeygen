unit EthKeyGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Clipbrd, Buttons;

type
  TForm1 = class(TForm)
    Generate: TButton;
    AlwaysOnTop: TButton;
    KeyBox: TEdit;
    BitBtn1: TBitBtn;
    procedure GenerateClick(Sender: TObject);
    procedure AlwaysOnTopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.GenerateClick(Sender: TObject);
var
  iloop : integer;
  options, key : string;
begin
  Randomize;
  iloop := 1;
  options := '1234567890abcdef';
  key := '';
   while iloop < 65 do
    begin
      key := key + Copy(options, Random(16) + 1, 1);
      inc(iloop);
    end;
   KeyBox.Text := key;
   Clipboard.AsText := key;
end;

procedure TForm1.AlwaysOnTopClick(Sender: TObject);
begin
  case form1.FormStyle of
    fsStayOnTop : begin
                    form1.FormStyle := fsNormal;
                    AlwaysOnTop.Caption := 'Not on Top';
                  end;
    fsNormal : begin
                  form1.FormStyle := fsStayOnTop;
                  AlwaysOnTop.Caption := 'Always on Top';
                end;
end;

end;

end.
