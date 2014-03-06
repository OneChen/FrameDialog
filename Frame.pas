unit Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Rtti, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs,
  FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.Layouts, FMX.Effects;

type
  TFrame1 = class(TFrame)
    PosXAni: TFloatAnimation;
    TopToolBar: TToolBar;
    CaptionLabel: TLabel;
    CancelButton: TButton;
    OkButton: TButton;
    MainLayout: TLayout;
    MainRectangle: TRectangle;
    BackRectangle: TRectangle;
    MainShadowEffect: TShadowEffect;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
