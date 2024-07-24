source ~/.hygo/setup.sh
source ~/.hygo/secret.sh

# HELP basic
alias sz="source ~/.zshrc"
alias sb="source ~/.bashrc"
alias c="clear"
alias ch="code ~/.hygo"
alias vh="vim ~/.hygo"
alias chs="code ~/.hygo/secret.sh"
# HELP basic

# HELP docker
alias dcd="docker compose down --remove-orphans"
alias dcu="dcd && docker compose up -d"
alias dcul="dcu && docker compose logs -f"
alias dce="docker compose exec -it"
# HELP docker

# HELP git
function gcom() {
    git add .
    git commit -m "$*"
}
function gpom() {
    gcom "$*"
    git push
}
alias gp="git push"
alias gc="git checkout"
# HELP git