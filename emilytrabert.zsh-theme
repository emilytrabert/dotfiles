PROMPT='$fg[cyan]%n: $fg[yellow]%~%{$reset_color%} $(git_prompt_info)
%{$fg_bold[green]%}»%{$reset_color%} '
RPROMPT=""

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} $($git_prompt_ahead)"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$reset_color%} %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})%{$reset_color%} %{$fg[green]%}✓"
ZSH_THEME_GIT_PROMPT_AHEAD="Ahead"