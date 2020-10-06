object frmTemplate: TfrmTemplate
  Left = 0
  Top = 0
  Caption = 'frmTemplate'
  ClientHeight = 153
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 353
    Height = 104
    Align = alClient
    DataSource = dsMaster
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 353
    Height = 49
    DataSource = dsMaster
    Align = alTop
    TabOrder = 1
  end
  object dsMaster: TDataSource
    DataSet = QMaster
    Left = 280
    Top = 96
  end
  object QMaster: TFDQuery
    Connection = frmDmodMain.FDConnection1
    Left = 280
    Top = 40
  end
end
