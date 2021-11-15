emulate sh
. ~/.profile
emulate zsh
[ -s "/Users/dennis.kanygin/.scm_breeze/scm_breeze.sh" ] && source "/Users/dennis.kanygin/.scm_breeze/scm_breeze.sh"

eval "$(direnv hook zsh)"
alias jira="open -a FireFox 'https://chargepoint.atlassian.net/jira/software/c/projects/ES/boards/174/backlog?issueLimit=100'"
alias spr="open -a firefox 'https://chargepoint.atlassian.net/sr/jira.issueviews:searchrequest-csv-current-fields/temp/SearchRequest.csv?jqlQuery=project+%3D+ES+AND+sprint+%3D+1321+AND+%28status+%3D+Open+OR+status+%3D+%22In+Progress%22+OR+status+%3D+Blocked+OR+status+%3D+Reopened%29+AND+type+%21%3D+Sub-task+ORDER+BY+Rank+ASC&atl_token=BM6Z-KOPZ-LB6D-7OK1_c1fea4f28c3b46116597a734bd3f47e5e2e1fb5f_lin&tempMax=1000';open -a firefox 'https://docs.google.com/spreadsheets/d/1DFnF18rKvHCj2ErhGBELHGlgeKUb79d9qx97WVmgW0A/edit?usp=sharing'"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

[ -s "/Users/dennis.kanygin/.scm_breeze/scm_breeze.sh" ] && source "/Users/dennis.kanygin/.scm_breeze/scm_breeze.sh"

# bookmarks
alias retro="open -a firefox https://chargepoint.atlassian.net/wiki/spaces/EN/pages/2707392043/Team+Retrospective"
alias kibana="open -a firefox https://cp-qa-ore-es-kibana.fleet.ev-chargepoint.com/_plugin/kibana/app/kibana"
alias jira="open -a FireFox 'https://chargepoint.atlassian.net/jira/software/c/projects/ES/boards/174/backlog?issueLimit=100'"

