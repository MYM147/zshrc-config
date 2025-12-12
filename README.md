# HEY THERE!
This is the config I use to improve efficiency and readability in the terminal.

**ALIASES

This config uses short and simple aliases to shorten github commands.

**EXAMPLE**

'git branch' is now 'branch'

'npm run build' is now 'build'

'git fetch upstream develop && git merge upstream/develop && git push origin develop' is simply 'fetch'


## THEME AND COLORS
This config makes use of the Powerlevel10k terminal theme. Colors have been changed to match my go-to IDE theme 'Cobalt2', 'SynthWave 84', and 'Ubuntu Color Theme' based on the profiles I'm using (toolkit, default, or learning) and also minimize the information displayed to both show essential but also useful information (listed in order from left to right side of the terminal prompt):

### LEFT
1. **Status** - Exit code of the last command (only shows if there was an error)
2. **Context** - Your username@hostname
3. **Directory** - Current working directory path
4. **VCS (Git)** - Git branch name and status
5. **Virtual Environment** - Python virtual environment name (when active)

### RIGHT
6. **Time** - Current time in 24-hour format (HH:MM)
7. **Date** - Current date in MM/DD format
