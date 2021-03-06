object frmWallpaper: TfrmWallpaper
  Left = 190
  Top = 79
  ActiveControl = btnOK
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'View as Wallpaper'
  ClientHeight = 548
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Shell Dlg 2'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000044000000000000047440000000000047444000000000047444000000
    0000474440000000777F8444000000877777F8000000007777777F0000000777
    777777700000077777777770000007FE77777770000007FE77777770000000FF
    EE7777000000008FFF777800000000007777000000000000000000000000FFF3
    0000FFE10000FFC10000FF830000F0070000C00F0000801F0000801F0000000F
    0000000F0000000F0000000F0000801F0000801F0000C03F0000F0FF0000}
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 0
    Width = 150
    Height = 548
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object lblCustom: TLabel
      Left = 7
      Top = 5
      Width = 40
      Height = 13
      Caption = 'Custom:'
      Transparent = True
    end
    object lblX: TLabel
      Left = 71
      Top = 24
      Width = 6
      Height = 13
      Caption = 'x'
      Transparent = True
    end
    object btn800x600: TButton
      Left = 7
      Top = 162
      Width = 134
      Height = 25
      Caption = '800x600'
      TabOrder = 0
      OnClick = btn800x600Click
    end
    object btn1024x768: TButton
      Left = 7
      Top = 189
      Width = 134
      Height = 25
      Caption = '1024x768'
      TabOrder = 1
      OnClick = btn1024x768Click
    end
    object btn1280x1024: TButton
      Left = 7
      Top = 216
      Width = 134
      Height = 25
      Caption = '1280x1024'
      TabOrder = 2
      OnClick = btn1280x1024Click
    end
    object btn1600x1200: TButton
      Left = 7
      Top = 243
      Width = 134
      Height = 25
      Caption = '1600x1200'
      TabOrder = 3
      OnClick = btn1600x1200Click
    end
    object btn640x480: TButton
      Left = 7
      Top = 135
      Width = 134
      Height = 25
      Caption = '640x480'
      TabOrder = 4
      OnClick = btn640x480Click
    end
    object btn3000x2250: TButton
      Left = 7
      Top = 270
      Width = 134
      Height = 25
      Caption = '3000x2250'
      TabOrder = 5
      OnClick = btn3000x2250Click
    end
    object edtCustWidth: TEdit
      Left = 7
      Top = 20
      Width = 60
      Height = 21
      TabOrder = 6
      Text = '1600'
    end
    object edtCustHeight: TEdit
      Left = 80
      Top = 20
      Width = 60
      Height = 21
      TabOrder = 7
      Text = '1200'
    end
    object btnSetCustom: TButton
      Left = 7
      Top = 45
      Width = 133
      Height = 35
      Caption = 'Set Custom'
      TabOrder = 8
      WordWrap = True
      OnClick = btnSetCustomClick
    end
    object pnlClose: TPanel
      Left = 0
      Top = 508
      Width = 150
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 9
      object btnOK: TButton
        Left = 7
        Top = 10
        Width = 134
        Height = 25
        Caption = 'Close'
        Default = True
        TabOrder = 0
        OnClick = btnOKClick
      end
    end
    object btn1920x1200: TButton
      Left = 7
      Top = 309
      Width = 134
      Height = 25
      Caption = '1920x1200'
      TabOrder = 10
      OnClick = btn1920x1200Click
    end
    object btn3200x1200: TButton
      Left = 7
      Top = 336
      Width = 134
      Height = 25
      Caption = '3200x1200'
      TabOrder = 11
      OnClick = btn3200x1200Click
    end
    object btn2560x1024: TButton
      Left = 7
      Top = 363
      Width = 134
      Height = 25
      Caption = '2560x1024'
      TabOrder = 12
      OnClick = btn2560x1024Click
    end
  end
  object sbxWall: TScrollBox
    Left = 150
    Top = 0
    Width = 617
    Height = 548
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Align = alClient
    Color = clAppWorkSpace
    ParentColor = False
    TabOrder = 1
    object imgWallpaper: TImageEnView
      Left = 0
      Top = 0
      Width = 1600
      Height = 1200
      Background = clAppWorkSpace
      ParentCtl3D = False
      BorderStyle = bsNone
      LegacyBitmap = False
      ScrollBars = ssNone
      ImageEnVersion = '3.1.0'
      WallPaperStyle = iewoTile
      EnableInteractionHints = True
      TabOrder = 0
    end
  end
end
