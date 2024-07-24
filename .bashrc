echo -e "\e[38;5;214mHygoShell is active.\e[0m\n"

# HELP basic
alias sz="source ~/.zshrc"
alias sb="source ~/.bashrc"
alias c="clear"
alias ch="code ~/.hygo"
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
    git push
}