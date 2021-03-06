unit fx_defs;

interface

uses
  Windows, Classes, SysUtils,
  hyieutils,
  c_const;

var
  // status of the build:
  // 0 - release, 1 - alpha, 2 - beta, 3 - gamma, 7 - release candidate
  ver_status: integer = 0;

  // version of the above (should be 0 for release)
  ver_number: integer = 0;

  // codename of the above (should be '' for release)
  ver_codename: string = '';

  bAutoRotateEXIF: boolean = false;
  colourProfile: TIEICC;

const
  // limit for the list of most recently used files
  MRU_LIMIT       = 8;

  // support for additional mouse buttons
  WM_XBUTTONDOWN  = $020B;
  MK_XBUTTON1     = $0020;
  MK_XBUTTON2     = $0040;

type
  TDisplayStyles = (dsNormal, dsFit);

  FuturixPluginCacheData = record
    lib: THandle;
    func: TFxCore2;
  end;


implementation

end.
