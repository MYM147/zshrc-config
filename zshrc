# =========================
# ALIASES
# =========================
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
alias 'empty'='git commit --allow-empty -m "trigger PR refresh" && git push'
alias 'fetch'='git fetch upstream develop && git merge upstream/develop && git push origin develop'
alias 'fin'='npm run test && npm run lint && npm run build'
alias 'lint'='npm run lint'
alias 'pull'='git pull'
alias 'status'='git status'
alias 'switch'='git switch'
alias 'reload'='source ~/.zshrc'
alias 'test'='npm run test'
alias 'tk'='dir=$(pwd); while [[ ! -d "$dir/node_modules" && "$dir" != "/" ]]; do dir=$(dirname "$dir"); done; if [[ -d "$dir/node_modules" ]]; then rm -rf "$dir/node_modules"; rm -f "$dir/package-lock.json"; if [[ -f "$dir/package.json" ]]; then grep -v "@sherwin-williams-co/psg-ecom-react-toolkit" "$dir/package.json" > "$dir/package.json.tmp" && mv "$dir/package.json.tmp" "$dir/package.json"; fi; cd "$dir"; npm i @sherwin-williams-co/psg-ecom-react-toolkit@next; npm i; else echo "No node_modules folder found in parent directories."; fi'
alias 'vbld'='vue-cli-service build'
alias 'vsrv'='vue-cli-service serve'
alias 'vtst'='vue-cli-service test:unit'
alias 'zshrc'='code ~/.zshrc'

# =========================
# PATH & ENVIRONMENT
# =========================
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
# Hide default login message on macOS
export BASH_SILENCE_DEPRECATION_WARNING=1
case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

# Additional paths
export PATH="/Users/michaelmastrucci/.nvm/versions/node/v20.10.0/bin:$PATH"
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

# =========================
# NVM
# =========================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"                   # Loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # Loads nvm bash_completion

# =========================
# OH-MY-ZSH & THEME
# =========================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Powerlevel10k instant prompt (must stay near the top of ~/.zshrc)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-$USER.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-$USER.zsh"
fi

# =========================
# Plugins
# =========================
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Optional tab title
echo -ne "\e]1;Michael\a"

# Load Oh-My-Zsh plugins and theme
source "$ZSH/oh-my-zsh.sh"

# =========================
# Powerlevel10k config (all colors live in ~/.p10k.zsh)
# =========================
# Unified config: Default palette by default; overrides apply when VSCODE_PROFILE=Toolkit
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# =========================
# PNPM
# =========================
export PNPM_HOME="/Users/michaelmastrucci/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;                 # already present
*) export PATH="$PNPM_HOME:$PATH" ;; # add if missing
esac
# pnpm end

# =========================
# jenv / mise
# =========================
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH="/opt/homebrew/bin:$PATH"
eval "$(~/.local/bin/mise activate)"

# =========================
# SDKMAN (must be last)
# =========================
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
