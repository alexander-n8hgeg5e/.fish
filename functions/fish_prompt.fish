function fish_prompt --description 'Prompt ausgeben'
	set -l last_status $status

    # User
    set_color green
    echo -n (whoami)
    set_color yellow

    echo -n '@'

    # Host
    set_color green
    echo -n (prompt_hostname)
    set_color white

    echo -n ':'

    # PWD
    set_color yellow
    echo -n (prompt_pwd)
    set_color normal

    __fish_git_prompt
    __fish_hg_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
    end
    set_color green
    echo -n '➤'
    set_color yellow
    echo -n '➤'
    set_color red
    echo -n '➤'
    set_color magenta
    echo -n '➤'
    set_color blue
    echo -n '➤'
    set_color cyan
    echo -n '>'
    set_color normal
end
