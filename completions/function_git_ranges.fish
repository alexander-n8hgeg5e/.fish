#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_refs.fish

function __fish_git_ranges
    set -l both (commandline -ot | string split "..")
    set -l from $both[1]
    # If we didn't need to split (or there's nothing _to_ split), complete only the first part
    # Note that status here is from `string split` because `set` doesn't alter it
    if test -z "$from" -o $status -gt 0
        __fish_git_refs
        return 0
    end

    set -l to $both[2]
    # Remove description from the from-ref, not the to-ref.
    for from_ref in (__fish_git_refs | string match "$from" | string replace -r \t'.*$' '')
        for to_ref in (__fish_git_refs | string match "*$to*") # if $to is empty, this correctly matches everything
            printf "%s..%s\n" $from_ref $to_ref
        end
    end
end
