function gad
    gl
    commandline -r 'set D "'(git log -n1 --format=%ai)'";'\n'set -x GIT_COMMITTER_DATE "$D";'\n'set -x GIT_AUTHOR_DATE    "$D";'\n'gic --amend --date $D;sleep 2;'\n'set -u GIT_COMMITTER_DATE;'\n'set -u GIT_AUTHOR_DATE;'\n'git rebase --continue'
    commandline -C 20
end
