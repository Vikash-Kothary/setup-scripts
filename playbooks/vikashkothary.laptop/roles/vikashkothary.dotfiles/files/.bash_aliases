# Best practices
alias rm='echo "Use trash instead"'

# dotenv
alias load_env='export $(grep -v "^#" $(PWD)/.env | xargs)'
alias unload_env='unset $(grep -v "^#" $(PWD)/.env | sed -E "s/(.*)=.*/\1/" | xargs)'

# Parity between Linux and MacOS
## Ubuntu
alias open='xdg-open &>/dev/null'