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
    Connected = True
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
  object qImportDemoDatas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'DROP  TABLE IF  EXISTS MUSTERI;'
      'DROP  TABLE IF  EXISTS TBL_CARI;'
      'DROP TABLE IF  EXISTS TBL_FORM;'
      'DROP TABLE IF  EXISTS USERS;'
      '-- tablo yap'#305's'#305' d'#246'k'#252'l'#252'yor main.MUSTERI'
      'CREATE TABLE IF NOT EXISTS MUSTERI ('
      #9'MUSTERI_ID  integer PRIMARY KEY AUTOINCREMENT ,'
      '   '#9'MUSTERI_LOGINNAME WideStringMemo UNIQUE  ,'
      #9'MUSTERI_FULLNAME WideStringMemo,'
      '    MUSTERI_TEL WideStringMemo    ,'
      '    MUSTERI_NOTE WideStringMemo    '
      ' '
      ');'
      ''
      '-- main.MUSTERI: -1 rows tablosu i'#231'in veriler indiriliyor'
      '/*!40000 ALTER TABLE "MUSTERI" DISABLE KEYS */;'
      
        'INSERT INTO "MUSTERI" ("MUSTERI_ID", "MUSTERI_LOGINNAME", "MUSTE' +
        'RI_FULLNAME", "MUSTERI_TEL", "MUSTERI_NOTE") VALUES'
      #9'(1, '#39'm1'#39', NULL, NULL, NULL),'
      #9'(2, '#39'm2'#39', NULL, NULL, NULL),'
      #9'(3, '#39'm3'#39', NULL, NULL, NULL);'
      '/*!40000 ALTER TABLE "MUSTERI" ENABLE KEYS */;'
      ''
      '-- tablo yap'#305's'#305' d'#246'k'#252'l'#252'yor main.TBL_CARI'
      'CREATE TABLE IF NOT EXISTS TBL_CARI ('
      #9'CARI_ID  integer PRIMARY KEY AUTOINCREMENT ,'
      '   '#9'CARI_NAME WideStringMemo   ,'
      #9'CARI_SURNAME WideStringMemo,'
      '        CARI_SQL WideStringMemo    '
      '     '
      ' '
      ');'
      ''
      '-- main.TBL_CARI: -1 rows tablosu i'#231'in veriler indiriliyor'
      '/*!40000 ALTER TABLE "TBL_CARI" DISABLE KEYS */;'
      '/*!40000 ALTER TABLE "TBL_CARI" ENABLE KEYS */;'
      ''
      '-- tablo yap'#305's'#305' d'#246'k'#252'l'#252'yor main.TBL_FORM'
      'CREATE TABLE IF NOT EXISTS TBL_FORM ('
      #9'FORM_ID  integer PRIMARY KEY AUTOINCREMENT ,'
      '   '#9'FORM_NAME WideStringMemo UNIQUE  ,'
      #9'FORM_CAPTION WideStringMemo,'
      '        FORM_SQL WideStringMemo    ,'
      '        FORM_NOTE WideStringMemo   ,'
      '        FORM_CREATESQL WideStringMemo    ,'
      '        FORM_MENUINDEX integer     '
      ' '
      ');'
      ''
      '-- main.TBL_FORM: -1 rows tablosu i'#231'in veriler indiriliyor'
      '/*!40000 ALTER TABLE "TBL_FORM" DISABLE KEYS */;'
      
        'INSERT INTO "TBL_FORM" ("FORM_ID", "FORM_NAME", "FORM_CAPTION", ' +
        '"FORM_SQL", "FORM_NOTE", "FORM_CREATESQL", "FORM_MENUINDEX") VAL' +
        'UES'
      
        #9'(1, '#39'USERS'#39', '#39'USERS FORM'#39', '#39'SELECT * FROM USERS'#39', '#39'USER LOGIN'#39',' +
        ' '#39' '
      'CREATE TABLE IF NOT EXISTS USERS ('
      #9'USERS_ID  integer PRIMARY KEY AUTOINCREMENT ,'
      '   '#9'USERS_LOGINNAME WideStringMemo UNIQUE  ,'
      #9'USERS_FULLNAME WideStringMemo,'
      '    USERS_PASS WideStringMemo    ,'
      '    USERS_NOTE WideStringMemo    '
      ' '
      ')'#39', NULL),'
      
        #9'(3, '#39'MUSTERI'#39', '#39'M'#220#350'TER'#304#39', '#39'SELECT * FROM MUSTERI'#39', NULL, '#39'CREAT' +
        'E TABLE IF NOT EXISTS MUSTERI ('
      #9'MUSTERI_ID  integer PRIMARY KEY AUTOINCREMENT ,'
      '   '#9'MUSTERI_LOGINNAME WideStringMemo UNIQUE  ,'
      #9'MUSTERI_FULLNAME WideStringMemo,'
      '    MUSTERI_TEL WideStringMemo    ,'
      '    MUSTERI_NOTE WideStringMemo    '
      ' '
      ')'#39', NULL);'
      '/*!40000 ALTER TABLE "TBL_FORM" ENABLE KEYS */;'
      ''
      '-- tablo yap'#305's'#305' d'#246'k'#252'l'#252'yor main.USERS'
      'CREATE TABLE IF NOT EXISTS USERS ('
      #9'USERS_ID  integer PRIMARY KEY AUTOINCREMENT ,'
      '   '#9'USERS_LOGINNAME WideStringMemo UNIQUE  ,'
      #9'USERS_FULLNAME WideStringMemo,'
      '    USERS_PASS WideStringMemo    ,'
      '    USERS_NOTE WideStringMemo    '
      ' '
      ');'
      ''
      '-- main.USERS: -1 rows tablosu i'#231'in veriler indiriliyor'
      '/*!40000 ALTER TABLE "USERS" DISABLE KEYS */;'
      
        'INSERT INTO "USERS" ("USERS_ID", "USERS_LOGINNAME", "USERS_FULLN' +
        'AME", "USERS_PASS", "USERS_NOTE") VALUES'
      #9'(1, '#39'test'#39', NULL, NULL, NULL),'
      #9'(2, '#39'test2'#39', NULL, NULL, NULL);'
      '/*!40000 ALTER TABLE "USERS" ENABLE KEYS */;'
      ''
      '/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '#39#39') */;'
      
        '/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NU' +
        'LL, 1, @OLD_FOREIGN_KEY_CHECKS) */;'
      '/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;')
    Left = 88
    Top = 192
    MacroData = <
      item
        Value = Null
        Name = '40000'
      end
      item
        Value = Null
        Name = '40101'
      end
      item
        Value = Null
        Name = '40014'
      end>
  end
end
