alias vim="nvim"
alias ls="eza"
alias cat="bat"
alias mvni="mvn clean install -D \"maven.test.skip=true\""

export BAT_THEME="base16"
export EDITOR="nvim"

set -g fish_greeting

function fish_prompt
    set_color brblack
    echo -n "["(date "+%H:%M")"] "
    set_color blue
    echo -n (whoami)
    if [ $PWD != $HOME ]
        set_color brblack
        echo -n ':'
        set_color yellow
        echo -n (basename $PWD)
    end
    set_color green
    printf '%s ' (__fish_git_prompt)
    set_color red
    echo -n '| '
    set_color normal
end
