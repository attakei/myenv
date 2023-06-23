# --------------------------------------
# - Zsh environment for me (cross-env)
# --------------------------------------

# Force reset path
path=(
  "/usr/local/sbin"
  "/usr/local/bin"
  "/usr/sbin"
  "/usr/bin"
  "/sbin"
  "/bin"
  "/usr/local/games"
  "/usr/games"
  "/snap/bin"
)

# Docker-rootless
if [ "$XDG_RUNTIME_DIR" = "" ] ; then
  export XDG_RUNTIME_DIR="$HOME/.local/runtime"
fi
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
export DOCKER_CONFIG=$HOME/.local/opt/docker-config

# Editor on shell
export EDITOR=`which vim`

# Load machine-local .zshenv
if [ -e "$HOME/.zshenv.local" ] ; then
  source "$HOME/.zshenv.local"
fi
