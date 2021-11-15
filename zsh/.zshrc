emulate sh
. ~/.profile
emulate zsh

eval "$(direnv hook zsh)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

[ -s "/Users/dennis.kanygin/.scm_breeze/scm_breeze.sh" ] && source "/Users/dennis.kanygin/.scm_breeze/scm_breeze.sh"

for file in ~/.{aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
