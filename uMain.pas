unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ExtCtrls, uDmodMain, uTemlate1;

type
   THackPageControl = Class(TPageControl)
  End;
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    TimerFormCreate: TTimer;
    Admin1: TMenuItem;
    Admin2: TMenuItem;
    OpenRunTimeForms1: TMenuItem;
    pgMain: TPageControl;
    About1: TMenuItem;
    About2: TMenuItem;
    LoadsampleDatas1: TMenuItem;
    procedure TimerFormCreateTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Admin2Click(Sender: TObject);
    procedure LoadsampleDatas1Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    function createMenuItem(MenuName: String): TMenuItem;
    procedure FormFinder(Sender: TObject);
    function CreateRunTimeForm(FromName: String; ismodalform : Boolean): TfrmTemplate;

  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses uAdminForm;

procedure TFrmMain.Admin2Click(Sender: TObject);
var
  TabSheet: TTabSheet;

begin
  try
    TabSheet := TTabSheet.Create(pgMain);
    TabSheet.Caption := 'Admin Panel';
    TabSheet.PageControl := pgMain;

    frmAdminForm := tfrmAdminForm.Create(TabSheet);
    frmAdminForm.Parent := TabSheet;
    frmAdminForm.BorderStyle := bsNone;
    frmAdminForm.Align := alClient;
    frmAdminForm.Show;
  finally

  end;
end;

function TFrmMain.createMenuItem(MenuName: String): TMenuItem;
begin
  Result := TMenuItem.Create(OpenRunTimeForms1);
  // MainMenu1.Items.Add(Result);
  Menu.Items[1].Add(Result);
  Result.Name := MenuName;
  Result.Caption := MenuName;
  Result.Tag := 0;
  Result.OnClick := FormFinder;

end;

function TFrmMain.CreateRunTimeForm(FromName: String;ismodalform : Boolean): TfrmTemplate;
 var
  TabSheet: TTabSheet;
begin
  if ismodalform then
  begin
    Result := TfrmTemplate.Create(nil);
    Result.Name := FromName;
    // Result.Close;
    Result.QMaster.SQL.Text := frmDmodMain.qtbl_form.FieldByName
      ('FORM_SQL').Value;
    Result.QMaster.Open();
    Result.ShowModal;

  end
  else
  begin

    TabSheet := TTabSheet.Create(pgMain);
    TabSheet.Caption := FromName;
    TabSheet.PageControl := pgMain;
    pgMain.ActivePage := TabSheet;
    Result := TfrmTemplate.Create(TabSheet);
    Result.Parent := TabSheet;
    Result.BorderStyle := bsNone;
    Result.Align := alClient;

    Result.QMaster.SQL.Text := frmDmodMain.qtbl_form.FieldByName
      ('FORM_SQL').Value;
    Result.QMaster.Open();
    Result.Show;
  end;
end;

procedure TFrmMain.FormFinder(Sender: TObject);
var
  t: string;
  menuitemTmp: TMenuItem;
begin
  with frmDmodMain.qtbl_form do
  begin
    Filtered := False;
    OnFilterRecord := nil;
    menuitemTmp := (Sender as TMenuItem);
    t := menuitemTmp.Name;
    Filter := 'FORM_NAME LIKE ''%' + t + '%''';
    Filtered := True;
    First;
    if RecordCount > 0 then
    begin

      CreateRunTimeForm(FieldByName('FORM_NAME').Value,False);
    end;

  end;

end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  TimerFormCreate.Enabled := True;
end;

procedure TFrmMain.LoadsampleDatas1Click(Sender: TObject);
begin
  frmDmodMain.qImportDemoDatas.ExecSQL;
  frmDmodMain.FDConnection1.Close;
  frmDmodMain.FDConnection1.Open;
  TimerFormCreate.Enabled := True;
end;

procedure TFrmMain.TimerFormCreateTimer(Sender: TObject);
begin
  TimerFormCreate.Enabled := False;
  THackPageControl(pgMain).TabHeight := 50;

  pgMain.Align := alClient;
  with frmDmodMain.qtbl_form do
  begin
    Open;
    First;
    while not Eof do
    begin
       createMenuItem(FieldByName('FORM_NAME').Value);
      Next;
    end;
  end;
end;

end.
