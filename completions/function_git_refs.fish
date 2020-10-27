#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.
#
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_branches.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_tags.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_heads.fish

function __fish_git_refs
    __fish_git_branches
    __fish_git_tags
    __fish_git_heads
end
