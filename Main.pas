//------------------------------------------------------------------------------
// Design by amtbonechen@gmail.com                                             -
//------------------------------------------------------------------------------

unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,

  Frame,

  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Ani,
  FMX.Objects;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    f2: TFrame1;
    procedure OkClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure Finish1(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
     f2 := TFrame1.Create(nil);
     f2.Parent := Self;
     f2.OkButton.OnClick     := OkClick;
     f2.CancelButton.OnClick := CancelClick;

     f2.PosXAni.PropertyName  := 'Position.Y';
     f2.PosXAni.StartValue    := Self.ClientHeight;
     f2.PosXAni.StopValue     := (Self.ClientHeight - f2.MainLayout.Height) / 2;
     f2.PosXAni.Duration      := 0.2;
     f2.PosXAni.Inverse       := False;
     f2.PosXAni.Interpolation := TInterpolationType.itLinear;

     f2.PosXAni.Enabled       := True;
end;

procedure TForm1.OkClick(Sender: TObject);
begin
     CancelClick(Sender);
     ShowMessage('Ok');
end;

procedure TForm1.CancelClick(Sender: TObject);
begin
     f2.PosXAni.Enabled       := False;

     f2.PosXAni.PropertyName  := 'Position.Y';
     f2.PosXAni.StartValue    := (Self.ClientHeight - f2.MainLayout.Height) / 2;
     f2.PosXAni.StopValue     := Self.ClientHeight;
     f2.PosXAni.Duration      := 0.2;
     f2.PosXAni.Inverse       := False;
     f2.PosXAni.Interpolation := TInterpolationType.itLinear;

     f2.PosXAni.Enabled       := True;
     f2.PosXAni.OnFinish      := Finish1;
end;

procedure TForm1.Finish1(Sender: TObject);
begin
     f2.Parent := nil;
     FreeAndNil(f2);
end;

end.
