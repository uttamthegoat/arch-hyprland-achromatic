if status is-interactive
    fastfetch
end

set -gx NVM_DIR $HOME/.nvm
bass source ~/.nvm/nvm.sh --no-use
nvm use default >/dev/null
