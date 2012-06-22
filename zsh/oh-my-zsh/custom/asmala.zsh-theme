# ------------------------------------------------------------------------------
#          FILE:  asmala.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file.
#        AUTHOR:  Janne Asmala <janne@asmala.name>
#       VERSION:  0.0.1
# ------------------------------------------------------------------------------


if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
    PROMPT='%{$solarized[violet]%}[%n@%m: %{$solarized[blue]%}%c %{$reset_color%}$(git_prompt_info)%{$solarized[violet]%}] $ %{$reset_color%}'

    ZSH_THEME_GIT_PROMPT_PREFIX="%{$solarized[yellow]%}("
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$solarized[yellow]%})%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_DIRTY="%{$solarized[red] ✗"
    ZSH_THEME_GIT_PROMPT_CLEAN="%{$solarized[green]%} ✓"
else
    PROMPT='[%n@%m: %c $(git_prompt_info)] $ '

    ZSH_THEME_GIT_PROMPT_PREFIX="("
    ZSH_THEME_GIT_PROMPT_SUFFIX=")"
    ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
    ZSH_THEME_GIT_PROMPT_CLEAN=" ✓"
fi
