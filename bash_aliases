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
alias act='cd ~/projects/hearsay-activities'
alias branchpr='./scripts/checkout_pr.sh'
alias celery='./scripts/start_celeryd.sh'
alias dbshell='./run.sh manage.py dbshell --settings=settings.gtrice --cluster=shard3'
alias debugdev='./run.sh manage.py runserver 0.0.0.0:8080 --settings=settings.gtrice'
alias fan='cd ~/projects/HearsayLabs/fanmgmt'
alias fix='sudo service uwsgi restart && sudo service nginx restart'
alias jas='~/projects/HearsayLabs/fanmgmt/run.sh run_jasmine.py'
alias pubsub='./scripts/start_pubsub_celeryd.sh'
alias qa='./run.sh manage.py test --settings=settings.gtrice'
alias shell='./run.sh manage.py shell --settings=settings.gtrice --organization=1'
alias shipit='lgtm create'
alias sshme='ssh gtrice.dev.hearsaylabs.com'
alias tail='tail -f /var/log/fm/gtrice.log'

#---------------------------------
# Git
#--------------------------------
alias amend='git commit --amend'
alias co='git checkout '
alias clean='git clean -f'
alias delbranch='git branch -D '
alias delmerged='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias fetch='git fetch upstream'
alias gg='git grep '
alias iadd='git add --interactive'
alias irebase='git rebase --interactive'
alias merged='git branch --merged'
alias pop='git stash pop'
alias push='git push origin'
alias pushf='git push origin --force'
alias rebase='git rebase upstream/master'
alias stash='git stash'
alias peepstash='git stash show -p'

#---------------------------------
# Dir
#--------------------------------
alias basha='vi ~/.bash_aliases'
