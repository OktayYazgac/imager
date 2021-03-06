unit f_ui;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, UxTheme,
  ShellAPI, imageenview,
  c_const, c_themes, c_reg;

procedure ApplyTheme();
procedure ToggleMainToolbar(strict: boolean = false; visible: boolean = true);
procedure ToggleStatusbar(strict: boolean = false; visible: boolean = true);
procedure Able();
procedure FSRestorePos(toolbars_only: boolean = false);
procedure FSSavePos(toolbars_only: boolean = false);
procedure Header();
procedure ToggleFS();
procedure ApplyBackground();


implementation

uses w_main, f_nav, f_graphics, f_tools, w_show, f_images, w_editor, w_preview;

procedure ApplyTheme();
var
  bmp: TBitmap;
begin
  // standard images
  bmp := LoadBitmapFromTheme('IMGMAIN');

  if (bmp <> nil) then
    begin
    frmMain.imlStd.Height := bmp.Height;
    frmMain.imlStd.Width := bmp.Height;
    frmMain.imlStd.Clear();
    frmMain.imlStd.Add(bmp, nil);

    FreeAndNil(bmp);
    end
  else
    frmMain.imlStd.Clear();

  // disabled standard images
  bmp := LoadBitmapFromTheme('IMGMAIND');

  if (bmp <> nil) then
    begin
    frmMain.imlDis.Height := bmp.Height;
    frmMain.imlDis.Width := bmp.Height;
    frmMain.imlDis.Clear();
    frmMain.imlDis.Add(bmp, nil);

    FreeAndNil(bmp);
    end
  else
    frmMain.imlDis.Clear();

  // update toolbar button sizes
  frmMain.itbMain.ButtonHeight := frmMain.imlStd.Height + 6;
  frmMain.itbMain.ButtonWidth := frmMain.imlStd.Height + 7;
end;

// toggles main toolbar
procedure ToggleMainToolbar(strict: boolean = false; visible: boolean = true);
begin
  if strict then
    begin
    // reading visible value
    frmMain.tbrMain.Visible := visible;
    frmMain.miToolbar.Checked := visible;
    frmMain.piTBMain.Checked := visible;
    end
  else
    begin
    // simple toggling on/off
    if frmMain.tbrMain.Visible then
      begin
      // off
      frmMain.tbrMain.Visible := false;
      frmMain.miToolbar.Checked := false;
      frmMain.piTBMain.Checked := false;
      end
    else
      begin
      // on
      frmMain.tbrMain.Visible := true;
      frmMain.miToolbar.Checked := true;
      frmMain.piTBMain.Checked := true;
      end;
    end;
end;

// toggles statusbar
procedure ToggleStatusbar(strict: boolean = false; visible: boolean = true);
begin
  if strict then
    begin
    // reading visible value
    frmMain.sbrMain.Visible := visible;
    frmMain.miStatusBar.Checked := visible;
    frmMain.piStatusBar.Checked := visible;
    end
  else
    begin
    // simple toggling on/off
    if frmMain.sbrMain.Visible then
      begin
      // off
      frmMain.sbrMain.Visible := false;
      frmMain.miStatusBar.Checked := false;
      frmMain.piStatusBar.Checked := false;
      end
    else
      begin
      // on
      frmMain.sbrMain.Visible := true;
      frmMain.miStatusBar.Checked := true;
      frmMain.piStatusBar.Checked := true;
      end;
    end;
end;

procedure Able();
var
  i: integer;
  is_file, is_filled, is_multi: boolean;
