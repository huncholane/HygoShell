CURRENT_DIR=$(pwd)
cd ~/.hygo
HYGOSHELL_UPDATE=$(git pull)
if [[ "$HYGOSHELL_UPDATE" == *"Already"* ]]; then
    echo -e "\n\e[38;5;214mHygoShell is up to date.\e[0m\n"
else
    echo -e "\n\e[38;5;214mHygoShell updating.\e[0m\n"
fi
cd $CURRENT_DIR

if [ -n "$ZSH_VERSION" ]; then
    PROMPT="%F{214}%n@%m %F{white}%~"$'\n'"%f$ "
fi
if [ -n "$BASH_VERSION" ]; then
    PS1="\[\e[38;5;214m\]\u@\h \w\n\$\[\e[0m\] "
fi