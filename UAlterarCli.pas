unit UAlterarCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, jpeg, ExtCtrls;

type
  TAlterarCli = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlterarCli: TAlterarCli;

implementation

uses UTabelas;

{$R *.dfm}

procedure TAlterarCli.BitBtn1Click(Sender: TObject);
begin
 Tabelas.ibclientes.Post; //salvar as alterações
  tabelas.ibclientes.ApplyUpdates; // atualiza tabelas
  tabelas.IBTransaction1.CommitRetaining; // salva no HD
  ShowMessage('cliente alterado com sucesso');
  Close;
end;

procedure TAlterarCli.BitBtn2Click(Sender: TObject);
begin
Tabelas.ibclientes.Cancel;
  Tabelas.ibclientes.CancelUpdates;
  Tabelas.IBTransaction1.RollbackRetaining;
  Close;
end;

end.
