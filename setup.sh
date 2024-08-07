CURRENT_DIR=$(pwd)
cd ~/.hygo
HYGOSHELL_UPDATE=$(git pull)
if [[ "$HYGOSHELL_UPDATE" == *"Already"* ]]; then
    echo -e "\n\e[38;5;214mHygoShell is up to date.\e[0m\n"
else
    echo -e "\n\e[38;5;214mHygoShell updating.\e[0m\n"
fi
cd $CURRENT_DIR

# Function to get the current Git branch
git_branch_str() {
    git_branch=$(git branch 2>/dev/null | grep '*' | sed 's/* //')
    if [ -n "$git_branch" ]; then
        echo -e "($git_branch)"
    fi
}

# Set up zsh prompt
if [ -n "$ZSH_VERSION" ]; then
    PROMPT="%F{214}%n@%m %F{white}%~"$'\n'"%f$ "
fi

# Set up bash prompt
if [ -n "$BASH_VERSION" ]; then
    PS1="\[\e[38;5;214m\]\u@\h \w $(git_branch_str)\n\$\[\e[0m\] "
fi