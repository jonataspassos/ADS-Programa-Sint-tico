object Form1: TForm1
  Left = 269
  Top = 141
  Width = 771
  Height = 515
  Caption = 'Avaliacao de desempenho de sistemas'
  Color = clBtnFace
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    763
    481)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 478
    Height = 32
    Caption = 'Avaliacao de desempenho de sistemas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Dados: TGroupBox
    Left = 16
    Top = 56
    Width = 329
    Height = 233
    Caption = 'Dados'
    TabOrder = 0
    object A1: TPanel
      Left = 8
      Top = 24
      Width = 313
      Height = 33
      BevelOuter = bvNone
      Caption = 'A1'
      TabOrder = 0
      DesignSize = (
        313
        33)
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 13
        Height = 13
        Caption = 'A1'
      end
      object INA1: TEdit
        Left = 80
        Top = 4
        Width = 225
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        Text = '1'
      end
    end
    object A2: TPanel
      Left = 8
      Top = 56
      Width = 313
      Height = 33
      BevelOuter = bvNone
      Caption = 'A1'
      TabOrder = 1
      DesignSize = (
        313
        33)
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 13
        Height = 13
        Caption = 'A2'
      end
      object INA2: TEdit
        Left = 80
        Top = 4
        Width = 225
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        Text = '2,22'
      end
    end
    object A3: TPanel
      Left = 8
      Top = 88
      Width = 313
      Height = 33
      BevelOuter = bvNone
      Caption = 'A1'
      TabOrder = 2
      DesignSize = (
        313
        33)
      object Label4: TLabel
        Left = 8
        Top = 8
        Width = 13
        Height = 13
        Caption = 'A3'
      end
      object INA3: TEdit
        Left = 80
        Top = 4
        Width = 225
        Height = 21
        Anchors = [akTop, akRight]
        MaxLength = 26
        TabOrder = 0
        Text = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
      end
    end
    object A4: TPanel
      Left = 8
      Top = 120
      Width = 313
      Height = 33
      BevelOuter = bvNone
      Caption = 'A1'
      TabOrder = 3
      DesignSize = (
        313
        33)
      object Label5: TLabel
        Left = 8
        Top = 8
        Width = 13
        Height = 13
        Caption = 'A4'
      end
      object INA4: TEdit
        Left = 80
        Top = 4
        Width = 225
        Height = 21
        Anchors = [akTop, akRight]
        MaxLength = 26
        TabOrder = 0
        Text = 'abcdefghijqlmnopqrstuvwxyz'
      end
    end
    object A5: TPanel
      Left = 8
      Top = 152
      Width = 313
      Height = 33
      BevelOuter = bvNone
      Caption = 'A1'
      TabOrder = 4
      DesignSize = (
        313
        33)
      object Label6: TLabel
        Left = 8
        Top = 8
        Width = 13
        Height = 13
        Caption = 'A5'
      end
      object INA5: TEdit
        Left = 80
        Top = 4
        Width = 225
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        Text = '13:45:37'
      end
    end
    object A6: TPanel
      Left = 8
      Top = 184
      Width = 313
      Height = 33
      BevelOuter = bvNone
      Caption = 'A1'
      TabOrder = 5
      DesignSize = (
        313
        33)
      object Label7: TLabel
        Left = 8
        Top = 8
        Width = 13
        Height = 13
        Caption = 'A6'
      end
      object INA6: TEdit
        Left = 80
        Top = 4
        Width = 225
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        Text = '18/08/2021'
      end
    end
  end
  object Operacoes: TGroupBox
    Left = 360
    Top = 56
    Width = 185
    Height = 153
    Caption = 'Operacoes / Quantidade'
    TabOrder = 1
    object Panel1: TPanel
      Left = 8
      Top = 16
      Width = 169
      Height = 33
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        169
        33)
      object Label8: TLabel
        Left = 8
        Top = 8
        Width = 31
        Height = 13
        Caption = 'Create'
      end
      object INCREATE: TEdit
        Left = 80
        Top = 4
        Width = 81
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        Text = '500'
      end
    end
    object Panel2: TPanel
      Left = 8
      Top = 48
      Width = 169
      Height = 33
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        169
        33)
      object Label9: TLabel
        Left = 8
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Select'
      end
      object INSELECT: TEdit
        Left = 80
        Top = 4
        Width = 81
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        Text = '500'
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 80
      Width = 169
      Height = 33
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        169
        33)
      object Label10: TLabel
        Left = 8
        Top = 8
        Width = 35
        Height = 13
        Caption = 'Update'
      end
      object INUPDATE: TEdit
        Left = 80
        Top = 4
        Width = 81
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        Text = '500'
      end
    end
    object Panel4: TPanel
      Left = 8
      Top = 112
      Width = 169
      Height = 33
      BevelOuter = bvNone
      TabOrder = 3
      object Label11: TLabel
        Left = 8
        Top = 8
        Width = 31
        Height = 13
        Caption = 'Delete'
      end
    end
  end
  object Repeticoes: TGroupBox
    Left = 360
    Top = 224
    Width = 185
    Height = 65
    Caption = 'Repeticoes'
    TabOrder = 2
    object Panel5: TPanel
      Left = 8
      Top = 24
      Width = 169
      Height = 33
      BevelOuter = bvNone
      Caption = 'A1'
      TabOrder = 0
      DesignSize = (
        169
        33)
      object Label12: TLabel
        Left = 8
        Top = 8
        Width = 109
        Height = 13
        Caption = 'Numero de Repeticoes'
      end
      object INREPEAT: TEdit
        Left = 128
        Top = 4
        Width = 33
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        Text = '10'
      end
    end
  end
  object info: TGroupBox
    Left = 560
    Top = 56
    Width = 185
    Height = 233
    Caption = 'Informcoes do Sistema'
    TabOrder = 3
    object Memo1: TMemo
      Left = 8
      Top = 24
      Width = 169
      Height = 201
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clMenuBar
      Lines.Strings = (
        'Aplicacao:'
        'Borland Delphi Enterprise'
        'Version 7.0 (Build 4.453)'
        ''
        'Banco de dados:'
        'Paradox 7.0'
        ''
        'Sistema:'
        'Windows XP Professional'
        'Versao 2002 | Service Pack 3'
        ''
        'Hardware:'
        'RAM: 1.99GB (2.087.116 KB)'
        'Processador: Intel(R) Atom(TM)'
        'CPU Z520 @ 1.33GHz')
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel6: TPanel
    Left = 16
    Top = 296
    Width = 729
    Height = 41
    BevelOuter = bvNone
    TabOrder = 4
    object progress1: TGauge
      Left = 96
      Top = 24
      Width = 537
      Height = 17
      ForeColor = clBlue
      Progress = 0
    end
    object start: TButton
      Left = 0
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Comecar'
      TabOrder = 0
      OnClick = startClick
    end
    object overhead: TButton
      Left = 640
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Overhead'
      TabOrder = 1
      OnClick = overheadClick
    end
    object progress2: TProgressBar
      Left = 96
      Top = 8
      Width = 537
      Height = 9
      TabOrder = 2
    end
  end
  object results: TPageControl
    Left = 16
    Top = 344
    Width = 729
    Height = 120
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 5
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object Total: TPanel
        Left = 0
        Top = 0
        Width = 361
        Height = 97
        BevelOuter = bvNone
        TabOrder = 0
        object Label18: TLabel
          Left = 280
          Top = 8
          Width = 47
          Height = 20
          Alignment = taCenter
          Caption = 'Delete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 216
          Top = 8
          Width = 53
          Height = 20
          Alignment = taCenter
          Caption = 'Update'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 152
          Top = 8
          Width = 45
          Height = 20
          Alignment = taCenter
          Caption = 'Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 8
          Top = 64
          Width = 69
          Height = 13
          Caption = 'Desvio padrao'
        end
        object Label14: TLabel
          Left = 48
          Top = 40
          Width = 29
          Height = 13
          Caption = 'Media'
        end
        object Label13: TLabel
          Left = 88
          Top = 8
          Width = 48
          Height = 20
          Alignment = taCenter
          Caption = 'Create'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 40
          Top = 8
          Width = 35
          Height = 20
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ttCreateMedia: TLabel
          Left = 88
          Top = 40
          Width = 29
          Height = 13
          Alignment = taCenter
          Caption = 'Media'
        end
        object ttCreateDP: TLabel
          Left = 88
          Top = 64
          Width = 15
          Height = 13
          Alignment = taCenter
          Caption = 'DP'
        end
        object ttSelectMedia: TLabel
          Left = 152
          Top = 40
          Width = 29
          Height = 13
          Alignment = taCenter
          Caption = 'Media'
        end
        object ttUpdateMedia: TLabel
          Left = 216
          Top = 40
          Width = 29
          Height = 13
          Alignment = taCenter
          Caption = 'Media'
        end
        object ttDeleteMedia: TLabel
          Left = 280
          Top = 40
          Width = 29
          Height = 13
          Alignment = taCenter
          Caption = 'Media'
        end
        object ttSelectDP: TLabel
          Left = 152
          Top = 64
          Width = 15
          Height = 13
          Alignment = taCenter
          Caption = 'DP'
        end
        object ttUpdateDP: TLabel
          Left = 216
          Top = 64
          Width = 15
          Height = 13
          Alignment = taCenter
          Caption = 'DP'
        end
        object ttDeleteDP: TLabel
          Left = 280
          Top = 64
          Width = 15
          Height = 13
          Alignment = taCenter
          Caption = 'DP'
        end
      end
      object Panel7: TPanel
        Left = 360
        Top = -2
        Width = 361
        Height = 97
        BevelOuter = bvNone
        TabOrder = 1
        object Label20: TLabel
          Left = 280
          Top = 8
          Width = 47
          Height = 20
          Alignment = taCenter
          Caption = 'Delete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 216
          Top = 8
          Width = 53
          Height = 20
          Alignment = taCenter
          Caption = 'Update'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 152
          Top = 8
          Width = 45
          Height = 20
          Alignment = taCenter
          Caption = 'Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 8
          Top = 64
          Width = 69
          Height = 13
          Caption = 'Desvio padrao'
        end
        object Label24: TLabel
          Left = 48
          Top = 40
          Width = 29
          Height = 13
          Caption = 'Media'
        end
        object Label25: TLabel
          Left = 88
          Top = 8
          Width = 48
          Height = 20
          Alignment = taCenter
          Caption = 'Create'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 8
          Top = 8
          Width = 69
          Height = 20
          Caption = 'Overhead'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ohCreateMedia: TLabel
          Left = 88
          Top = 40
          Width = 29
          Height = 13
          Alignment = taCenter
          Caption = 'Media'
        end
        object ohCreateDP: TLabel
          Left = 88
          Top = 64
          Width = 15
          Height = 13
          Alignment = taCenter
          Caption = 'DP'
        end
        object ohSelectMedia: TLabel
          Left = 152
          Top = 40
          Width = 29
          Height = 13
          Alignment = taCenter
          Caption = 'Media'
        end
        object ohUpdateMedia: TLabel
          Left = 216
          Top = 40
          Width = 29
          Height = 13
          Alignment = taCenter
          Caption = 'Media'
        end
        object ohDeleteMedia: TLabel
          Left = 280
          Top = 40
          Width = 29
          Height = 13
          Alignment = taCenter
          Caption = 'Media'
        end
        object ohSelectDP: TLabel
          Left = 152
          Top = 64
          Width = 15
          Height = 13
          Alignment = taCenter
          Caption = 'DP'
        end
        object ohUpdateDP: TLabel
          Left = 216
          Top = 64
          Width = 15
          Height = 13
          Alignment = taCenter
          Caption = 'DP'
        end
        object ohDeleteDP: TLabel
          Left = 280
          Top = 64
          Width = 15
          Height = 13
          Alignment = taCenter
          Caption = 'DP'
        end
      end
    end
  end
end
