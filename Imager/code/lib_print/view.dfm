object frmPrint: TfrmPrint
  Left = 190
  Top = 79
  Width = 750
  Height = 550
  ActiveControl = btnClose
  BorderIcons = [biSystemMenu]
  Caption = 'Print Preview'
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000000000000000000000000FFFFFFFFFF000000FFFFFFF000080000FFF
    FFF0877808000FFFFF0877E880000FFFFF07777870000FFFFF07E77870000FFF
    FF08EE7880000FFFFFF0877800000FFFFFFF000000000FFFFFFFFFF000000FFF
    FFFF000000000FFFFFFF070000000FFFFFFF000000000000000000000000FFFF
    0000000C00000008000000010000000300000003000000030000000300000003
    000000070000000F0000000F0000000F0000001F0000003F0000007F0000}
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object prwPrint: TPrintPreview
    Left = 0
    Top = 24
    Width = 742
    Height = 465
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Color = clAppWorkSpace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 0
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    TabOrder = 0
    Units = mmLoMetric
    PaperView.BorderWidth = 0
    UsePrinterOptions = True
  end
  object tbrPrintMain: TCoolBar
    Left = 0
    Top = 0
    Width = 742
    Height = 24
    AutoSize = True
    BandBorderStyle = bsNone
    BandMaximize = bmNone
    Bands = <
      item
        Control = itbPrintMain
        HorizontalOnly = True
        ImageIndex = -1
        MinHeight = 24
        Width = 742
      end>
    EdgeBorders = []
    FixedOrder = True
    ShowText = False
    object itbPrintMain: TToolBar
      Left = 0
      Top = 0
      Width = 738
      Height = 24
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 57
      Caption = 'Print'
      EdgeBorders = []
      Flat = True
      HideClippedButtons = True
      Images = imlPrint
      List = True
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
      Wrapable = False
      object tbnPrint: TToolButton
        Left = 0
        Top = 0
        Hint = 'Print'
        AutoSize = True
        Caption = 'Print'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = tbnPrintClick
      end
      object Sep_1: TToolButton
        Left = 54
        Top = 0
        Width = 8
        Caption = 'Sep_1'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object tbnZoom: TToolButton
        Left = 62
        Top = 0
        Hint = 'Zoom'
        AutoSize = True
        Caption = 'Zoom'
        DropdownMenu = popZoom
        Grouped = True
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        Style = tbsDropDown
      end
      object Setup: TToolButton
        Left = 135
        Top = 0
        Hint = 'Setup'
        AutoSize = True
        Caption = 'Setup'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SetupClick
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 489
    Width = 742
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = True
    TabOrder = 2
    DesignSize = (
      742
      34)
    object btnClose: TButton
      Left = 663
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Close'
      Default = True
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object cbxProportional: TCheckBox
      Left = 9
      Top = 9
      Width = 86
      Height = 17
      Caption = 'Proportional'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbxProportionalClick
    end
    object cbxShrinkOnlyLarge: TCheckBox
      Left = 99
      Top = 9
      Width = 114
      Height = 17
      Caption = 'Shrink Only Large'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = cbxProportionalClick
    end
    object cbxCenter: TCheckBox
      Left = 216
      Top = 9
      Width = 68
      Height = 17
      Caption = 'Center'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = cbxProportionalClick
    end
  end
  object imlPrint: TImageList
    Height = 18
    Width = 18
    Left = 70
    Top = 49
    Bitmap = {
      494C010103000400040012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000480000001200000001002000000000004014
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000003366000033660000336600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000874B3800B34A6500874B3800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000080000000FF000033990000008000003366000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400FFFF
      FF00EAEAEA00EAEAEA00DDDDDD00DDDDDD00CCCCCC00CCCCCC00B2B2B200B2B2
      B200040404005F5F5F0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000874B3800B34A6500B3634A00874B3800000000000000
      0000000000000066660000FFFF0000CCFF0000FFFF0000CCFF000099CC0000CC
      FF000099CC000099CC000033CC0066CCFF000066FF0000339900003366000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      040004040400040404005F5F5F00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000874B3800B34A6500B3634A00874B380000000000000000000000
      0000000000000066660099FFFF0099FFFF0000CCFF0099FFFF0000CCFF000099
      CC0000CCFF000099CC000033CC0066CCFF000066FF0000339900003366000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600FFFFFF00EAEA
      EA00DDDDDD00CCCCCC00CCCCCC00CCCCCC0000FF000000FF000000FF0000CCCC
      CC00CCCCCC000404040004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B34A6500B3634A00874B38000000000000000000000000000000
      0000000000000066660099FFFF0000CCFF0099FFFF0000CCFF0099FFFF0000CC
      FF000099CC0000CCFF000033CC0066CCFF000066FF0000339900003366000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00EAEAEA00DDDDDD00CCCCCC00CCCCCC00008000000080000000800000CCCC
      CC00CCCCCC000404040086868600040404000000000000000000000000000000
      0000000000000000000080808000000000004AB39E004AB39E004AB39E003C63
      62003C63620000000000874B3800000000000000000000000000000000000000
      0000000000000066660099FFFF00FFFFFF0000CCFF0099FFFF0000CCFF0099FF
      FF0000CCFF000099CC000033CC0066CCFF000066FF0000339900003366000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600868686008686
      8600868686008686860086868600868686008686860086868600868686008686
      8600868686000404040086868600868686000404040000000000000000000000
      000000000000808080009689930060BCBD0060BCBD0060BCBD0060BCBD004AB3
      9E004AB39E003C63620000000000000000000000000000000000000000000000
      0000000000000066660099FFFF0000CCFF00FFFFFF0000CCFF0099FFFF0000CC
      FF0099FFFF0000CCFF000033CC0066CCFF000066FF0000339900003366000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF00EAEAEA00EAEAEA00DDDDDD00DDDDDD00CCCCCC00CCCCCC00CCCC
      CC00040404008686860004040400868686000404040000000000000000000000
      00000000000080808000A4C9D900A4C9D900A4C9D900A4D9CE0060BCBD0060BC
      BD004AB39E004AB39E0000000000000000000000000000000000000000000000
      0000000000000066660099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0000FFFF000033CC0099FFFF000066FF0000339900003366000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000868686008686
      8600868686008686860086868600868686008686860086868600868686008686
      8600868686000404040086868600040404000404040000000000000000000000
      000080808000A4D9CE00A4C9D900A4C9D900A4C9D900A4C9D900A4C9D90060BC
      BD0060BCBD004AB39E003C636200000000000000000000000000000000000000
      0000000000000066660000666600006666000066660000666600006666000066
      660000666600006666000033CC0099FFFF0066CCFF0000339900000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00040404008686860004040400868686000404040000000000000000000000
      000080808000A4D9CE00D1E4EC00D1E4EC00D1E4EC00A4C9D900A4C9D900A4C9
      D90060BCBD004AB39E004AB39E00000000000000000000000000000000000000
      0000000000000000000000666600F0FBFF0099FFFF0099FFFF000099CC000000
      00000000000000000000008080006666CC006666CC0000339900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086868600FFFFFF00FF333300FF333300FF333300FF333300FF333300FFFF
      FF00040404000404040004040400040404000000000000000000000000000000
      000080808000A4D9CE00FFFFFF00FFFFFF00D1E4EC00D1E4EC00A4C9D900A4C9
      D900A4D9CE0060BCBD004AB39E00000000000000000000000000000000000000
      0000000000000000000000000000006666000066660000666600000000000000
      000000000000000000000000000042424200F0CAA60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086868600CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CCCCCC000404040000000000000000000000000000000000000000000000
      00008080800096899300FFFFFF00FFFFFF00FFFFFF00D1E4EC00D1E4EC00A4C9
      D900A4C9D90060BCBD004AB39E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000077777700424242000000000042424200F0CAA60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086868600FFFFFF00FF663300FF663300FF663300FF663300FF66
      3300FFFFFF000404040000000000000000000000000000000000000000000000
      00000000000080808000A4D9CE00FFFFFF00FFFFFF00FFFFFF00D1E4EC00A4C9
      D900A4C9D90060BCBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007777
      7700FFECCC00424242004242420086868600F0CAA60099333300000000009933
      3300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086868600CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CCCCCC0004040400000000000000000000000000000000000000
      0000000000008080800096899300A4D9CE00FFFFFF00FFFFFF00D1E4EC00A4C9
      D900A4D9CE0060BDA40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007777
      7700FFFFFF00C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000F0CA
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600868686008686860086868600868686008686
      8600868686008686860086868600000000000000000000000000000000000000
      00000000000000000000808080008080800096899300A4D9CE00A4D9CE00A4D9
      CE00808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007777
      7700FFFFFF00F0CAA60000000000FFFFFF00FFFFFF00FFECCC00FFECCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000777777007777770000000000777777007777770077777700777777000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000048000000120000000100010000000000D80000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFC0000000000FFFFE49F
      3FFE3C0000000000E003E49E18001C0000000000C001FFFC18001C0000000000
      8000FFF838001C00000000008000FF0078001C00000000008000FC00F8001C00
      0000000080007801F8001C000000000080007801F8001C0000000000C0007000
      F8001C0000000000E0007000FC0C3C0000000000F000F000FE1E3C0000000000
      F003F000FFF2240000000000F803F801FFE0040000000000F801F801FFE00400
      00000000FC01FC03FFE00C0000000000FFFFFF0FFFF21C0000000000FFFFFFFF
      FFFFFC000000000000000000000000000000000000000000000000000000}
  end
  object popZoom: TPopupMenu
    TrackButton = tbLeftButton
    Left = 12
    Top = 49
    object piZMFit: TMenuItem
      Caption = 'Zoom To Fit'
      OnClick = piZMFitClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object piZMWidth: TMenuItem
      Caption = 'Zoom To Width'
      OnClick = piZMWidthClick
    end
    object piZMHeight: TMenuItem
      Caption = 'Zoom To Height'
      OnClick = piZMHeightClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object piZM25: TMenuItem
      Caption = '25%'
      OnClick = piZM25Click
    end
    object piZM50: TMenuItem
      Caption = '50%'
      OnClick = piZM50Click
    end
    object piZM75: TMenuItem
      Caption = '75%'
      OnClick = piZM75Click
    end
    object piZM100: TMenuItem
      Caption = '100%'
      OnClick = piZM100Click
    end
    object piZM150: TMenuItem
      Caption = '150%'
      OnClick = piZM150Click
    end
    object piZM200: TMenuItem
      Caption = '200%'
      OnClick = piZM200Click
    end
  end
  object dlgPageSetup: TPageSetupDialog
    MinMarginLeft = 0
    MinMarginTop = 0
    MinMarginRight = 0
    MinMarginBottom = 0
    MarginLeft = 2500
    MarginTop = 2500
    MarginRight = 2500
    MarginBottom = 2500
    PageWidth = 21000
    PageHeight = 29700
    Left = 41
    Top = 49
  end
end
