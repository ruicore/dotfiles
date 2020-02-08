PROMPT="%(?:%{$fg_bold[green]%}in :%{$fg_bold[red]%}➜ )"
NEWLINE=$'\n'
PROMPT+=' %{$fg[cyan]%}$PWD%{$reset_color%} $(git_prompt_info)${NEWLINE}➜ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
