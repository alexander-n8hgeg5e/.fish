function fish_prompt --description 'Prompt ausgeben'
	set -l last_status $status

    # User
    set_color brgreen
    echo -n (whoami)
    set_color yellow

    echo -n '@'

    # Host
    set_color brgreen
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
    set colors \
    #"00ff80 brcyan" \
    #"00ffff brcyan" \
    #"0080ff brcyan" \
    #"0000ff brblue" \
    #"8000ff brmagenta" \
    #"ff00ff brmagenta" \
    #"00ff00 brgreen" \
    #"ff0000 brred" \
    #"ff0000 brred" \
    #"00ff00 brgreen" \
    #"ff8000 bryellow"  \
    #"ffff00 bryellow" \
    #"80ff00 bryellow" \
    #"00ff00 brgreen" \

    #for color in $colors
    #        eval set_color $color
    #        echo -n '➤ ' ;end

    #set_color -r brgreen
    #echo -n -- ■
    #echo -n \>
    #set_color -r brgreen
    #echo -n \>
    set_color -r brgreen
    echo -n '>>'
    set_color normal
    set_color brgreen
    echo -n '>'

    set_color normal 
    end

# vim: syntax=fish :
