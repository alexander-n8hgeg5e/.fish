# Start X at login
if status is-login > /dev/null
#        echo debug login
        if test (hostname) != dusteater
#	           echo debug hostname is not dusteater
        	   if not set -q SSH_CONNECTION
#	              echo debug not set SSH_CONNECTION
		      if test -e /etc/xserver_magicfilename
#		              echo debug /etc/xserver_magicfilename exists
			      echo 'debug set magicfilename (head -n1 /etc/xserver_magicfilename) ...'
                              set magicfilename (head -n1 /etc/xserver_magicfilename)
                              if test ! -e $magicfilename
                                       if test -z "$DISPLAY"
                                           touch $magicfilename
                                           exec rind xinit
					   exit
		                       end
                              end
                      end
		   end
        end
end

if test (hostname) = dusteater
    #
    #       #########
    #    on dusteater
    #       #########
    #
    
    set -x PULSE_SERVER 127.0.0.1:4713

    if test -z  "$DISPLAY"
        set DISPLAY esadc:0
        export DISPLAY
    end
end

if set -q TMUX
        set -x TERM_ $TERM
	set -x TERM  screen-16color
end
if set -q NVIM_LISTEN_ADDRESS ;and not set -q TMUX 
        set -x TERM_ $TERM
	set -x TERM  st-16color
end

alias a 'cd ..'
alias ex 'exit'

set -x MANPAGER w3m
set -x cf "/home/esadman/.config/fish/config.fish"
set -x w "/var/lib/portage/world"
set -x pu "/etc/portage/package.use"
set -x mc "/etc/portage/make.conf"
set -x pak "/etc/portage/package.accept_keywords"
set -x cc "~/.config"
set -x f "~/.config/fish/config.fish"
set -x ep "/etc/portage"
set -x epp "/etc/portage/patches"
set -x EDITOR e

set -x fish_color_autosuggestion                  magenta
set -x fish_color_cancel                          \x2dr
set -x fish_color_command                         white
set -x fish_color_comment                         blue
set -x fish_color_cwd                             green
set -x fish_color_cwd_root                        red
set -x fish_color_end                             brblue
set -x fish_color_error                           brred
set -x fish_color_escape                          bryellow\x1e\x2d\x2dbold
set -x fish_color_history_current                 \x2d\x2dbold
set -x fish_color_host                            white
set -x fish_color_match                           \x2d\x2dbackground\x3dbrblue
set -x fish_color_normal                          white
set -x fish_color_operator                        bryellow
set -x fish_color_param                           yellow
set -x fish_color_quote                           bryellow
set -x fish_color_redirection                     brblue
set -x fish_color_search_match                    bryellow\x1e\x2d\x2dbackground\x3dbrblack
set -x fish_color_selection                       white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
set -x fish_color_status                          red
set -x fish_color_user                            brgreen
set -x fish_color_valid_path                      \x2d\x2dunderline
if test (hostname) = esadlinux
         set -x fish_greeting                              "Welcome on "(hostname)" ! esadlinux is "(set var 0;for i in (cat /sys/class/hwmon/hwmon0/temp*_input);set var (math $var + (math $i / 1000));end;set var (math $var / 4);if test $var -lt 45;echo feeling cold. esadlinux suggests to burn some cpu.;end ;if test $var -gt 80 ;echo feeling hot. esadlinux suggests to go on.;end ;if test $var -gt 90 ;echo burning like hell. esadlinux suggests to install a bigger cpu cooler.;end)
else    
	 set -x fish_greeting "Welcome on "(hostname)" !"
end

set -x fish_key_bindings                          fish_vi_key_bindings
set -x fish_pager_color_completion                \x1d
set -x fish_pager_color_description               yellow\x1eyellow
set -x fish_pager_color_prefix                    white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set -x fish_pager_color_progress                  brwhite\x1e\x2d\x2dbackground\x3dcyan
