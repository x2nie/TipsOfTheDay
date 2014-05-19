unit tod_dlg;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls;

type

  { TTODdialog }

  TTODdialog = class(TForm)
    BitBtn1: TBitBtn;
    Content: TPanel;
    Footer: TPanel;
    Label1: TLabel;
    btnConfigure: TSpeedButton;
    procedure btnConfigureClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FConfiguring: boolean;
    FContentHeight: integer;
    procedure SetConfiguring(AValue: boolean);
    { private declarations }
  public
    { public declarations }
    property ContentHeight : integer read FContentHeight write FContentHeight;
    property Configuring : boolean read FConfiguring write SetConfiguring;
  end;

//  TTODConfigPanel = class(

var
  TODdialog: TTODdialog;

implementation

{$R *.lfm}

{ TTODdialog }

procedure TTODdialog.FormCreate(Sender: TObject);
begin
  FContentHeight := Footer.Top;
  Footer.Color := clBtnFace;
  Content.Align :=alClient;
end;

procedure TTODdialog.btnConfigureClick(Sender: TObject);
begin
  Configuring := not Configuring;
end;

procedure TTODdialog.SetConfiguring(AValue: boolean);
begin
  if FConfiguring=AValue then Exit;
  FConfiguring:=AValue;
  btnConfigure.Down := AValue;
  if AValue then
  begin
  end;


end;

end.

