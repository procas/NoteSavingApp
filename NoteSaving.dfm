object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Note Saving App'
  ClientHeight = 422
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object LoadNoteButton: TButton
    Left = 153
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Load Note'
    TabOrder = 0
    OnClick = LoadNoteButtonClick
  end
  object Panel1: TPanel
    Left = 40
    Top = 32
    Width = 553
    Height = 249
    TabOrder = 1
    object Label1: TLabel
      Left = 159
      Top = 59
      Width = 25
      Height = 15
      Caption = 'Title:'
    end
    object Label2: TLabel
      Left = 159
      Top = 88
      Width = 46
      Height = 15
      Caption = 'Content:'
    end
    object Label3: TLabel
      Left = 159
      Top = 117
      Width = 27
      Height = 15
      Caption = 'Date:'
    end
    object Label4: TLabel
      Left = 159
      Top = 146
      Width = 29
      Height = 15
      Caption = 'Price:'
    end
    object Image1: TImage
      Left = 16
      Top = 16
      Width = 49
      Height = 49
      Picture.Data = {
        0A544A504547496D61676585060000FFD8FFE000104A46494600010101006000
        600000FFFE003B43524541544F523A2067642D6A7065672076312E3020287573
        696E6720494A47204A50454720763632292C207175616C697479203D2038350A
        FFDB0043000503040404030504040405050506070C08070707070F0B0B090C11
        0F1212110F111113161C1713141A1511111821181A1D1D1F1F1F13172224221E
        241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1EFFC00011080032003203012200021101031101FFC400
        1F0000010501010101010100000000000000000102030405060708090A0BFFC4
        00B5100002010303020403050504040000017D01020300041105122131410613
        516107227114328191A1082342B1C11552D1F02433627282090A161718191A25
        262728292A3435363738393A434445464748494A535455565758595A63646566
        6768696A737475767778797A838485868788898A92939495969798999AA2A3A4
        A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9
        DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301010101
        01010101010000000000000102030405060708090A0BFFC400B5110002010204
        0403040705040400010277000102031104052131061241510761711322328108
        144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35
        363738393A434445464748494A535455565758595A636465666768696A737475
        767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AA
        B2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6
        E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00DA3ACF887E
        2D7882FEEEFB5CBDD3F42866F2EDECED5CA0DA7A67B138E4B10793C60568FF00
        C2AAD23FE839AF7FE04A7FF11589F003FE41B7BFF5F4BFFA08AF5CAF3AA4E573
        AAF676479F8F855A474FEDCD7BFF000257FF0088AC6F1BFC3FB0D0FC2D7DAADA
        6B3ACC935BA065125C295396039C283DFD6BD66B3FC47A5C5AD68579A54CE512
        E6329B80FBA7A83F8100D429BBEE0A4CF32F871E20F1C782B44B4F10E8F70FAC
        693700BDE69B3313B70C4165EA41C0EA3F1040AFA37E1B7C44F0E78EF4FF003B
        49B9F2EF11733D94C409A2F7C7F12FFB438FA1E2BE75D1E0F1F7852D06909A04
        5AADAC4C7C89A293B139FAE327B806B9DF13C7E25B4BA5F135AF86AE7C3D756A
        E247BCB69B68E4E3240EF93DBAE79CD74D3AAD3B3D8528291F6DF3457CDFA4FC
        65F18B69568D31B0964302177683058ED1927040E7DA8AE9E7463ECD9CA7C01F
        F906DEFF00D7D2FF00E822BD16E6C4BDC48E345D3A5DCC4EF79882DEE46C3FCE
        BCEFE011DDA75F13D4DD2FFE822BD12E74FF0032E247FEC3D265DCC4EF924C33
        7B9FDD9E7F135E74F7367B91FF00671FFA00E97FF7FCFF00F1BA3FB34F7D074B
        FF00BFE7FF008DD2FF006663FE65FD17FEFE7FF6AA0E9B9393E1FD173FF5D3FF
        00B554DC0586C0ACC8DFD89A6A6181DCB31257DC7C95CE7C56D5E297C3BAFE88
        22712C1670DC17E3690D3018FD2BA4874ED93237F60E8F1E181DCB27CCBEE3F7
        439AE0FE26FF00C7EF8ABFEC116BFF00A3E9C75634739A47FC82ACFF00EB827F
        E8228A769323FF00655A73FF002C13FF004114576A066CFC00FF00906DEFFD7D
        2FFE822BD16E74FF0032E247FEC3D1E52CC4F9923FCCDEE7F7679FC4D798FC3D
        BA8BC19ABEAFE19F1138D3AF61B9E1A6F951B1C753C608C107A106BD097C67E1
        D03E6D6B4B27D45DA7F8D724D3E613DCB1FD99FF0052EE87FF007F3FFB5527F6
        67FD4BBA1FFDFCFF00ED5510F19F873FE833A67FE0627F8D07C67E1B1D35AD34
        8F5FB5A7F8D45981661D3B64C8C740D1936B03B91FE65F71FBA1CD711F142DAE
        164F145D3412881F4AB54594A9DA584FC807A66BADFF0084D3C39FF419D37FF0
        313FC6B94F8A3E31D16F3C2973A4585D457B777851234B7712630E0E491F4E9D
        79AA8A7705B9CAE91FF20AB3FF00AE09FF00A08A2BD2741F839E257D0EC1E578
        2091ADA32D14870C8768CA91EA3A515DA9313923B9FDA2F4AD2EE7C28B7D71A6
        D9CD748E1127920569157D0311903DABE6CFB159FF00CFA5BFFDFB1451533F88
        AA5F08BF62B3DBFF001E96FD7FE798A05959F3FE89074FF9E628A2A4D04FB159
        FF00CFA5BFFDFB15ECBFB33E91A4C9AA5DDDC9A5D93DC40A1A295ADD4BC673D5
        4E323F0A28AA86E4CFE13E821451456E719FFFD9}
    end
    object FilePosLabel: TLabel
      Left = 156
      Top = 16
      Width = 6
      Height = 15
      Caption = '0'
    end
    object TitleEd: TEdit
      Left = 235
      Top = 56
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 235
      Top = 114
      Width = 121
      Height = 23
      Date = 44837.000000000000000000
      Time = 0.656655173610488400
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 235
      Top = 143
      Width = 17
      Height = 23
      Enabled = False
      TabOrder = 2
      Text = '$'
    end
    object PriceEd: TEdit
      Left = 258
      Top = 143
      Width = 98
      Height = 23
      TabOrder = 3
      Text = '0.0'
    end
    object Memo1: TMemo
      Left = 376
      Top = 56
      Width = 161
      Height = 110
      Lines.Strings = (
        'Memo1')
      TabOrder = 4
      Visible = False
    end
    object Button1: TButton
      Left = 424
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Load Objects'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
  end
  object SaveNoteButton: TButton
    Left = 376
    Top = 320
    Width = 97
    Height = 25
    Caption = 'Save New Note'
    TabOrder = 2
    OnClick = SaveNoteButtonClick
  end
  object LoadNoteEd: TEdit
    Left = 105
    Top = 321
    Width = 42
    Height = 23
    TabOrder = 3
    Text = '0'
  end
  object ContentEd: TEdit
    Left = 275
    Top = 117
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object TotalNotesButton: TButton
    Left = 196
    Top = 360
    Width = 137
    Height = 25
    Caption = 'Total notes'
    TabOrder = 5
    OnClick = TotalNotesButtonClick
  end
  object TotalNotesEd: TEdit
    Left = 339
    Top = 361
    Width = 57
    Height = 23
    TabOrder = 6
  end
  object SaveChangesButton: TButton
    Left = 258
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 7
    OnClick = SaveChangesButtonClick
  end
end
