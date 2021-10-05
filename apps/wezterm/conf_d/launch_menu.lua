local wezterm = require 'wezterm';

local launch_menu = {}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  table.insert(launch_menu, {
    label = "PowerShell 5",
    args = {"powershell.exe", "-NoLogo"},
  })

  table.insert(launch_menu, {
    label = "PowerShell 7",
    args = {"pwsh.exe", "-NoLogo"},
  })

  table.insert(launch_menu, {
    label = "cmd",
    args = {"cmd.exe", "-NoLogo"},
  })

  table.insert(launch_menu, {
    label = "cygwin bash",
    args = {"C:/cygwin64/bin/bash", "--login"},
  })

end

return launch_menu
