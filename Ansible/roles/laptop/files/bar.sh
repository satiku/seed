#!/bin/bash
#
# z3bra - (c) wtfpl 2014
# Fetch infos on your computer, and print them to stdout every second.

clock() {
    date '+%Y-%m-%d %H:%M'
}

battery() {
    BATC=/sys/class/power_supply/BAT0/capacity
    BATS=/sys/class/power_supply/BAT0/status

    echo `cat $BATS` " : " `cat $BATC`


}

volume() {
    amixer get Master | sed -n 'N;s/^.*\[\([0-9]\+%\).*$/\1/p'
}

cpuload() {
    LINE=`ps -eo pcpu |grep -vE '^\s*(0.0|%CPU)' |sed -n '1h;$!H;$g;s/\n/ +/gp'`
    bc <<< $LINE
}

memused() {
    memperc=` free | grep Mem | awk '{print $3/$2 * 100.0}'`
    printf "%0.01f\n" $memperc
}

network() {
    read lo int1 int2 <<< `ip link | sed -n 's/^[0-9]: \(.*\):.*$/\1/p'`
    if iwconfig $int1 >/dev/null 2>&1; then
        wifi=$int1
        eth0=$int2
    else
        wifi=$int2
        eth0=$int1
    fi
    ip link show $eth0 | grep 'state UP' >/dev/null && int=$eth0 ||int=$wifi

    #int=eth0

    ping -c 1 8.8.8.8 >/dev/null 2>&1 && 
        echo "$int UP" || echo "$int DOWN"
}

net() {
  echo "eno1: " `ip link show eno1 | awk '{print $9 }'` 

}



wifi() {
  echo "wlp3s0: " `ip link show wlp3s0 | awk '{print $9 }'` 

}


disk() {
    df -h | grep sda | awk '{print $5}' 

}


groups() {
    cur=`xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}'`
    tot=`xprop -root _NET_NUMBER_OF_DESKTOPS | awk '{print $3}'`

    for w in `seq 0 $((cur - 1))`; do line="${line}="; done
    line="${line}#"
    for w in `seq $((cur + 2)) $tot`; do line="${line}="; done
    echo $line
}


# This loop will fill a buffer with our infos, and output it to stdout.
while :; do
    buf="   "
    buf="${buf} [$(groups)]  "   
    buf="${buf} VOL: $(volume) "

    buf="${buf} %{c} $(clock)"
    
#    buf="${buf} %{r} NET: $(network) | "


    buf="${buf} %{r} $(net) | "
    buf="${buf}  $(wifi) | "
    buf="${buf} CPU: $(cpuload)% | "
    buf="${buf} RAM: $(memused)% | "
    buf="${buf} DISK: $(disk) | "
    buf="${buf} BAT: $(battery)%"

    echo $buf
    # use `nowplaying scroll` to get a scrolling output!
    sleep 1 # The HUD will be updated every second
done

