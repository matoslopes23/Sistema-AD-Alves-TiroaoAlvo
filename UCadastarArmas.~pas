unit UCadastarArmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, IBTable;

type
  TCadastrarArmas = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    codigo: TEdit;
    tipo: TComboBox;
    calibre: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    IBTable1: TIBTable;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastrarArmas: TCadastrarArmas;

implementation

uses UTabelas;

{$R *.dfm}

procedure TCadastrarArmas.BitBtn1Click(Sender: TObject);
begin
if codigo.Text='' then
  begin
    ShowMessage('O codigo deve ser informado');
    codigo.SetFocus;
    exit;
  end;

  if Tabelas.ibarmas.locate('CODIGO',codigo.Text,[locaseinsensitive])=true then
  begin
    ShowMessage('Este nome já foi cadastrado');
    codigo.SetFocus;
    exit;
  end;

   tabelas.ibarmas.Last;
   tabelas.ibarmas.Append;
   tabelas.ibarmas.Edit;
   tabelas.ibarmas.FieldByName('Codigo').AsString:=codigo.text;
   tabelas.ibarmas.FieldByName('Tipo').AsString:=tipo.text;
   tabelas.ibarmas.FieldByName('Calibre').AsString:=calibre.text;
   tabelas.ibarmas.post;
   tabelas.ibarmas.ApplyUpdates;
   tabelas.IBTransaction1.CommitRetaining;
   ShowMessage('Arma cadastrada com sucesso');
   close;


end;

procedure TCadastrarArmas.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
