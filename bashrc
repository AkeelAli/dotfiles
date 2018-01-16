# ALL ARE AKEALI SETTINGS 

# make vim default editor
set EDITOR=vim


#if bxb-ads-047, set TMPDIR for cscope (as /var/tmp is too small)
#if [ $HOST == bxb-ads-047 ]; then
#    TMPDIR=/nobackup/akeali/TMPDIR; export TMPDIR
#    echo TMPDIR set to $TMPDIR 
#fi

#customize prompt
PS1="\A \h> "

alias lsa='ls -l -a'

alias vi='vim'

alias ls='ls --color=auto'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias mkcscope='util/bin/ios-ng-mkcscope -a'
alias file_bug='/ws/akeali-ott/satellite/satellite_it_bug.pl'
alias la='ls -a'
alias diff='vimdiff'

#set PATH
export PATH=/pkg/bin:/pkg/sbin:/router/bin:/usr/atria/bin:/usr/cisco/bin:/usr/cisco/etc:~/bin:/bin:/usr/X11R6/bin:/usr/sbin:/sbin:/usr/bin:/usr/cisco/bin:/bin:/sbin:.
export PATH=$PATH:/users/akeali/bin:/users/akeali/lib
export PATH=$PATH:/auto/ng_ott_auto/jenkins/jenkins_scripts/custom

#functions
cdto () { cd "${PWD%/$1/*}/$1"; }


cdr () { 
    username=`whoami`; 
    cd `pwd | sed 's/\('${username}'\/[^\/]*\/\).*/\1/'`;
}

diffed_files () {
    acme lsc -context ws | grep M | sed 's/ M //g' > diffed_files
    echo "generated diffed_files, run acme revert -file_list diffed_files"
}

#set EDITOR to vim so cscope -d uses the huge version instead of tiny vim with little support
export EDITOR=vim

#From Paul, to determine if you're in an FBE
#am_i_in_fbe() {
#    local my_tty=`tty | sed 's/\/dev\///'`
#    ps -C fbe_shell -o tty= | grep -q $my_tty
#}

#if am_i_in_fbe; then
#    export PS1="FBE:$PS1"
#fi


#MARKS from

#export MARKPATH=$HOME/.marks
#function jump { 
#    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
#}
#function mark { 
#    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
#}
#function unmark { 
#    rm -i "$MARKPATH/$1"
#}
#function marks {
#    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
#}
#
#
#_completemarks() {
#  local curw=${COMP_WORDS[COMP_CWORD]}
#  local wordlist=$(find $MARKPATH -type l -printf "%f\n")
#  COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
#  return 0
#}
#
#complete -F _completemarks jump unmark
