program Delphi_CMS_Framework;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FrmMain},
  uTemlate1 in 'uTemlate1.pas' {frmTemplate},
  uDmodMain in 'uDmodMain.pas' {frmDmodMain: TDataModule},
  uAdminForm in 'uAdminForm.pas' {frmAdminForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TfrmDmodMain, frmDmodMain);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TfrmTemplate, frmTemplate);
  Application.CreateForm(TfrmAdminForm, frmAdminForm);
  Application.Run;
end.
