if [ -e ~/.screen/session-variables ]; then
   alias ssh='source ~/.screen/session-variables; ssh'
   fi 
if [ -e ~/.screen/session-variables ]; then
   alias git='source ~/.screen/session-variables; git'
   fi 
if [ -e ~/scratch.sh ]; then
      alias screen='~/scratch.sh; screen'
   fi
#------------------------------------------------
# Hearsay
#-----------------------------------------------
alias fan='cd ~/projects/HearsayLabs/fanmgmt'
alias debugdev='./run.sh manage.py runserver 0.0.0.0:8080 --settings=settings.gtrice'
alias fix='sudo service uwsgi restart && sudo service nginx restart'
alias shipit='./lgtm create'
alias shell='./run.sh manage.py shell --settings=settings.gtrice --organization=1'
alias dbshell='./run.sh manage.py dbshell --settings=settings.gtrice --cluster=shard3'
alias tail='tail -f /var/log/fm/gtrice.log'
alias celery='./scripts/start_celeryd.sh'

#---------------------------------
# Git
#--------------------------------
alias amend='git commit --amend'
alias co='git checkout '
alias clean='git clean -f'
alias delbranch='git branch -D '
alias fetch='git fetch upstream'
alias gg='git grep '
alias irebase='git rebase --interactive'
alias merged='git branch --merged'
alias pop='git stash pop'
alias push='git push origin'
alias pushf='git push origin --force'
alias rebase='git rebase upstream/master'
alias stash='git stash'

#---------------------------------
# Dir
#--------------------------------
alias basha='vi ~/.bash_aliases'
