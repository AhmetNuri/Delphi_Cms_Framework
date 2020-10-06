unit uAdminForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  THackDBGrid = Class(TDBGrid)
  End;
   THackPageControl = Class(TPageControl)
  End;


  TfrmAdminForm = class(TForm)
    PageControl1: TPageControl;
    tiNewFormCreate: TTabSheet;
    DBGrid1: TDBGrid;
    dsQtbl_form: TDataSource;
    Panel1: TPanel;
    btnOpen: TButton;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    btnCreateTable: TButton;

    procedure btnOpenClick(Sender: TObject);
    procedure btnCreateTableClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

var
  frmAdminForm: TfrmAdminForm;

implementation

{$R *.dfm}

uses uDmodMain;

procedure TfrmAdminForm.btnCreateTableClick(Sender: TObject);
var
  SqlStr: string;
begin
  SqlStr := frmDmodMain.qtbl_form.FieldByName('FORM_CREATESQL').Value;
  with frmDmodMain.qCreateSql do
  begin
    close;
    sql.clear;
    sql.Text := SqlStr;
    ExecSQL;
  end;
end;

procedure TfrmAdminForm.btnOpenClick(Sender: TObject);
begin
  dsQtbl_form.DataSet.open;

end;

procedure TfrmAdminForm.FormShow(Sender: TObject);
begin
  THackDBGrid(DBGrid1).DefaultColWidth := 250;
  THackDBGrid(DBGrid1).DefaultRowHeight := 100;
  THackPageControl(PageControl1).TabHeight := 50;

  end;

end.
