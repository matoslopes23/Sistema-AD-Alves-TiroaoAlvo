unit Ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBTable;

type
  TCadastrodeUsuario = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Cadastrar: TBitBtn;
    Sair: TBitBtn;
    pesq: TEdit;
    b1: TButton;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    IBTable1: TIBTable;
    nome: TCheckBox;
    procedure SairClick(Sender: TObject);
    procedure CadastrarClick(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure nomeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastrodeUsuario: TCadastrodeUsuario;

implementation

uses UTabelas, Ucadastrologin, Ualterarfunc, UAlterusu;

{$R *.dfm}

procedure TCadastrodeUsuario.SairClick(Sender: TObject);
begin
close;
end;

procedure TCadastrodeUsuario.CadastrarClick(Sender: TObject);
begin
cadastro.showmodal;
end;

procedure TCadastrodeUsuario.b1Click(Sender: TObject);
begin
  if pesq.Text='' then
  begin
   label1.Caption:='INFORME UM NOME';
   label1.Font.Color:=clred;
  end;
  if tabelas.iblogin.Locate('USUARIO',pesq.Text,[lopartialkey])=true then
   begin
    label1.Caption:='NOME ENCONTRADO';
    label1.Font.Color:=clgreen;
   end;
   if tabelas.iblogin.Locate('USUARIO',pesq.Text,[lopartialkey])=false then
   begin
    label1.Caption:='NOME NÃO ENCONTRADO';
    label1.Font.Color:=clred;
   end;
 end;
procedure TCadastrodeUsuario.nomeClick(Sender: TObject);
begin
if nome.Checked=true then
   begin
    pesq.Enabled:=true;
    b1.Enabled:=true;
   end;
  if nome.Checked=false then
    begin
    pesq.Enabled:=false;
    pesq.Clear;
    b1.Enabled:=false;
   end; 
end;

procedure TCadastrodeUsuario.BitBtn1Click(Sender: TObject);
begin
  tabelas.iblogin.Edit;
  AlterarUsuario.showModal;
end;

end.
