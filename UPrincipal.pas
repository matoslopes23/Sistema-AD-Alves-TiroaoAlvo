unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, ExtCtrls, XPMan, jpeg;

type
  Tprincipal = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    XPManifest1: TXPManifest;
    BitBtn3: TBitBtn;
    Cadastros1: TMenuItem;
    Movimentos1: TMenuItem;
    Impresso1: TMenuItem;
    Utilitrios1: TMenuItem;
    Ferramentas1: TMenuItem;
    Ajuda1: TMenuItem;
    Servio1: TMenuItem;
    Armas1: TMenuItem;
    Funcionrios1: TMenuItem;
    Servio2: TMenuItem;
    RelatriodeClientes1: TMenuItem;
    RelatriodeArmas1: TMenuItem;
    RelatriodeServio1: TMenuItem;
    SobreoPrograma1: TMenuItem;
    Image1: TImage;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Servio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;

implementation

uses UCliente, UFuncionario, UArmas, UServicos, Ulogin, URelatorios;

{$R *.dfm}

procedure Tprincipal.BitBtn2Click(Sender: TObject);
begin
   application.Terminate;
end;

procedure Tprincipal.BitBtn1Click(Sender: TObject);
begin
  cliente.showmodal;
end;

procedure Tprincipal.BitBtn3Click(Sender: TObject);
begin
  funcionario.showmodal;
end;

procedure Tprincipal.BitBtn4Click(Sender: TObject);
begin
  armas.showmodal;
end;

procedure Tprincipal.BitBtn5Click(Sender: TObject);
begin
  servicos.showmodal;
end;

procedure Tprincipal.BitBtn7Click(Sender: TObject);
begin
 cadastrodeusuario.showmodal;
end;

procedure Tprincipal.BitBtn6Click(Sender: TObject);
begin
  relatorios.showmodal;
end;

procedure Tprincipal.Servio1Click(Sender: TObject);
begin
   cliente.showmodal;
end;

end.
