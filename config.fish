umask 027
set -x hostnamE (hostname)

#if string match -rq 'something*|some-thing-other-*' $hostnamE
#    umask 0077
#	set local_vars (cat "$HOME"/.local_vars_pc)
#	for i in $local_vars
#	    set a (string split --max 1 --no-empty " " "$i")
#		eval set -x $a[1] $a[2]
#	end
#end

set -x COMPLETION_HELPER_FUNCTIONS_DIR ~/.config/fish/completions
# vim: set filetype=sh :
