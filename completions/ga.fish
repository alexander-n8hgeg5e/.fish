#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.

source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_files.fish

complete -c g. -s n -l dry-run -d "Don't actually add the file(s)"
complete -c g. -s v -l verbose -d 'Be verbose'
complete -c g. -s f -l force -d 'Allow adding otherwise ignored files'
complete -c g. -s i -l interactive -d 'Interactive mode'
complete -c g. -s p -l patch -d 'Interactively choose hunks to stage'
complete -c g. -s e -l edit -d 'Manually create a patch'
complete -c g. -s u -l update -d 'Only match tracked files'
complete -c g. -s A -l all -d 'Match files both in working tree and index'
complete -c g. -s N -l intent-to-add -d 'Record only the fact that the path will be added later'
complete -c g. -l refresh -d "Don't add the file(s), but only refresh their stat"
complete -c g. -l ignore-errors -d 'Ignore errors'
complete -c g. -l ignore-missing -d 'Check if any of the given files would be ignored'

#             Renames also show up as untracked + deleted, and to get git to show it as a rename _both_ need to be added.
#             However, we can't do that as it is two tokens, so we don't need renamed here.
complete -c g. -f -a '(__fish_git_files modified untracked deleted unmerged)'
