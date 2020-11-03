export GOPATH="${HOME}/go"
export GOROOT="$(go env GOROOT)"

export PATH="/usr/local/opt/python/libexec/bin:${PATH}"
export PATH="/usr/local/opt/ruby/bin:${PATH}"
export PATH="${PATH}:/usr/local/lib/ruby/gems/2.7.0/bin"
export PATH="${PATH}:${GOPATH}/bin"
export PATH="${PATH}:/Applications/Postgres.app/Contents/Versions/latest/bin/"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export GPG_TTY=$(tty)
