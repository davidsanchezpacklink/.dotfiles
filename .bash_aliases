#General Conf
user='joaquin'
current_project="packlink.dev"

#Current project
alias p='cd ~/sites/'$current_project'/httpd/'
alias tags='bash /home/'$user'/tools/generate-tags-packlink-core'

#System path
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='cd'
alias descargas='cd /home/'$user'/Descargas'
alias escritorio='cd /home/'$user'/Escritorio'


#Bash
alias cls='clear'

#log
alias apalog='tail -f /var/log/apache2/error.log'
alias applog='tail -f /home/'$user'/sites/'$current_project'/httpd/app/runtime/application.log'

#Apache
function apache() {
    sudo service apache2 $1
}

#Sincro
function bk() {
	sudo cp $1 /home/$user/Ubuntu\ One/Shared\ With\ Me
}

#Yii
alias mcreate='php /home/'$user'/sites/'$current_project'/httpd/app/yiic migrate create'
alias deploy='php /home/'$user'/sites/'$current_project'/httpd/app/yiic configprojectdeploy create'
alias m='php /home/'$user'/sites/'$current_project'/httpd/app/yiic migrate'
alias down='php /home/'$user'/sites/'$current_project'/httpd/app/yiic migrate down'
alias y='php /home/'$user'/sites/'$current_project'/httpd/app/yiic'


#Vagueria
alias edit='sudo vim /home/'$user'/.bash_aliases'
function run () {
	source /home/$user/.bash_aliases
}

function vim(){
    stty stop '' -ixoff;
    vim $1
}

function w () {
	cd /home/$user/sites/$current_project/httpd/
	stty stop '' -ixoff; 
	vim $1
}
alias bundle='cd /home/'$user'/.vim/bundle/'
alias tools='cd /home/'$user'/tools'

#git primary commands
alias ga='git add'
alias gaa='git add --all .'
alias push='git push'
alias pusho='git push origin'
alias gl='git log'
alias s='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias cm='git commit -am'
alias branch='git branch'
alias checkout='git checkout'
alias checkuoutb='git checkout -b'
alias remote='git remote'
alias graa='git remote add'
alias grr='git remote rm'
alias pull='git pull'
alias pullo='git pull origin'
alias gcl='git clone'
alias gta='git tag'
alias gpt='git push tags'
alias gr='git remote'
alias gcb='git checkout -b'
alias gpo='git push origin '
alias gme='git merge'
alias gt='git branch --track'
alias fetch='git fetch'
alias gri='git rebase -i'
alias gbd='git branch -D'
alias stash='git stash'
alias apply='git stash apply'

#Find 
alias fd="locate -i " 

function findg() {
	find /home/$user/sites/$current_project/httpd/ -iname "*$1*"
}
function findc() {
	grep -lir "*$1*" "/home/$user/sites/$current_project/httpd/"
}
#NetBeans
#alias open="/usr/local/netbeans-7.4/bin/netbea/usr/local/netbeans-7.4/bin/netbeans --open"ns --open"

#Misc
alias untar='tar -zxvf'

