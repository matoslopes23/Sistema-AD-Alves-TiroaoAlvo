unit UAlterarArmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, jpeg, ExtCtrls;

type
  TAlterarArmas = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlterarArmas: TAlterarArmas;

implementation

uses UTabelas;

{$R *.dfm}

procedure TAlterarArmas.BitBtn1Click(Sender: TObject);
begin
  Tabelas.ibarmas.Post; //salvar as alterações
  tabelas.ibarmas.ApplyUpdates; // atualiza tabelas
  tabelas.IBTransaction1.CommitRetaining; // salva no HD
  ShowMessage('Arma alterad com sucesso');
  Close;
end;

procedure TAlterarArmas.BitBtn2Click(Sender: TObject);
begin
  Tabelas.ibarmas.Cancel;
  Tabelas.ibarmas.CancelUpdates;
  Tabelas.IBTransaction1.RollbackRetaining;
  Close;
end;

end.
