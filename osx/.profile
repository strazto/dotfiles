
# MacPorts Installer addition on 2019-12-09_at_14:32:25: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


export PATH=$PATH:$(go env GOPATH)/bin

export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/libxml2/lib/pkgconfig"

# Initialize the skhd (Shortcut Daemon) in the background
# Would be better to use the following:
# brew service start skhd
# But the brew version is out of date and doesnt correctly load the config files as of 14/01/2020
skhd &

