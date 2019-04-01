umask 027
 
# Start X at login
if status is-login > /dev/null
        #echo debug login
	mailstart > /dev/null ^ /dev/null&
        if test (hostname) != dusteater
	           #echo debug hostname is not dusteater
        	   if not set -q SSH_CONNECTION
	              #echo debug not set SSH_CONNECTION
		      if test -e /etc/xserver_magicfilename
		              #echo debug /etc/xserver_magicfilename exists
			      #echo 'debug set magicfilename (head -n1 /etc/xserver_magicfilename) ...'
                              set magicfilename (head -n1 /etc/xserver_magicfilename)
			      #echo $magicfilename
                              if test ! -e $magicfilename
		                       #echo debug $magicfilename not exists
                                       if test -z "$DISPLAY"
                                           touch $magicfilename
                                           exec xinit
		                       end
			      else
		                       #echo debug $magicfilename exists
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
    if test -z  "$DISPLAY"
        set -x DISPLAY esadc:0
    end
end
