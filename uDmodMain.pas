unit uDmodMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrmDmodMain = class(TDataModule)
    FDConnection1: TFDConnection;
    qCreateSql: TFDQuery;
    qDropSql: TFDQuery;
    qtbl_form: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDmodMain: TfrmDmodMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TfrmDmodMain.DataModuleCreate(Sender: TObject);
var
path : string;
begin
  path := ExtractFilePath(ParamStr(0));

  FDConnection1.Params.Add('Database='+path+'Settings');
  FDConnection1.Connected := True;
  qCreateSql.ExecSQL;
end;

end.
