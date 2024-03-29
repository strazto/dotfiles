local wezterm = require 'wezterm'
local ssh_domains = require 'conf_d.ssh_domains'


function file_exists(name)
  local f=io.open(name,"r")
  if f~=nil then io.close(f) return true else return false end
end
      
config = {
  font = wezterm.font_with_fallback({
    "Fira Code",
    "FiraCode Nerd Font Mono",
  }),
  color_scheme = "Dark Pastel",
  ssh_domains = ssh_domains,
}

if file_exists(wezterm.config_dir .. '/conf_d/default_prog.lua') then
  config["default_prog"] = require 'conf_d.default_prog' 
end

config["launch_menu"] = require 'conf_d.launch_menu'

return config
