object DM: TDM
  OldCreateOrder = False
  Left = 230
  Top = 237
  Height = 422
  Width = 334
  object con1: TZConnection
    ControlsCodePage = cCP_UTF8
    AutoEncodeStrings = False
    Properties.Strings = (
      'controls_cp=CP_UTF8')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_tokodaging'
    User = 'root'
    Protocol = 'mysql'
    Left = 40
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from userpass')
    Params = <>
    DataSource = ds1
    Left = 40
    Top = 72
  end
  object ds1: TDataSource
    Left = 96
    Top = 72
  end
  object zqry_user: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from userpass')
    Params = <>
    Left = 40
    Top = 128
  end
  object zqry_daging: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from daging')
    Params = <>
    Left = 40
    Top = 192
  end
  object ds_user: TDataSource
    DataSet = zqry_user
    Left = 96
    Top = 128
  end
  object ds_daging: TDataSource
    DataSet = zqry_daging
    Left = 96
    Top = 192
  end
  object zqry_transaksi: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from transaksi')
    Params = <>
    Left = 40
    Top = 256
  end
  object ds_transaksi: TDataSource
    DataSet = zqry_transaksi
    Left = 96
    Top = 256
  end
end
