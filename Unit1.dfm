object Form1: TForm1
  Left = 280
  Top = 421
  Width = 599
  Height = 445
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  DesignSize = (
    591
    399)
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 380
    Width = 591
    Height = 19
    Panels = <
      item
        Text = #34892#25968':'
        Width = 50
      end
      item
        Text = #23383#31526#25968':'
        Width = 50
      end>
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 591
    Height = 380
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 1
    OnChange = Memo1Change
    OnEnter = Memo1Enter
    OnMouseDown = Memo1MouseDown
  end
  object MainMenu1: TMainMenu
    Left = 160
    Top = 16
    object N1: TMenuItem
      Caption = #25991#20214
      object N2: TMenuItem
        Caption = #25171#24320
        OnClick = N2Click
      end
      object N5: TMenuItem
        Caption = #20445#23384
        OnClick = N5Click
      end
      object N3: TMenuItem
        Caption = #21478#23384#20026
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #36864#20986
        OnClick = N4Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    FileName = 'untitled.txt'
    Filter = 'txt('#25991#26412#25991#20214')|*.txt|*('#25152#26377#31867#22411#65289'|*.*'
    Left = 192
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'txt('#25991#26412#25991#20214')|*.txt|all('#25152#26377#31867#22411#30340#25991#20214')|*.*'
    Left = 224
    Top = 16
  end
end
