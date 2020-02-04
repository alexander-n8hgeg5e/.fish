#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.


source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_branches.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_local_branches.fish

complete -f -c gb -a '(__fish_git_branches)'
complete -f -c gb -s d -d 'Delete branch' -xa '(__fish_git_local_branches)'
complete -f -c gb -s D -d 'Force deletion of branch' -xa '(__fish_git_local_branches)'
complete -f -c gb -s m -d 'Rename branch'
complete -f -c gb -s M -d 'Force renaming branch'
complete -f -c gb -s a -d 'Lists both local and remote branches'
complete -f -c gb -s t -l track -d 'Track remote branch'
complete -f -c gb -l no-track -d 'Do not track remote branch'
complete -f -c gb -l set-upstream-to -d 'Set remote branch to track'
complete -f -c gb -l merged -d 'List branches that have been merged'
complete -f -c gb -l no-merged -d 'List branches that have not been merged'
