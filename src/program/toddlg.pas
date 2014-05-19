unit TODdlg;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons;

type

  { TTODdialog }

  TTODdialog = class(TForm)
    BitBtn1: TBitBtn;
    Content: TPanel;
    Footer: TPanel;
    SpeedButton1: TSpeedButton;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  TODdialog: TTODdialog;

implementation

{$R *.lfm}

end.

