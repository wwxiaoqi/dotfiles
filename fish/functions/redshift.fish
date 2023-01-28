function redshift
    if not pgrep -f redshift > /dev/null
	command redshift &
    else
	command killall redshift
    end
end