# Set the prompt
if [ -n "$ZSH_VERSION" ]; then
    echo -e "\n\e[38;5;214mHygoShell is active.\e[0m\n"
    PROMPT="%F{214}%n@%m:%~"$'\n'"%f$ "
fi
if [ -n "$BASH_VERSION" ]; then
    echo "\[\e[38;5;214m\]HygoShell is active.[\e[0m\]\$ "
    PS1="\[\e[38;5;214m\]\u@\h:\w\n\[\e[0m\]\$ "
fi
# Set the prompt

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
}
function gpom() {
    gcom "$*"
    git push
}
alias gp="git push"
alias gc="git checkout"
# HELP git