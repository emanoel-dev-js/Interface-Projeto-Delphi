unit UniLocFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery;

type
  TLocFuncionarios = class(TForm)
    pnlConteudo: TPanel;
    dbgrdGridLocalizarFuncionario: TDBGrid;
    pnlRadio: TPanel;
    RadioGroup1: TRadioGroup;
    pnlEdit: TPanel;
    edt1: TEdit;
    QryFuncionarios: TIBQuery;
    DataSource1: TDataSource;
    procedure dbgrdGridLocalizarFuncionarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LocFuncionarios: TLocFuncionarios;

implementation
uses
  UniFuncionarios;
{$R *.dfm}

procedure TLocFuncionarios.dbgrdGridLocalizarFuncionarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  FrmFuncionarios.edt1.Text          := dbgrdGridLocalizarFuncionario.DataSource.DataSet.FieldByName('FUN_ID').AsString;
  FrmFuncionarios.edtFunNome.Text          := dbgrdGridLocalizarFuncionario.DataSource.DataSet.FieldByName('FUN_NOME').AsString;
  FrmFuncionarios.cbbFunGenero.Text  := dbgrdGridLocalizarFuncionario.DataSource.DataSet.FieldByName('FUN_GENERO').AsString;
  FrmFuncionarios.edtIDADE.Text          := dbgrdGridLocalizarFuncionario.DataSource.DataSet.FieldByName('FUN_IDADE').AsString;
  FrmFuncionarios.edt2.Text          := dbgrdGridLocalizarFuncionario.DataSource.DataSet.FieldByName('FUN_NUMERO').AsString;
  FrmFuncionarios.edt3.Text          := dbgrdGridLocalizarFuncionario.DataSource.DataSet.FieldByName('FUN_EMAIL').AsString;
  Close;
end;

procedure TLocFuncionarios.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  begin
    QryFuncionarios.Close;
    case RadioGroup1.ItemIndex of
      0: QryFuncionarios.SQL.Text := 'SELECT * FROM FUNCIONARIOS WHERE UPPER(FUN_NOME) LIKE UPPER(''%' + edt1.Text + '%'')';
      1: QryFuncionarios.SQL.Text := 'SELECT * FROM FUNCIONARIOS WHERE FOR_ID = ' + edt1.Text;
    end;

    QryFuncionarios.Open;
    Key := 0;
  end;
end;

end.
