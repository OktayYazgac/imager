unit c_lang;

interface

const
  FXL_SERVICE_SIGNATURE = 1;
  FXL_SERVICE_LANGUAGE = 2;
  FXL_SERVICE_ISO_CODE = 3;
  FXL_SERVICE_AUTHOR = 4;
  FXL_SERVICE_VERSION = 5;
  FXL_SERVICE_LANGUAGE_LOCALIZED = 6;
  FXL_OK = 10;
  FXL_CANCEL = 11;
  FXL_YES = 12;
  FXL_NO = 13;
  FXL_CLOSE = 14;
  FXL_APPLY = 15;
  FXL_OPEN = 16;
  FXL_SAVE = 17;
  FXL_START = 18;
  FXL_STOP = 19;
  FXL_UNKNOWN = 50;
  FXL_OTHER = 51;
  FXL_UNAVAILABLE = 52;
  FXL_NOT_APPLICABLE = 53;
  FXL_NA = 54;
  FXL_NA_LC = 55;
  FXL_T_PERCENT = 56;
  FXL_MM_FILE = 1000;
  FXL_MM_EDIT = 1001;
  FXL_MM_VIEW = 1002;
  FXL_MM_TOOLS = 1003;
  FXL_MM_HELP = 1004;
  FXL_MI_OPEN = 1100;
  FXL_MI_OPEN_RECENT = 1101;
  FXL_MI_LOAD_PREVIOUS = 1102;
  FXL_MI_NEW_IMAGE = 1103;
  FXL_MI_SAVE_AS = 1104;
  FXL_MI_CLOSE = 1105;
  FXL_MI_IMPORT = 1106;
  FXL_MI_EXPORT = 1107;
  FXL_MI_FILE_INFO = 1108;
  FXL_MI_FILE_MANAGEMENT = 1109;
  FXL_MI_FILE_DELETE = 1110;
  FXL_MI_FILE_COPY = 1111;
  FXL_MI_FILE_MOVE = 1112;
  FXL_MI_FILE_RENAME = 1113;
  FXL_MI_PRINT = 1114;
  FXL_MI_PRINT_PREVIEW = 1115;
  FXL_MI_EXIT = 1116;
  FXL_MI_UNDO = 1130;
  FXL_MI_COPY = 1131;
  FXL_MI_PASTE = 1132;
  FXL_MI_EDIT = 1133;
  FXL_MI_TOOLBARS = 1140;
  FXL_MI_TOOLBAR_MAIN = 1141;
  FXL_MI_TOOLBAR_STATUS = 1142;
  FXL_MI_DISPLAY_OPTIONS = 1150;
  FXL_MI_DISPLAY_NORMAL = 1151;
  FXL_MI_DISPLAY_FIT = 1152;
  FXL_MI_DISPLAY_FIT_ALL = 1153;
  FXL_MI_CENTER_IMAGE = 1160;
  FXL_MI_SHOW_SCROLLBARS = 1161;
  FXL_MI_ZOOM = 1170;
  FXL_MI_ZOOM_IN = 1171;
  FXL_MI_ZOOM_OUT = 1172;
  FXL_MI_ZOOM_FIT = 1173;
  FXL_MI_ZOOM_WIDTH = 1174;
  FXL_MI_ZOOM_HEIGHT = 1175;
  FXL_MI_ROTATE_CW = 1176;
  FXL_MI_ROTATE_CCW = 1177;
  FXL_MI_ZOOM_CUSTOM = 1178;
  FXL_MI_PAGES = 1200;
  FXL_MI_PAGE_FIRST = 1201;
  FXL_MI_PAGE_PREVIOUS = 1202;
  FXL_MI_PAGE_NEXT = 1203;
  FXL_MI_PAGE_LAST = 1204;
  FXL_MI_PAGE_GOTO = 1205;
  FXL_MI_PAGE_EXTRACT = 1206;
  FXL_MI_GOTO = 1210;
  FXL_MI_GO_BACK = 1211;
  FXL_MI_GO_FORWARD = 1212;
  FXL_MI_GO_FIRST = 1213;
  FXL_MI_GO_LAST = 1214;
  FXL_MI_GO_RANDOM = 1215;
  FXL_MI_SLIDESHOW = 1220;
  FXL_MI_SLIDESHOW_LAUNCH = 1221;
  FXL_MI_FULL_SCREEN = 1222;
  FXL_MI_OPTIONS = 1230;
  FXL_MI_HELP = 1250;
  FXL_MI_WEBSITE = 1251;
  FXL_MI_ABOUT = 1252;
  FXL_TB_OPEN = 2000;
  FXL_TB_OPEN_HINT = 2001;
  FXL_TB_LAST = 2002;
  FXL_TB_LAST_HINT = 2003;
  FXL_TB_SAVE = 2004;
  FXL_TB_SAVE_HINT = 2005;
  FXL_TB_CLOSE = 2006;
  FXL_TB_CLOSE_HINT = 2007;
  FXL_TB_PRINT = 2008;
  FXL_TB_PRINT_HINT = 2009;
  FXL_TB_PRINTPREVIEW = 2010;
  FXL_TB_PRINTPREVIEW_HINT = 2011;
  FXL_TB_COPY = 2012;
  FXL_TB_COPY_HINT = 2013;
  FXL_TB_PASTE = 2014;
  FXL_TB_PASTE_HINT = 2015;
  FXL_TB_PAGE_PREV = 2016;
  FXL_TB_PAGE_PREV_HINT = 2017;
  FXL_TB_PAGE_NEXT = 2018;
  FXL_TB_PAGE_NEXT_HINT = 2019;
  FXL_TB_INFO = 2020;
  FXL_TB_INFO_HINT = 2021;
  FXL_TB_ZOOM_IN = 2022;
  FXL_TB_ZOOM_IN_HINT = 2023;
  FXL_TB_ZOOM_OUT = 2024;
  FXL_TB_ZOOM_OUT_HINT = 2025;
  FXL_TB_ROTATE_CW = 2026;
  FXL_TB_ROTATE_CW_HINT = 2027;
  FXL_TB_ZOOM = 2028;
  FXL_TB_ZOOM_HINT = 2029;
  FXL_TB_DISPLAY = 2030;
  FXL_TB_DISPLAY_HINT = 2031;
  FXL_TB_FULLSCREEN = 2032;
  FXL_TB_FULLSCREEN_HINT = 2033;
  FXL_TB_EDIT = 2034;
  FXL_TB_EDIT_HINT = 2035;
  FXL_TB_GO_BACK = 2036;
  FXL_TB_GO_BACK_HINT = 2037;
  FXL_TB_GO_FORWARD = 2038;
  FXL_TB_GO_FORWARD_HINT = 2039;
  FXL_TB_UNDO = 2040;
  FXL_TB_UNDO_HINT = 2041;
  FXL_TB_GO_RANDOM = 2042;
  FXL_TB_GO_RANDOM_HINT = 2043;
  FXL_TB_ZOOM_FIT = 2044;
  FXL_TB_ZOOM_FIT_HINT = 2045;
  FXL_TB_NEW = 2046;
  FXL_TB_NEW_HINT = 2047;
  FXL_TB_FILE_DELETE = 2048;
  FXL_TB_FILE_DELETE_HINT = 2049;
  FXL_TB_FILE_COPY = 2050;
  FXL_TB_FILE_COPY_HINT = 2051;
  FXL_TB_FILE_MOVE = 2052;
  FXL_TB_FILE_MOVE_HINT = 2053;
  FXL_TB_FILE_RENAME = 2054;
  FXL_TB_FILE_RENAME_HINT = 2055;
  FXL_TB_ZOOM_100 = 2056;
  FXL_TB_ZOOM_100_HINT = 2057;
  FXL_TB_ZOOM_WIDTH = 2058;
  FXL_TB_ZOOM_WIDTH_HINT = 2059;
  FXL_TB_ZOOM_HEIGHT = 2060;
  FXL_TB_ZOOM_HEIGHT_HINT = 2061;
  FXL_TB_ROTATE_CCW = 2062;
  FXL_TB_ROTATE_CCW_HINT = 2063;
  FXL_TB_GO_FIRST = 2064;
  FXL_TB_GO_FIRST_HINT = 2065;
  FXL_TB_GO_LAST = 2066;
  FXL_TB_GO_LAST_HINT = 2067;
  FXL_TB_SLIDESHOW = 2068;
  FXL_TB_SLIDESHOW_HINT = 2069;
  FXL_TB_OPTIONS = 2070;
  FXL_TB_OPTIONS_HINT = 2071;
  FXL_TB_HELP = 2072;
  FXL_TB_HELP_HINT = 2073;
  FXL_TB_WEB = 2074;
  FXL_TB_WEB_HINT = 2075;
  FXL_TB_ABOUT = 2076;
  FXL_TB_ABOUT_HINT = 2077;
  FXL_TB_SCAN = 2078;
  FXL_TB_SCAN_HINT = 2079;
  FXL_TB_CAPTURE = 2080;
  FXL_TB_CAPTURE_HINT = 2081;
  FXL_TB_JPEGLOSSLESS = 2082;
  FXL_TB_JPEGLOSSLESS_HINT = 2083;
  FXL_TB_PAGING = 2084;
  FXL_TB_PAGING_HINT = 2085;
  FXL_TB_BROWSE = 2086;
  FXL_TB_BROWSE_HINT = 2087;
  FXL_FORMAT_JPEG = 7000;
  FXL_FORMAT_GIF = 7001;
  FXL_FORMAT_PNG = 7002;
  FXL_FORMAT_TIFF = 7003;
  FXL_FORMAT_JPEG_2000 = 7004;
  FXL_FORMAT_DNG = 7005;
  FXL_FORMAT_CAMERA_RAW = 7006;
  FXL_FORMAT_BMP = 7007;
  FXL_FORMAT_ICO = 7008;
  FXL_FORMAT_JPEG_XR = 7009;
  FXL_FORMAT_HDR = 7010;
  FXL_FORMAT_PSD = 7011;
  FXL_FORMAT_PDF = 7012;
  FXL_FORMAT_EPS = 7013;
  FXL_FORMAT_PS = 7014;
  FXL_FORMAT_SVG = 7015;
  FXL_FORMAT_TTF = 7016;
  FXL_FORMAT_OTF = 7017;
  FXL_FORMAT_OPENEXR = 7018;
  FXL_FORMAT_CUR = 7250;
  FXL_FORMAT_WMF = 7251;
  FXL_FORMAT_EMF = 7252;
  FXL_FORMAT_PBM = 7253;
  FXL_FORMAT_PGM = 7254;
  FXL_FORMAT_PPM = 7255;
  FXL_FORMAT_JBIG = 7256;
  FXL_FORMAT_DICOM = 7257;
  FXL_FORMAT_MNG = 7258;
  FXL_FORMAT_JNG = 7259;
  FXL_FORMAT_FLASHPIX = 7260;
  FXL_FORMAT_ASCII = 7261;
  FXL_FORMAT_WBMP = 7262;
  FXL_FORMAT_PCD = 7263;
  FXL_FORMAT_TGA = 7264;
  FXL_FORMAT_PCX = 7265;
  FXL_FORMAT_DCX = 7266;
  FXL_FORMAT_CAMERA_CANON = 7267;
  FXL_FORMAT_CAMERA_NIKON = 7268;
  FXL_FORMAT_CAMERA_FUJI = 7269;
  FXL_FORMAT_PSP = 7500;
  FXL_FORMAT_PICT = 7501;
  FXL_FORMAT_RARE_AUTODESK_IMG = 7502;
  FXL_FORMAT_RARE_PHOTODELUXE = 7503;
  FXL_FORMAT_RARE_KOALA = 7504;
  FXL_FORMAT_IFF = 7505;
  FXL_FORMAT_DDS = 7506;
  FXL_FORMAT_RARE_SUN = 7507;
  FXL_FORMAT_X11B = 7508;
  FXL_FORMAT_X11P = 7509;
  FXL_FORMAT_RARE_DRHALO = 7510;
  FXL_FORMAT_RARE_AVS = 7511;
  FXL_FORMAT_RARE_CINEON = 7512;
  FXL_FORMAT_RARE_GRAPHVIS = 7513;
  FXL_FORMAT_RARE_SMPTE = 7514;
  FXL_FORMAT_RARE_FITS = 7515;
  FXL_FORMAT_MATLAB = 7516;
  FXL_FORMAT_MAGICK = 7517;
  FXL_FORMAT_RARE_MTV = 7518;
  FXL_FORMAT_RARE_PALM = 7519;
  FXL_FORMAT_RARE_ALIAS_RLE = 7520;
  FXL_FORMAT_RARE_SFW = 7521;
  FXL_FORMAT_RARE_ALIAS = 7522;
  FXL_FORMAT_RARE_IRIX = 7523;
  FXL_FORMAT_RARE_VICAR = 7524;
  FXL_FORMAT_RARE_VIFF = 7525;
  FXL_FORMAT_GIMP = 7526;


implementation

end.
