object frmDmodMain: TfrmDmodMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 271
  Width = 361
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 88
    Top = 56
  end
  object qCreateSql: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      ' '
      'CREATE TABLE IF NOT EXISTS TBL_FORM ('
      #9'FORM_ID  integer PRIMARY KEY AUTOINCREMENT ,'
      '   '#9'FORM_NAME WideStringMemo UNIQUE  ,'
      #9'FORM_CAPTION WideStringMemo,'
      '        FORM_SQL WideStringMemo    ,'
      '        FORM_NOTE WideStringMemo   ,'
      '        FORM_CREATESQL WideStringMemo    ,'
      '        FORM_MENUINDEX integer     '
      ' '
      ') ')
    Left = 32
    Top = 120
  end
  object qDropSql: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'DROP  TABLE IF EXISTS TBL_FORM ;'
      'DROP  TABLE IF EXISTS TBL_USERS; ')
    Left = 120
    Top = 120
  end
  object qtbl_form: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from TBL_FORM ')
    Left = 200
    Top = 120
  end
end
