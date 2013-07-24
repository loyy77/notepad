unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Memo1: TMemo;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure Open1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Memo1Enter(Sender: TObject);
    //自定义的过程
    procedure SetLineCount(Sender: TObject);
    procedure SetCharCount();
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Open1Click(Sender: TObject);
var filename:String;

begin
OpenDialog1.Execute  ;
 filename:=OpenDialog1.FileName;
 Memo1. Lines.LoadFromFile(filename);

end;

procedure TForm1.Save1Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
  Memo1.Lines.SaveToFile(SaveDialog1.FileName);


end;

procedure TForm1.N4Click(Sender: TObject);
begin
       close();
end;

procedure TForm1.N2Click(Sender: TObject);
var filename:String;

begin
  if OpenDialog1.Execute then
  begin
    filename:=OpenDialog1.FileName;
    Form1.Caption:=  OpenDialog1.FileName;
    Memo1.Lines.LoadFromFile(filename);
  end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
       if SaveDialog1.Execute then
       begin
          form1.Caption:=SaveDialog1.FileName;
         Memo1.Lines.SaveToFile(SaveDialog1.FileName);
       end;

end;
//内容改变时
procedure TForm1.Memo1Change(Sender: TObject);
begin
  //给标题追加星号，说明文件被修改了
    form1.Caption:=OpenDialog1.FileName+' *';

    //重新设置状态栏中的行数

  SetLineCount(Sender);
  StatusBar1.Panels[0].Width:=100;

    //重新设置状态栏中的字符总数
   SetCharCount()   ;


end;
 //鼠标按下
procedure TForm1.Memo1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    SetLineCount(Sender);
end;

//当载入文本时
procedure TForm1.Memo1Enter(Sender: TObject);
begin
    form1.Caption:=OpenDialog1.FileName;
    StatusBar1.Panels[0].Width:=100;
    SetLineCount(Sender);
end;

//设置状态栏中的行数
procedure TForm1.SetLineCount(Sender: TObject);
begin
        StatusBar1.Panels[0].Text:='行数:'+inttostr(Memo1.Lines.Count)+'/'+inttostr(memo1.CaretPos.Y+1);
end;
//设置状态栏中的字符数
procedure TForm1.SetCharCount();
begin
       StatusBar1.Panels[1].Text:='字符数:'+inttoStr(Memo1.gettextlen);
end;


procedure TForm1.N5Click(Sender: TObject);
begin

  if MessageDlg('保存吗？',mtConfirmation,mbYesNoCancel,MB_YESNOCANCEL)=mrYes then
  begin
    memo1.Lines.SaveToFile(OpenDialog1.FileName);
    form1.Caption:=OpenDialog1.FileName;
  end;
end;

end.
