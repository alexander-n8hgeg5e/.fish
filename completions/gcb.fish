#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.


source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_files.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_branches.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_heads.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_tags.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_unique_remote_branches.fish

complete -k -f -c gcb -n 'not contains -- -- (commandline -op)' -a '(__fish_git_branches)'
complete -k -f -c gcb -n 'not contains -- -- (commandline -op)' -a '(__fish_git_heads)' -d 'Head'
complete -k -f -c gcb -n 'not contains -- -- (commandline -op)' -a '(__fish_git_tags)' -d 'Tag'
complete -k -f -c gcb -n 'not contains -- -- (commandline -op)' -a '(__fish_git_unique_remote_branches)' -d 'Unique Remote Branch'
complete -k -f -c gcb -a '(__fish_git_files modified deleted)'
complete -f    -c gcb -s t -l track -d 'Track a new branch'
complete -f    -c gcb -l theirs -d 'Keep staged changes'
complete -f    -c gcb -l ours -d 'Keep unmerged changes'
