unit URelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Trelatorios = class(TForm)
    Button1: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relatorios: Trelatorios;

implementation

uses URelClientes, URelServ;

{$R *.dfm}

procedure Trelatorios.Button1Click(Sender: TObject);
begin
  RelCli.Showmodal;
end;

procedure Trelatorios.Button3Click(Sender: TObject);
begin
  relserv.showmodal;
end;

end.
