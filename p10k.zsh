# ~/.p10k.zsh
# Unified config: Toolkit (explicit), VS Code Default, and Non‑VS Code palettes.

# -----------------------
# Shared layout & behavior
# -----------------------
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir vcs virtualenv)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time date)

typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=false
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=''
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# -----------------------
# Palette selection logic
# -----------------------
if [[ "$VSCODE_PROFILE" == "Toolkit" ]]; then
  # ===== Toolkit (Cobalt2-ish) =====
  typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND='#0d3a58'
  typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND='#ff628d'

  typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='#0d3a58'
  typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='#ffc700'
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='#0d3a58'
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='#ffc700'

  typeset -g POWERLEVEL9K_DIR_BACKGROUND='#6cbbff'
  typeset -g POWERLEVEL9K_DIR_FOREGROUND='#193549'

  typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='#a6ff90'
  typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='#193549'
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='#ff9d00'
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='#193549'
  typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='#ff9d00'
  typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='#193549'

  typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND='#9c88ff'
  typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND='#193549'

  typeset -g POWERLEVEL9K_TIME_BACKGROUND='#193549'
  typeset -g POWERLEVEL9K_TIME_FOREGROUND='#ff44aa'
  typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

  typeset -g POWERLEVEL9K_DATE_BACKGROUND='#193549'
  typeset -g POWERLEVEL9K_DATE_FOREGROUND='#80ffbb'
  typeset -g POWERLEVEL9K_DATE_FORMAT='%D{%m/%d}'

elif [[ "$VSCODE_PROFILE" == "Learning" ]]; then
  # ===== Learning (SynthWave 84) =====
  typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND='#2a0845'
  typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND='#ff006e'

  typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='#2a0845'
  typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='#36eee0'
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='#2a0845'
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='#ff006e'

  typeset -g POWERLEVEL9K_DIR_BACKGROUND='#8b5cf6'
  typeset -g POWERLEVEL9K_DIR_FOREGROUND='#ffffff'

  typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='#00ff41'
  typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='#2a0845'
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='#72deff'
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='#2a0845'
  typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='#ff006e'
  typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='#ffffff'

  typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND='#9333ea'
  typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND='#36eee0'

  typeset -g POWERLEVEL9K_TIME_BACKGROUND='#241b2f'
  typeset -g POWERLEVEL9K_TIME_FOREGROUND='#fb37b4'
  typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

  typeset -g POWERLEVEL9K_DATE_BACKGROUND='#241b2f'
  typeset -g POWERLEVEL9K_DATE_FOREGROUND='#f3ea5f'
  typeset -g POWERLEVEL9K_DATE_FORMAT='%D{%m/%d}'

elif [[ "$TERM_PROGRAM" == "vscode" ]]; then

  # ===== Ubuntu terminal–style colors (with green, gold, light blue; orange only in time/date) =====

  # Layout (include only once in your ~/.p10k.zsh)
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir vcs virtualenv)
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time date)

  # Shared behavior
  typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=false
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=''
  ENABLE_CORRECTION="true"
  COMPLETION_WAITING_DOTS="true"

  # Status (errors): aubergine background, bright red text for visibility
  typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND='#2c001e' # aubergine
  typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND='#ff5c5c' # bright red (readable on aubergine)

  # Context (user@host): aubergine bar with soft gold/white accents
  typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='#2c001e' # aubergine
  typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='#afd704' # soft gold
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='#2c001e'
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='#ffffff' # white for root to stand out

  # Directory: canonical purple bar
  typeset -g POWERLEVEL9K_DIR_BACKGROUND='#772953' # Ubuntu purple
  typeset -g POWERLEVEL9K_DIR_FOREGROUND='#f7f7f7' # near‑white

  # Git (VCS): green (clean), light blue (untracked), gold (modified)
  typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='#4e9a06' # Ubuntu green
  typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='#ffffff'

  typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='#34e2e2' # light blue/teal
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='#2e3436' # dark slate for contrast

  typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='#c4a000' # Ubuntu gold
  typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='#2c001e' # aubergine text on gold

  # Python virtualenv: slate bar, teal accent
  typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND='#2e3436' # slate grey
  typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND='#34e2e2' # light blue/teal

  # Time / Date: use orange only here (small element), as requested
  # -> Time: orange background with white text
  typeset -g POWERLEVEL9K_TIME_BACKGROUND='#dd4814' # canonical orange
  typeset -g POWERLEVEL9K_TIME_FOREGROUND='#ffffff'
  typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

  # -> Date: dark grey background with orange text
  typeset -g POWERLEVEL9K_DATE_BACKGROUND='#2e3436' # dark slate
  typeset -g POWERLEVEL9K_DATE_FOREGROUND='#dd4814' # orange accent

else
  # ===== Classic SNES Theme (Non‑VS Code terminals) =====
  # Retro 16-bit SNES color palette: saturated and vibrant
  typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND='#000080' # classic SNES navy blue
  typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND='#ff0000' # pure SNES red

  typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='#000080' # classic SNES navy blue
  typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='#ffff00' # bright SNES yellow
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='#000080'
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='#ffa500' # SNES orange for root

  typeset -g POWERLEVEL9K_DIR_BACKGROUND='#4040ff' # bright SNES blue
  typeset -g POWERLEVEL9K_DIR_FOREGROUND='#ffffff' # pure white

  typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='#008000'     # classic SNES green
  typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='#ffffff'     # pure white text
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='#800080' # SNES purple
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='#ffff00' # bright yellow
  typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='#ff8000'  # SNES orange
  typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='#000000'  # pure black text

  typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND='#800000' # SNES maroon/dark red
  typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND='#00ffff' # SNES cyan

  typeset -g POWERLEVEL9K_TIME_BACKGROUND='#000000' # pure black
  typeset -g POWERLEVEL9K_TIME_FOREGROUND='#00ff00' # bright SNES green
  typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

  typeset -g POWERLEVEL9K_DATE_BACKGROUND='#000000' # pure black
  typeset -g POWERLEVEL9K_DATE_FOREGROUND='#00ffff' # SNES cyan
  typeset -g POWERLEVEL9K_DATE_FORMAT='%D{%m/%d}'
fi
