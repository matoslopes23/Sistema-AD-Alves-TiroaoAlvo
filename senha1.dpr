program senha1;

uses
  Forms,
  senha in 'senha.pas' {Login},
  UPrincipal in 'UPrincipal.pas' {principal},
  UCliente in 'UCliente.pas' {cliente},
  UFuncionario in 'UFuncionario.pas' {funcionario},
  UArmas in 'UArmas.pas' {armas},
  UServicos in 'UServicos.pas' {servicos},
  UNovoServico in 'UNovoServico.pas' {Novoservico},
  UTabelas in 'UTabelas.pas' {Tabelas: TDataModule},
  UCadastrarFuncionario in 'UCadastrarFuncionario.pas' {CadastrarFuncionario},
  Ualterarfunc in 'Ualterarfunc.pas' {AlterarFunc},
  UCadastarArmas in 'UCadastarArmas.pas' {CadastrarArmas},
  UAlterarArmas in 'UAlterarArmas.pas' {AlterarArmas},
  UCadastrarCli in 'UCadastrarCli.pas' {CadastrarCli},
  UAlterarCli in 'UAlterarCli.pas' {AlterarCli},
  Ulogin in 'Ulogin.pas' {CadastrodeUsuario},
  Ucadastrologin in 'Ucadastrologin.pas' {Cadastro},
  URelatorios in 'URelatorios.pas' {relatorios},
  UImprimirRelCli in 'UImprimirRelCli.pas' {ImprimirCli},
  URelClientes in 'URelClientes.pas' {RelCli},
  UAlterusu in 'UAlterusu.pas' {alterarUsuario},
  URelServ in 'URelServ.pas' {relserv},
  UImprimirRel in 'UImprimirRel.pas' {ImprimirServ};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(Tprincipal, principal);
  Application.CreateForm(Tcliente, cliente);
  Application.CreateForm(Tfuncionario, funcionario);
  Application.CreateForm(Tarmas, armas);
  Application.CreateForm(Tservicos, servicos);
  Application.CreateForm(TNovoservico, Novoservico);
  Application.CreateForm(TTabelas, Tabelas);
  Application.CreateForm(TCadastrarFuncionario, CadastrarFuncionario);
  Application.CreateForm(TAlterarFunc, AlterarFunc);
  Application.CreateForm(TCadastrarArmas, CadastrarArmas);
  Application.CreateForm(TAlterarArmas, AlterarArmas);
  Application.CreateForm(TCadastrarCli, CadastrarCli);
  Application.CreateForm(TAlterarCli, AlterarCli);
  Application.CreateForm(TCadastrodeUsuario, CadastrodeUsuario);
  Application.CreateForm(TCadastro, Cadastro);
  Application.CreateForm(Trelatorios, relatorios);
  Application.CreateForm(TImprimirCli, ImprimirCli);
  Application.CreateForm(TRelCli, RelCli);
  Application.CreateForm(TalterarUsuario, alterarUsuario);
  Application.CreateForm(Trelserv, relserv);
  Application.CreateForm(TImprimirServ, ImprimirServ);
  Application.Run;
end.
