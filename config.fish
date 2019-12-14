umask 027
set -x hostnamE (hostname)

if string match -rq 'izbs*|iamcms-mze-*' $hostnamE
    umask 0077
	set local_vars (cat "$HOME"/.local_vars_pc)
	for i in $local_vars
	    set a (string split --max 1 --no-empty " " "$i")
		eval set -x $a[1] $a[2]
	end
end
