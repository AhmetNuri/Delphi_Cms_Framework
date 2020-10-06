object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'FrmMain'
  ClientHeight = 201
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgMain: TPageControl
    Left = 0
    Top = 0
    Width = 374
    Height = 201
    Align = alClient
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    OwnerDraw = True
    Left = 232
    Top = 48
    object Admin1: TMenuItem
      Caption = 'Admin'
      object Admin2: TMenuItem
        Caption = 'Add New Form'
        OnClick = Admin2Click
      end
    end
    object OpenRunTimeForms1: TMenuItem
      Caption = 'Open Run Time Forms'
    end
    object About1: TMenuItem
      Caption = 'About'
      object About2: TMenuItem
        Caption = 'V 0.1'
      end
    end
  end
  object TimerFormCreate: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerFormCreateTimer
    Left = 232
    Top = 112
  end
end