begin
  is_file := (IsPresent() and not IsUnsaved());
  is_filled := IsPresent();
  is_multi := IsMultipage();

  frmMain.tbnRScan.Enabled := infRoles.scan;
  frmMain.tbnRCapture.Enabled := infRoles.capture;
  frmMain.tbnRJPEG.Enabled := (infRoles.jpegll and is_filled);

  frmMain.miSaveAs.Enabled := is_filled;
  frmMain.tbnSave.Enabled := is_filled;

  frmMain.miClose.Enabled := is_filled;
  frmMain.piClose.Enabled := is_filled;
  frmMain.tbnClose.Enabled := is_filled;

  if (frmMain.mExport.Count > 0) then
    frmMain.mExport.Enabled := is_filled
  else
    frmMain.mExport.Enabled := false;

  frmMain.miPrintPreview.Enabled := is_filled;
  frmMain.tbnPrint.Enabled := is_filled;

  frmMain.miCopy.Enabled := is_filled;
  frmMain.tbnCopy.Enabled := is_filled;

  frmMain.mZoom.Enabled := is_filled;
  frmMain.miZoomIn.Enabled := is_filled;
  frmMain.miZoomOut.Enabled := is_filled;
  frmMain.tbnZoomIn.Enabled := is_filled;
  frmMain.tbnZoomOut.Enabled := is_filled;
  frmMain.tbnZoomMisc.Enabled := is_filled;
  frmMain.tbnZoomFit.Enabled := is_filled;
  frmMain.tbnRotate.Enabled := is_filled;
  frmMain.tbnZoom100.Enabled := is_filled;
  frmMain.tbnZoomWidth.Enabled := is_filled;
  frmMain.tbnZoomHeight.Enabled := is_filled;
  frmMain.tbnRotateCCW.Enabled := is_filled;

  frmMain.miEditor.Enabled := is_filled;
  frmMain.tbnEditor.Enabled := is_filled;

  for i := 0 to (frmMain.mTools.Count - 1) do
    begin
    if (frmMain.mTools.Items[i].Tag <> 7) then
      frmMain.mTools.Items[i].Enabled := is_filled
    else
      frmMain.mTools.Items[i].Enabled := true;
    end;

  frmMain.miInfo.Enabled := is_filled;
  frmMain.tbnInfo.Enabled := is_filled;

  frmMain.miGoBack.Enabled := is_file;
  frmMain.miGoForward.Enabled := is_file;
  frmMain.miGoFirst.Enabled := is_file;
  frmMain.miGoLast.Enabled := is_file;
  frmMain.miGoRandom.Enabled := is_file;
  frmMain.tbnGoBack.Enabled := is_file;
  frmMain.tbnGoForward.Enabled := is_file;
  frmMain.tbnGoRandom.Enabled := is_file;
  frmMain.tbnGoFirst.Enabled := is_file;
  frmMain.tbnGoLast.Enabled := is_file;
  frmMain.piBack.Enabled := is_file;
  frmMain.piForward.Enabled := is_file;

  frmMain.miShow.Enabled := is_file;
  frmMain.miStartShow.Enabled := is_file;
  frmMain.tbnShow.Enabled := is_file;

  frmMain.miFMove.Enabled := is_file;
  frmMain.miFRename.Enabled := is_file;
  frmMain.miFCopy.Enabled := is_file;
  frmMain.miFDelete.Enabled := is_file;
  frmMain.tbnFDelete.Enabled := is_file;
  frmMain.tbnFCopy.Enabled := is_file;
  frmMain.tbnFMove.Enabled := is_file;
  frmMain.tbnFRename.Enabled := is_file;

  frmMain.mMulti.Visible := is_multi;
  frmMain.tbnMultiPrev.Enabled := is_multi;
  frmMain.tbnMultiNext.Enabled := is_multi;
  frmMain.tbnGoToPage.Enabled := is_multi;
  frmMain.pMulti.Visible := is_multi;
end;

procedure FSRestorePos(toolbars_only: boolean = false);
begin
  if not toolbars_only then
    begin
    if (FxRegRInt('FS_State', 1) = 0) then
      frmMain.WindowState := wsNormal
    else
      frmMain.WindowState := wsMaximized;
    end;

  frmMain.tbrMain.Visible := (FxRegRInt('FS_Toolbar', 1) <> 0);
  frmMain.sbrMain.Visible := (FxRegRInt('FS_Status', 1) <> 0);

  if ((not toolbars_only) and (frmMain.WindowState <> wsMaximized)) then
    begin
    frmMain.Top := FxRegRInt('FS_Top', 5);
    frmMain.Left := FxRegRInt('FS_Left', 5);
    frmMain.Width := FxRegRInt('FS_Width', 775);
    frmMain.Height := FxRegRInt('FS_Height', 575);
    end;
end;

// saves temp window position to ini
procedure FSSavePos(toolbars_only: boolean = false);
begin
  if not toolbars_only then
    begin
    if (frmMain.WindowState = wsMaximized) then
      FxRegWInt('FS_State', 1)
    else
      begin
      FxRegWInt('FS_State', 0);
      FxRegWInt('FS_Top', frmMain.Top);
      FxRegWInt('FS_Left', frmMain.Left);
      FxRegWInt('FS_Width', frmMain.Width);
      FxRegWInt('FS_Height', frmMain.Height);
      end;
    end;

  if frmMain.tbrMain.Visible then
    FxRegWInt('FS_Toolbar', 1)
  else
    FxRegWInt('FS_Toolbar', 0);

  if frmMain.sbrMain.Visible then
    FxRegWInt('FS_Status', 1)
  else
    FxRegWInt('FS_Status', 0);
end;

