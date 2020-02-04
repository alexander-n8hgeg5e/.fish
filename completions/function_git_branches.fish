#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.

function __fish_git_branches
    # This is much faster than using `git branch`,
    # and avoids having to deal with localized "detached HEAD" messages.
    command git for-each-ref --format='%(refname)' refs/heads/ refs/remotes/ 2>/dev/null \
        | string replace -r '^refs/heads/(.*)$' '$1\tLocal Branch' \
        | string replace -r '^refs/remotes/(.*)$' '$1\tRemote Branch'
end
