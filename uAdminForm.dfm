object frmAdminForm: TfrmAdminForm
  Left = 0
  Top = 0
  Caption = 'frmAdminForm'
  ClientHeight = 250
  ClientWidth = 395
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 395
    Height = 209
    ActivePage = tiNewFormCreate
    Align = alClient
    TabOrder = 0
    object tiNewFormCreate: TTabSheet
      Caption = 'tiNewFormCreate'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 387
        Height = 140
        Align = alClient
        DataSource = dsQtbl_form
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 387
        Height = 41
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 1
        object btnOpen: TButton
          Left = 1
          Top = 1
          Width = 96
          Height = 39
          Align = alLeft
          Caption = 'btnOpen'
          TabOrder = 0
          OnClick = btnOpenClick
        end
        object DBNavigator1: TDBNavigator
          Left = 97
          Top = 1
          Width = 289
          Height = 39
          DataSource = dsQtbl_form
          Align = alClient
          TabOrder = 1
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 209
    Width = 395
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object btnCreateTable: TButton
      Left = 1
      Top = 1
      Width = 393
      Height = 39
      Align = alClient
      Caption = 'btnCreateTable'
      TabOrder = 0
      OnClick = btnCreateTableClick
    end
  end
  object dsQtbl_form: TDataSource
    DataSet = frmDmodMain.qtbl_form
    Left = 256
    Top = 56
  end
end
