# README: Open With Code Context Menu Scripts

## Introduction

This commit includes two scripts to manage the **“Open with Code”** option in the Windows folder right-click context menu:

- **Add-Open-With-Code.bat** — Adds the “Open with Code” entry to folders and folder backgrounds.  
- **Remove-Open-With-Code.bat** — Removes the “Open with Code” entry.

---

## Usage

### Add the Context Menu

Run `Add-Open-With-Code.bat` **as Administrator** to add the “Open with Code” option to folder right-click menus.  
This will launch VS Code opening the selected folder.

### Remove the Context Menu

Run `Remove-Open-With-Code.bat` **as Administrator** to remove the “Open with Code” option from the context menu.

---

## Details

- Adds/removes registry keys under `HKEY_CLASSES_ROOT\Directory\shell\OpenWithCode` and `HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCode`.  
- Uses `%LOCALAPPDATA%\Programs\Microsoft VS Code\Code.exe` by default. Adjust if VS Code is installed elsewhere.  
- Supports opening folders by passing the folder path as argument to `Code.exe`.

---

## Notes

- Must be run with administrator privileges to modify the registry.  
- After running Add script, right-click on any folder and select “Open with Code” to open it in Visual Studio Code.


