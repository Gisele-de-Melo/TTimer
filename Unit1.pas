//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    StartTime: TDateTime;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  // Inicia o contador ao clicar no botão
  StartTime := Now;
  Timer1.Enabled := True;
  Label1.Caption := 'Tempo decorrido: 0 segundos';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Define o intervalo do timer em milissegundos (1000ms = 1 segundo)
  Timer1.Interval := 1000;
  //Define que o contador não será inicializado ao abrir o formulário.
  Timer1.Enabled := False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  ElapsedTime: TDateTime;
begin
  // Calcula o tempo decorrido desde o início
  ElapsedTime := Now - StartTime;
  // Atualiza o rótulo com o tempo decorrido formatado
  Label1.Caption := 'Tempo decorrido: ' + FormatDateTime('hh:nn:ss', ElapsedTime);
end;

end.


