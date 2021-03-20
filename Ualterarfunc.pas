unit Ualterarfunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, Mask;

type
  TAlterarFunc = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlterarFunc: TAlterarFunc;

implementation

uses UTabelas;

{$R *.dfm}

procedure TAlterarFunc.BitBtn1Click(Sender: TObject);
begin
Tabelas.ibfuncionario.Post; //salvar as alterações
  tabelas.ibfuncionario.ApplyUpdates; // atualiza tabelas
  tabelas.IBTransaction1.CommitRetaining; // salva no HD
  ShowMessage('Funcionário alterado com sucesso');
  Close;
end;

procedure TAlterarFunc.BitBtn2Click(Sender: TObject);
begin
  Tabelas.ibfuncionario.Cancel;
  Tabelas.ibfuncionario.CancelUpdates;
  Tabelas.IBTransaction1.RollbackRetaining;
  Close;
end;

end.
