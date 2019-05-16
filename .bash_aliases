# aliases
alias up='sudo sh -c "apt update -qq && apt upgrade -y && snap refresh && apt autoremove -y && apt clean -y"'
alias quiet='sudo sh -c "smbios-thermal-ctl --set-thermal-mode quiet && tlp bat"'

