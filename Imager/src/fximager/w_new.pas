unit w_new;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, c_const, c_locales, c_reg;

type
  TfrmNew = class(TForm)
    gbxSize: TGroupBox;
    gbxColor: TGroupBox;
    edtWidth: TEdit;
    edtHeight: TEdit;
    lblWidth: TLabel;
    lblHeight: TLabel;
    btnCancel: TButton;
    btnOK: TButton;
    sbxColor: TScrollBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbxColorClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Localize();
  end;

var
	frmNew: TfrmNew;


implementation

uses f_graphics, main;

{$R *.DFM}

procedure TfrmNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	FxRegWStr('New_Width', edtWidth.Text);
	FxRegWStr('New_Height', edtHeight.Text);
	FxRegWStr('New_Color', ColorToString(sbxColor.Color));

	Action := caFree;
end;

procedure TfrmNew.FormDestroy(Sender: TObject);
begin
	frmNew := nil;
end;

procedure TfrmNew.btnCancelClick(Sender: TObject);
begin
	Close();
end;

procedure TfrmNew.btnOKClick(Sender: TObject);
var
	w, h: integer;
	bmp: TBitmap;
begin
	w := 500;
	h := 350;

	try
  		w := StrToInt(edtWidth.Text);
  		h := StrToInt(edtHeight.Text);
  	except
        ShowMessage(LoadLStr(621));
    	Abort();
  	end;

    bmp := TBitmap.Create();
	bmp.Canvas.Brush.Color := sbxColor.Color;

	bmp.Width := w;
	bmp.Height := h;

	CloseImage();
	OpenUntitled(bmp);
	FreeAndNil(bmp);

	Close();
end;

procedure TfrmNew.FormCreate(Sender: TObject);
begin
    Localize();

	edtWidth.Text := FxRegRStr('New_Width', '500');
	edtHeight.Text := FxRegRStr('New_Height', '350');
	sbxColor.Color := StringToColor(FxRegRStr('New_Color', 'clWhite'));
end;

procedure TfrmNew.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if Key = VK_ESCAPE then
  		Self.Close();
end;

procedure TfrmNew.CreateParams(var Params: TCreateParams);
begin
	Params.Style := (Params.Style or WS_POPUP);

	inherited;

	if (Owner is TForm) then
		Params.WndParent := (Owner as TWinControl).Handle
	else if Assigned(Screen.ActiveForm) then
		Params.WndParent := Screen.ActiveForm.Handle;
end;

procedure TfrmNew.Localize();
begin
    Self.Caption				:= LoadLStr(740);

    gbxSize.Caption				:= LoadLStr(741);
    gbxColor.Caption			:= LoadLStr(742);
    lblWidth.Caption			:= LoadLStr(743);
    lblHeight.Caption			:= LoadLStr(744);
    sbxColor.Hint				:= LoadLStr(745);

    btnOK.Caption				:= LoadLStr(50);
    btnCancel.Caption			:= LoadLStr(51);
end;

procedure TfrmNew.sbxColorClick(Sender: TObject);
var
	dlg: TColorDialog;
begin
	dlg := TColorDialog.Create(Self);

    dlg.Color := sbxColor.Color;
    dlg.Options := [cdFullOpen, cdAnyColor];

    if dlg.Execute then
        sbxColor.Color := dlg.Color;

    FreeAndNil(dlg);
end;

end.