-- --------------------------------------------------------
-- Sunucu:                       C:\Users\ahmet\OneDrive - Pamukkale University\Belgeler\Embarcadero\Studio\Projects\FrameWorkJoomla\Settings
-- Sunucu sürümü:                3.30.1
-- Sunucu İşletim Sistemi:       
-- HeidiSQL Sürüm:               11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- main için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS "main";
USE "main";

-- tablo yapısı dökülüyor main.MUSTERI
CREATE TABLE IF NOT EXISTS MUSTERI (
	MUSTERI_ID  integer PRIMARY KEY AUTOINCREMENT ,
   	MUSTERI_LOGINNAME WideStringMemo UNIQUE  ,
	MUSTERI_FULLNAME WideStringMemo,
    MUSTERI_TEL WideStringMemo    ,
    MUSTERI_NOTE WideStringMemo    
 
);

-- main.MUSTERI: -1 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE "MUSTERI" DISABLE KEYS */;
INSERT INTO "MUSTERI" ("MUSTERI_ID", "MUSTERI_LOGINNAME", "MUSTERI_FULLNAME", "MUSTERI_TEL", "MUSTERI_NOTE") VALUES
	(1, 'm1', NULL, NULL, NULL),
	(2, 'm2', NULL, NULL, NULL),
	(3, 'm3', NULL, NULL, NULL);
/*!40000 ALTER TABLE "MUSTERI" ENABLE KEYS */;

-- tablo yapısı dökülüyor main.TBL_CARI
CREATE TABLE IF NOT EXISTS TBL_CARI (
	CARI_ID  integer PRIMARY KEY AUTOINCREMENT ,
   	CARI_NAME WideStringMemo   ,
	CARI_SURNAME WideStringMemo,
        CARI_SQL WideStringMemo    
     
 
);

-- main.TBL_CARI: -1 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE "TBL_CARI" DISABLE KEYS */;
/*!40000 ALTER TABLE "TBL_CARI" ENABLE KEYS */;

-- tablo yapısı dökülüyor main.TBL_FORM
CREATE TABLE IF NOT EXISTS TBL_FORM (
	FORM_ID  integer PRIMARY KEY AUTOINCREMENT ,
   	FORM_NAME WideStringMemo UNIQUE  ,
	FORM_CAPTION WideStringMemo,
        FORM_SQL WideStringMemo    ,
        FORM_NOTE WideStringMemo   ,
        FORM_CREATESQL WideStringMemo    ,
        FORM_MENUINDEX integer     
 
);

-- main.TBL_FORM: -1 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE "TBL_FORM" DISABLE KEYS */;
INSERT INTO "TBL_FORM" ("FORM_ID", "FORM_NAME", "FORM_CAPTION", "FORM_SQL", "FORM_NOTE", "FORM_CREATESQL", "FORM_MENUINDEX") VALUES
	(1, 'USERS', 'USERS FORM', 'SELECT * FROM USERS', 'USER LOGIN', ' 
CREATE TABLE IF NOT EXISTS USERS (
	USERS_ID  integer PRIMARY KEY AUTOINCREMENT ,
   	USERS_LOGINNAME WideStringMemo UNIQUE  ,
	USERS_FULLNAME WideStringMemo,
    USERS_PASS WideStringMemo    ,
    USERS_NOTE WideStringMemo    
 
)', NULL),
	(3, 'MUSTERI', 'MÜŞTERİ', 'SELECT * FROM MUSTERI', NULL, 'CREATE TABLE IF NOT EXISTS MUSTERI (
	MUSTERI_ID  integer PRIMARY KEY AUTOINCREMENT ,
   	MUSTERI_LOGINNAME WideStringMemo UNIQUE  ,
	MUSTERI_FULLNAME WideStringMemo,
    MUSTERI_TEL WideStringMemo    ,
    MUSTERI_NOTE WideStringMemo    
 
)', NULL);
/*!40000 ALTER TABLE "TBL_FORM" ENABLE KEYS */;

-- tablo yapısı dökülüyor main.USERS
CREATE TABLE IF NOT EXISTS USERS (
	USERS_ID  integer PRIMARY KEY AUTOINCREMENT ,
   	USERS_LOGINNAME WideStringMemo UNIQUE  ,
	USERS_FULLNAME WideStringMemo,
    USERS_PASS WideStringMemo    ,
    USERS_NOTE WideStringMemo    
 
);

-- main.USERS: -1 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE "USERS" DISABLE KEYS */;
INSERT INTO "USERS" ("USERS_ID", "USERS_LOGINNAME", "USERS_FULLNAME", "USERS_PASS", "USERS_NOTE") VALUES
	(1, 'test', NULL, NULL, NULL),
	(2, 'test2', NULL, NULL, NULL);
/*!40000 ALTER TABLE "USERS" ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
