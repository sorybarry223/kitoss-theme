# kitoss.zsh-theme
#
# oh-my-zsh theme based on agnoster, with the bira layout:
#   - two-line prompt (╭─ / ╰─)
#   - no status segment on the left (✘ error, ⚡ root, ⚙ background jobs)
#   - exit code shown on the right, in red, only on error
#
# Requires oh-my-zsh (provides agnoster) and a Powerline / Nerd Font.

source "$ZSH/themes/agnoster.zsh-theme"

# Segments, left to right. Segments missing from the installed agnoster are skipped.
(( $+KITOSS_SEGMENTS )) || KITOSS_SEGMENTS=(virtualenv aws terraform context dir git bzr hg)

build_prompt() {
  RETVAL=$?
  local segment
  for segment in $KITOSS_SEGMENTS; do
    (( $+functions[prompt_$segment] )) && prompt_$segment
  done
  prompt_end
}

PROMPT='╭─%{%f%b%k%}$(build_prompt)
╰─%B%(!.#.$)%b '
RPROMPT='%B%(?..%F{red}%? ↵%f)%b'
