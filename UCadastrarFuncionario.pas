unit UCadastrarFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Mask, DB, IBCustomDataSet,
  IBTable, IBDatabase;

type
  TCadastrarFuncionario = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    nome: TEdit;
    bairro: TEdit;
    endereco: TEdit;
    tele: TMaskEdit;
    Label5: TLabel;
    func: TComboBox;
    Label6: TLabel;
    Image1: TImage;
    IBTable1: TIBTable;
    sal: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure funcChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastrarFuncionario: TCadastrarFuncionario;

implementation

uses UTabelas, UArmas;

{$R *.dfm}

procedure TCadastrarFuncionario.BitBtn1Click(Sender: TObject);
var cod:integer;
begin
if nome.Text='' then
  begin
    ShowMessage('O Nome deve ser informado');
    Nome.SetFocus;
    exit;
  end;

  if Tabelas.ibfuncionario.locate('NOME',nome.Text,[locaseinsensitive])=true then
  begin
    ShowMessage('Este nome já foi cadastrado');
    Nome.SetFocus;
    exit;
  end;

   tabelas.ibfuncionario.Last;
   cod:=tabelas.ibfuncionario.fieldbyname('Codigo').Asinteger+1;
   tabelas.ibfuncionario.Append;
   tabelas.ibfuncionario.Edit;
   tabelas.ibfuncionario.FieldByName('Codigo').AsInteger:=COD;
   tabelas.ibfuncionario.FieldByName('Nome').AsString:=nome.text;
   tabelas.ibfuncionario.FieldByName('Endereco').AsString:=endereco.text;
   tabelas.ibfuncionario.FieldByName('Bairro').AsString:=bairro.text;
   tabelas.ibfuncionario.FieldByName('Telefone').AsString:=tele.text;
   tabelas.ibfuncionario.FieldByName('Funcao').AsString:=func.text;
   tabelas.ibfuncionario.FieldByName('Salario').AsString:=sal.text;
   tabelas.ibfuncionario.post;
   tabelas.ibfuncionario.ApplyUpdates;
   tabelas.IBTransaction1.CommitRetaining;
   ShowMessage('Funcionário cadastrado com sucesso');
   close;


end;

procedure TCadastrarFuncionario.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TCadastrarFuncionario.funcChange(Sender: TObject);
begin
  if func.Text='Mecânico' then
  begin
      sal.Text:='1.400';
  end else
  if func.Text='Ferreiro' then
  begin
      sal.Text:='1.300';
  end else
  if func.Text='Marceneiro' then
  begin
      sal.Text:='1.200';
  end;
end;

end.