// sets Imager's window header
procedure Header();
begin
  if (infImage.path <> '') then
    begin
    if frmMain.bFullPathInTitle then
      begin
      // full path
      Application.Title := (infImage.path + ' - ' + sAppName);
      frmMain.Caption := (infImage.path + ' - ' + sAppName);
      end
    else
      begin
      Application.Title := (ExtractFileName(infImage.path) + ' - ' + sAppName);
      frmMain.Caption := (ExtractFileName(infImage.path) + ' - ' + sAppName);
      end;
    end
  else
    begin
    Application.Title := sAppName;
    frmMain.Caption := sAppName;
    end;
end;

// full-screen toggle
procedure ToggleFS();
begin
  if ((Assigned(frmEditor)) or (Assigned(frmPrintPreview))) then
    Abort();

  if not frmMain.full_screen then
    begin
    // starting FS
    FSSavePos();

    frmMain.miFullScreen.Checked := true;
    frmMain.tbnFullScreen.Down := true;
    frmMain.piFullScreen.Checked := true;

    frmMain.Menu := nil;
    frmMain.tbrMain.Visible := false;
    frmMain.sbrMain.Visible := false;

    frmMain.WindowState := wsMaximized;
    frmMain.sbxMain.BorderStyle := bsNone;
    frmMain.BorderStyle := bsNone;

    frmMain.piMinimize.Visible := true;
    frmMain.full_screen := true;
    end
  else
    begin
    // closing FS
    frmMain.miFullScreen.Checked := false;
    frmMain.tbnFullScreen.Down := false;
    frmMain.piFullScreen.Checked := false;

    frmMain.WindowState := wsNormal;
    frmMain.BorderStyle := bsSizeable;
    frmMain.Menu := frmMain.mnuMain;
    frmMain.tbrMain.Visible := true;
    frmMain.sbrMain.Visible := true;

    if not UseThemes() then
      frmMain.sbxMain.BorderStyle := bsSingle;

    FSRestorePos();

    frmMain.piMinimize.Visible := false;
    frmMain.full_screen := false;
    end;

  frmMain.Hide();
  frmMain.Show();

  ApplyBackground();

  // restore drag-n-drop support
  DragAcceptFiles(frmMain.Handle, true);
end;

procedure ApplyBackground();
begin
  // checking correct style
  case fxSettings.BackgroundStyle of
    0: // gradient
      begin
      if frmMain.img.Background <> fxSettings.ColorDefault then
        frmMain.img.Background := fxSettings.ColorDefault;
      if frmMain.img.GradientEndColor <> fxSettings.ColorGradient then
        frmMain.img.GradientEndColor := fxSettings.ColorGradient;

      if frmMain.img.BackgroundStyle <> iebsGradient then
        frmMain.img.BackgroundStyle := iebsGradient;
      end;

    1: // solid color
      begin
      if not frmMain.full_screen then
        begin
        if frmMain.img.Background <> fxSettings.ColorDefault then
          frmMain.img.Background := fxSettings.ColorDefault;
        end
      else
        begin
        if frmMain.img.Background <> fxSettings.ColorFullScreen then
          frmMain.img.Background := fxSettings.ColorFullScreen;
        end;

      if frmMain.img.BackgroundStyle <> iebsSolid then
        frmMain.img.BackgroundStyle := iebsSolid;
      end;

    2: // system color
      begin
      if not frmMain.full_screen then
        begin
        if frmMain.img.Background <> clAppWorkSpace then
          frmMain.img.Background := clAppWorkSpace;
        end
      else
        begin
        if frmMain.img.Background <> fxSettings.ColorFullScreen then
          frmMain.img.Background := fxSettings.ColorFullScreen;
        end;

      if frmMain.img.BackgroundStyle <> iebsSolid then
        frmMain.img.BackgroundStyle := iebsSolid;
      end;

    3: // box pattern
      begin
      if frmMain.img.Background <> fxSettings.ColorDefault then
        frmMain.img.Background := fxSettings.ColorDefault;
      if frmMain.img.GradientEndColor <> fxSettings.ColorGradient then
        frmMain.img.GradientEndColor := fxSettings.ColorGradient;

      if frmMain.img.BackgroundStyle <> iebsChessboard then
        frmMain.img.BackgroundStyle := iebsChessboard;
      end;

    4: // diagonals
      begin
      if frmMain.img.Background <> fxSettings.ColorDefault then
        frmMain.img.Background := fxSettings.ColorDefault;
      if frmMain.img.GradientEndColor <> fxSettings.ColorGradient then
        frmMain.img.GradientEndColor := fxSettings.ColorGradient;

      if frmMain.img.BackgroundStyle <> iebsDiagonals then
        frmMain.img.BackgroundStyle := iebsDiagonals;
      end;
  end;
end;

end.
