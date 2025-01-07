# Set terminal type to support 256 colors
export TERM="xterm-256color"

# Add custom binaries to the PATH if the directory exists
if [ -d "${HOME}/.local/bin/bear" ]; then
  export PATH="${HOME}/.local/bin/bear:${PATH}"
fi
