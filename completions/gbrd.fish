#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.


source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_branches.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_local_branches.fish

complete -f -c gbrd -a '(__fish_git_branches)'









