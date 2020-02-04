#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.

source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_files.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_recent_commits.fish

complete    -c gic -l amend -d 'Amend the log message of the last commit'
complete -f -c gic -a '(__fish_git_files modified)'
complete -f -c gic -l fixup -d 'Fixup commit to be used with rebase --autosquash'
complete -f -c gic -n '__fish_contains_opt fixup' -k -a '(__fish_git_recent_commits)'
