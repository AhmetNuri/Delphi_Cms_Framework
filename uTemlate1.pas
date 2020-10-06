unit uTemlate1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type

  THackDBGrid = Class(TDBGrid)

  End;

  TfrmTemplate = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    dsMaster: TDataSource;
    QMaster: TFDQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTemplate: TfrmTemplate;

implementation

{$R *.dfm}

uses uDmodMain;

procedure TfrmTemplate.FormShow(Sender: TObject);
begin
  THackDBGrid(DBGrid1).DefaultColWidth := 150;
  THackDBGrid(DBGrid1).DefaultRowHeight := 50;
end;

end.
