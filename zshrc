# ALIASES
alias 'aem'='cd /Users/michaelmastrucci/Documents/Github/AEM/setup-aem/author && echo -n -e "\033]0;AEM 6.5\007" && java -Xms2G -Xmx2G -XX:MaxPermSize=512M -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9999 -jar cq-quickstart-6.5.0.jar -v -r author,localdev,dev,dynamicmedia_scene7 -p4502 -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=1099 -Dcom.sun.management.jmxremote.rmi.port=1099 -Djava.rmi.server.hostname=127.0.0.1 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false'
alias 'aembld'='cd /Users/michaelmastrucci/Documents/Github/AEM/tag-aem-swcom && mvn clean install -PautoInstallPackage'
alias 'aem-view'='open -a "Google Chrome" "http://localhost:4502/content/sherwin/tag/language-masters/en_us/prodash-landing-page.html?wcmmode=disabled"'
alias 'mvnfe'='mvn clean install -PautoInstallPackage -pl ui.frontend,ui.apps -Dmaven.test.skip=true'
alias 'mvnpkg'='mvn clean install -PautoInstallPackage -Dmaven.test.skip=true'
alias 'mvncln'='mvn clean install -Dmaven.test.skip=true'
alias 'aemstart'='mvn clean install -PautoInstallPackage && open -a "Google Chrome" "http://localhost:4502/content/sherwin/tag/language-masters/en_us/prodash-landing-page.html?wcmmode=disabled"'

alias 'branch'='git branch'
alias 'build'='npm run build'
alias 'checkout'='git checkout -B'
alias 'delete'='git branch -D'
alias 'dev'='npm run dev'
alias 'fetch'='git fetch upstream develop && git merge upstream/develop && git push origin develop'
alias 'lint'='npm run lint'
alias 'pull'='git pull'
alias 'status'='git status'
alias 'switch'='git switch'
alias 'reload'='source ~/.zshrc'
alias 'test'='npm run test'
alias 'toolkit'='dir=$(pwd); while [[ ! -d "$dir/node_modules" && "$dir" != "/" ]]; do dir=$(dirname "$dir"); done; if [[ -d "$dir/node_modules" ]]; then rm -rf "$dir/node_modules"; rm -f "$dir/package-lock.json"; if [[ -f "$dir/package.json" ]]; then grep -v "@sherwin-williams-co/psg-ecom-react-toolkit" "$dir/package.json" > "$dir/package.json.tmp" && mv "$dir/package.json.tmp" "$dir/package.json"; fi; cd "$dir"; npm i @sherwin-williams-co/psg-ecom-react-toolkit@next; npm i; else echo "No node_modules folder found in parent directories."; fi'

# BREW
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
# Hides the default login message
export BASH_SILENCE_DEPRECATION_WARNING=1
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# EXPORTS
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/Users/michaelmastrucci/.nvm/versions/node/v20.10.0/bin:$PATH"
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completio

# ZSH
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Powerlevel10k configuration - keeping your color scheme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Custom Powerlevel10k configuration to match your color preferences
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
	status                  # exit code of the last command
	context                 # user@hostname
	dir                     # current directory
	vcs                     # git status
	virtualenv              # python virtual environment
)

typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  time                    # current time
  date                    # current date
)

# Status segment (equivalent to RETVAL)
typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND='#0d3a58'
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND='#ff628d'

# Context segment (user@host)
typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='#0d3a58'
typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='#ffc700'
typeset -g POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='#0d3a58'
typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='#ffc700'

# Directory segment
typeset -g POWERLEVEL9K_DIR_BACKGROUND='#6cbbff'
typeset -g POWERLEVEL9K_DIR_FOREGROUND='#193549'

# Git segment (VCS)
typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='#a6ff90'
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='#193549'
typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='#ff9d00'
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='#193549'
typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='#ff9d00'
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='#193549'

# Virtual environment segment
typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND='#9c88ff'
typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND='#193549'

# Time segment
typeset -g POWERLEVEL9K_TIME_BACKGROUND='#193549'
typeset -g POWERLEVEL9K_TIME_FOREGROUND='#ff44aa'
typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

# Date segment
typeset -g POWERLEVEL9K_DATE_BACKGROUND='#193549'
typeset -g POWERLEVEL9K_DATE_FOREGROUND='#80ffbb'
typeset -g POWERLEVEL9K_DATE_FORMAT='%D{%m/%d}'

# Additional customizations
typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=false
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=''
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
echo -ne "\e]1;Michael\a"
source $ZSH/oh-my-zsh.sh

# pnpm
export PNPM_HOME="/Users/michaelmastrucci/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH="/opt/homebrew/bin:$PATH"
eval "$(~/.local/bin/mise activate)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
