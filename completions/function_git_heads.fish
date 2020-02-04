#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.

function __fish_git_heads
    set -l gitdir (command git rev-parse --git-dir 2>/dev/null)
    or return # No git dir, no need to even test.
    for head in HEAD FETCH_HEAD ORIG_HEAD MERGE_HEAD
        if test -f $gitdir/$head
            echo $head
        end
    end
end
