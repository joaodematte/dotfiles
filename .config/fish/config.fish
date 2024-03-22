alias vim=nvim
alias ls=eza
alias cat=bat
alias mvni="mvn clean install -D \"maven.test.skip=true\""

export BAT_THEME="base16"
export EDITOR="nvim"
export ACCESS_TOKEN="gleam"

# opam configuration
source /home/dematte/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

starship init fish | source
