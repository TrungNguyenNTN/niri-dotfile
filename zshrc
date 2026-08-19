# Created by newuser for 5.9.2

# 1. grml configurations (on top file)
if [ -f /etc/zsh/zshrc ]; then
    source /etc/zsh/zshrc
fi

# 2. Enable Starship Prompt
prompt off                  # turn off grml prompt
eval "$(starship init zsh)" # use starship

# 3. Enable Plugin
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh                   # auto suggest on zsh history
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh           # highlight zshsyntax
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh # Search command in zsh history

# 4. Key bind for History Substring Search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

zstyle ':completion:*' insert-tab false

# I use Arch, BTW! :)
alias btw="figlet -f slant 'I use Arch, BTW' | lolcat"

# Cowsay :))
alias translate="/usr/bin/trans -b :vi"
alias tuxsay="fortune | translate | cowsay -f tux"
alias dragonsay="fortune | translate | cowsay -f dragon"
alias _cowsay="fortune | translate | cowsay"
