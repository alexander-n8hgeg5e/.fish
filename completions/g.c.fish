#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.

source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_recent_commits.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_files.fish

complete    -c g.c -l amend -d 'Amend the log message of the last commit'
complete -f -c g.c -a '(__fish_git_files modified)'
complete -f -c g.c -l fixup -d 'Fixup commit to be used with rebase --autosquash'
complete -f -c g.c -n '__fish_contains_opt fixup' -k -a '(__fish_git_recent_commits)'
