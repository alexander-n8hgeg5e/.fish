#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.

function __fish__git_append_letters_nosep
    set -l token (commandline -tc)
    printf "%s\n" $token$argv
end
