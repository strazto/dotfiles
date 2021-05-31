local wezterm = require 'wezterm'
local ssh_domains = require 'conf_d.ssh_domains'
return {
  font = wezterm.font_with_fallback({
    "Fira Code",
    "FiraCode Nerd Font Mono",
  }),
  color_scheme = "Dark Pastel",
  ssh_domains = ssh_domains,
}
