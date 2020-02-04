#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.

complete -f -c g -s s -l short -d 'Give the output in the short-format'
complete -f -c g -s b -l branch -d 'Show the branch and tracking info even in short-format'
complete -f -c g -l porcelain -d 'Give the output in a stable, easy-to-parse format'
complete -f -c g -s z -d 'Terminate entries with null character'
complete -f -c g -s u -l untracked-files -x -a 'no normal all' -d 'The untracked files handling mode'
complete -f -c g -l ignore-submodules -x -a 'none untracked dirty all' -d 'Ignore changes to submodules'
