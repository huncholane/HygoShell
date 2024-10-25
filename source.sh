source ~/.hygo/setup.sh
source ~/.hygo/secret.sh

# HELP basic
alias sz="source ~/.zshrc"
alias sb="source ~/.bashrc"
alias c="clear"
alias ch="code ~/.hygo"
alias vh="vim ~/.hygo"
alias chs="code ~/.hygo/secret.sh"
alias rhs="cat ~/.hygo/secret.sh"
alias vhs="vim ~/.hygo/secret.sh"
# HELP basic

# HELP docker
alias dcd="docker compose down --remove-orphans"
alias dcu="dcd && docker compose up --build -d"
alias dcul="dcu && docker compose logs -f"
alias dce="docker compose exec -it"
alias dcl="docker compose logs -f"
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
alias glog="git log --oneline"
alias gp="git push"
alias gc="git checkout"
# HELP git

# Add source ./source.sh if it exists and this is not ~/.hygo/source.sh
if [ -f "$(pwd)/source.sh" ] && [ "$(pwd)" != "$HOME/.hygo" ]; then
    echo -e "\e[32mFound a source.sh in the current directory. Sourcing it.\e[0m"    
    source "$(pwd)/source.sh" 
fi