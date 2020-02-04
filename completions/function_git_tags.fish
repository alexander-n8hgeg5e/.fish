#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.

function __fish_git_tags
    command git tag --sort=-creatordate 2>/dev/null
end
