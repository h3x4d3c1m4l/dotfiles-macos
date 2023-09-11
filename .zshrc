PATH=$PATH:$HOME/fvm/default/bin:$HOME/.cargo/bin
eval "$(starship init zsh)"

if [ -d "$(brew --prefix)/share/google-cloud-sdk" ]; then
    source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
    source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
fi

alias finstall="fvm install"
alias fget="fvm flutter pub get"
alias foutdated="fvm flutter pub outdated"
alias fbuild="fvm flutter pub run build_runner build --delete-conflicting-outputs"
alias fwatch="fvm flutter pub run build_runner watch --delete-conflicting-outputs"
alias fclean="fvm flutter clean"
alias fanalyze="fvm flutter analyze"
alias fupgrade="fvm flutter pub upgrade"
alias flocgen="fvm flutter pub run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart"
alias fl10n="fvm flutter gen-l10n"
alias frgen="flutter_rust_bridge_codegen --rust-input rust/src/dart_bridge/api.rs --dart-output lib/rust_bridge/library_api.generated.dart --rust-output rust/src/dart_bridge/ffi_exports.rs --c-output macos/Runner/bridge_generated.h --skip-add-mod-to-lib --no-build-runner"

alias gfd="git fetch origin development:development"
alias grd="git rebase development"
alias gpull="git pull"
alias gpush="git push"
alias gpushf="git push --force-with-lease"
alias gcd="git checkout development"
alias gdelmerged="git branch --merged | egrep -v \"(^\*|master|main|development)\" | xargs git branch -d"

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit -i
fi

eval $(thefuck --alias)
eval "$(fnm env --use-on-cd)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# bun completions
[ -s "/Users/sanderinthout/.bun/_bun" ] && source "/Users/sanderinthout/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
