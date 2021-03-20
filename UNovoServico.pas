unit UNovoServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, ExtCtrls, StdCtrls, DB, IBCustomDataSet,
  IBTable, Grids, DBGrids, Buttons, Mask;

type
  TNovoservico = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    NOME: TEdit;
    Cliente: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText1: TDBText;
    IBTable1: TIBTable;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    defArma: TComboBox;
    GroupBox7: TGroupBox;
    combo: TDateTimePicker;
    Label7: TLabel;
    GroupBox8: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btsalvar: TBitBtn;
    BitBtn4: TBitBtn;
    locArmas: TGroupBox;
    Label8: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    ok: TBitBtn;
    grade: TStringGrid;
    BitBtn6: TBitBtn;
    GroupBox10: TGroupBox;
    Label9: TLabel;
    Edit2: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    limpeza: TCheckBox;
    tpeca: TCheckBox;
    cano: TCheckBox;
    geral: TCheckBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Ar: TLabel;
    arma: TDBText;
    dataprev: TMaskEdit;
    GroupBox9: TGroupBox;
    Formapag: TComboBox;
    Label19: TLabel;
    Image1: TImage;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btsalvarClick(Sender: TObject);
    procedure tpecaClick(Sender: TObject);
    procedure limpezaClick(Sender: TObject);
    procedure canoClick(Sender: TObject);
    procedure geralClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Novoservico: TNovoservico;

implementation

uses UTabelas, UCadastrarCli, UCliente;
 var linhas:integer;
{$R *.dfm}

procedure TNovoservico.BitBtn6Click(Sender: TObject);
begin
if Tabelas.ibclientes.Locate('NOME',Nome.Text,
           [loPartialKey])=True then
    Cliente.Visible:=True
  else
  begin
    ShowMessage('Cliente não encontrado');
    Cliente.Visible:=False;
  if Application.MessageBox('Deseja cadastra cliente?','Confirmação',MB_YESNO)=IDYES then
  CadastrarCli.showmodal;
  end;
end;

procedure TNovoservico.BitBtn1Click(Sender: TObject);
begin
   locArmas.Visible:=true;
   Edit1.Text:='';
   ok.Enabled:=False;
   arma.Visible:=False;
   Edit1.SetFocus;
end;

procedure TNovoservico.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure TNovoservico.okClick(Sender: TObject);
begin
    if arma.Visible=True then
   begin
     Grade.Cells[0,linhas]:=IntToStr(Tabelas.ibarmas.FieldByName('CODIGO').AsInteger);
     Grade.Cells[1,linhas]:=Tabelas.ibarmas.FieldByName('TIPO').AsString;
     linhas:=linhas+1;
     Grade.RowCount:=Grade.RowCount+1;
     locArmas.Visible:=False;
   end else
     ShowMessage('Nã há arma selecionada');
end;

procedure TNovoservico.Button2Click(Sender: TObject);
begin
    if Tabelas.ibarmas.Locate('TIPO',Edit1.Text, [loPartialKey])=True then
  begin
      ok.Enabled:=True;
      arma.Visible:=True;
  end else
  begin
    ShowMessage('Arma não encontrado');
    ok.Enabled:=False;
    arma.Visible:=False;
    Edit1.SetFocus;
  end;

end;
procedure TNovoservico.FormShow(Sender: TObject);
begin
   Cliente.Visible:=False;
   locArmas.Visible:=False;
   Grade.Cells[0,0]:='Código';
   Grade.Cells[1,0]:='Tipo de Arma';
   Linhas:=1;
   DATAPREV.Text:=DateToStr(Date()+7);
end;

procedure TNovoservico.BitBtn2Click(Sender: TObject);
begin
   if Linhas>1 then
  begin
    Grade.RowCount:=Grade.RowCount-1;
    Linhas:=Linhas-1;
    Grade.Cells[0,Linhas]:='';
    Grade.Cells[1,Linhas]:='';
  end;
end;

procedure TNovoservico.btsalvarClick(Sender: TObject);

  var codserv,x:integer;
     // defArmas :String;
begin
  if Cliente.Visible=False then
  begin
    ShowMessage('Cliente não informado');
    btsalvar.SetFocus;
    exit;
  end;

  if Linhas=1 then
  begin
    ShowMessage('Selecione uma Arma');
    BitBtn1.SetFocus;
    exit;
  end;

  Tabelas.ibservicos.Last;
  codserv:=Tabelas.ibservicos.
                FieldByName('CODIGO').AsInteger+1;

  Tabelas.ibservicos.Append;
  Tabelas.ibservicos.FieldByName('CODIGO').
                               AsInteger:=codserv;
  Tabelas.ibservicos.FieldByName('DEFARMA').
                               AsString:=defArma.text;
  begin
    if limpeza.Checked=true then
   begin
     Tabelas.ibservicos.FieldByName('TIPOREP').
                               AsString:=limpeza.Caption;
   end else
   if tpeca.Checked=true then
   begin
     Tabelas.ibservicos.FieldByName('TIPOREP').
                               AsString:=tpeca.Caption;
   end else
    if cano.Checked=true then
   begin
     Tabelas.ibservicos.FieldByName('TIPOREP').
                               AsString:=cano.Caption;
   end else
   if geral.Checked=true then
   begin
     Tabelas.ibservicos.FieldByName('TIPOREP').
                               AsString:=geral.Caption;
   end;
  end;
  Tabelas.ibservicos.FieldByName('FORMPAG').
                               AsString:=Formapag.Text;
  Tabelas.ibservicos.FieldByName('VALTOT').
                               AsString:=edit2.Text;
  Tabelas.ibservicos.FieldByName('DATASERV').
                               AsDateTime:=Date();
  Tabelas.ibservicos.FieldByName('HORASERV').
                               AsDateTime:=Time();
  Tabelas.ibservicos.FieldByName('DATAPREV').
             AsDateTime:=StrToDate(DataPrev.text);
  Tabelas.ibservicos.FieldByName('RGCLI').AsString:=Tabelas.ibclientes.FieldByName('RG').AsString;
  Tabelas.ibservicos.Post;
  Tabelas.ibservicos.ApplyUpdates;

  for x:=1 to LINHAS-1 do
  begin

    Tabelas.ibitens.Append;
    Tabelas.ibitens.FieldByName('CODSERV').AsInteger:=codserv;
    Tabelas.ibitens.FieldByName('CODARMA').AsInteger:=StrToInt(Grade.Cells[0,x]);
    Tabelas.ibitens.Post;
    Tabelas.ibitens.ApplyUpdates;

  Tabelas.IBTransaction1.CommitRetaining;
  ShowMessage('Serviço realizado com sucesso');
  Close;

  end;


end;



procedure TNovoservico.tpecaClick(Sender: TObject);
begin
   if tpeca.Checked=true then
   begin
     edit2.Text:=label11.Caption;
   end;
end;



procedure TNovoservico.limpezaClick(Sender: TObject);
begin
 if limpeza.Checked=true then
   begin
     edit2.Text:=label10.Caption;
   end;
end;

procedure TNovoservico.canoClick(Sender: TObject);
begin
  if cano.Checked=true then
   begin
     edit2.Text:=label12.Caption;
   end;
end;

procedure TNovoservico.geralClick(Sender: TObject);
begin
  if geral.Checked=true then
   begin
     edit2.Text:=label13.Caption;
   end;
end;

end.
