unit URelServ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask;

type
  Trelserv = class(TForm)
    RelServ: TDBGrid;
    op: TRadioGroup;
    GrupoPeriodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DataInicial: TMaskEdit;
    DataFinal: TMaskEdit;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    btVisualizar: TBitBtn;
    btImprimir: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure opClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relserv: Trelserv;

implementation

uses UTabelas, UPrincipal, UImprimirRel;

{$R *.dfm}

procedure Trelserv.BitBtn4Click(Sender: TObject);
begin
  close;

end;

procedure Trelserv.BitBtn1Click(Sender: TObject);
var texto,Inicial,Final:string;
begin
  Tabelas.relserv.Close;
  Tabelas.relserv.SQL.Clear;

  if op.ItemIndex=0 then
  begin
    Tabelas.relserv.SQL.Add('Select * from Servicos order by dataserv');
    //ImprimirEmprestimos.Titulo.Caption:='Todos Emprestimos Cadastrados';
  end;


  if op.ItemIndex=1 then
  begin
    Inicial:=Copy(DataInicial.Text,4,3)+Copy(DataInicial.Text,1,3)+Copy(DataInicial.Text,7,4);
    Final:=Copy(DataFinal.Text,4,3)+Copy(DataFinal.Text,1,3)+Copy(DataFinal.Text,7,4);
    Tabelas.relserv.SQL.Add('Select * from Servicos where (DATASERV>='+QuotedStr(Inicial)+') and (DATASERV<='+QuotedStr(Final)+')');
  end;

  Tabelas.relserv.Open;
  if Tabelas.relserv.IsEmpty=True then
  begin
    ShowMessage('Nenhum registro encontrado');
    btVisualizar.Enabled:=False;
    btImprimir.Enabled:=False;
  end else
  begin
    btVisualizar.Enabled:=True;
    btImprimir.Enabled:=True;
  end;


end;

procedure Trelserv.FormShow(Sender: TObject);
begin
  GrupoPeriodo.Visible:=False;
  btVisualizar.Enabled:=False;
  btImprimir.Enabled:=False;
end;

procedure Trelserv.opClick(Sender: TObject);
begin
  if op.ItemIndex=0 then
  begin
    GrupoPeriodo.Visible:=False;
  end;

  if op.ItemIndex=1 then
  begin
    GrupoPeriodo.Visible:=True;
  end;

end;

procedure Trelserv.btVisualizarClick(Sender: TObject);
begin
   ImprimirServ.QuickRep1.Preview;
end;

end.
