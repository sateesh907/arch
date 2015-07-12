#scratch# Oh-My-Zsh
ZSH=~/.oh-my-zsh
ZSH_THEME="msjche"    #kardan agnoster af-magic bira clean candy gentoo terminalparty
 
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
 
# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"
 
# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"
 
# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13
 
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
 
# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"
 
# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"
 
# Default Programs
#export NMON=cmknt
export EDITOR="vim"
export PAGER="less"
export BROWSER="dwb"
export MOVPLAY="vlc"
export PICVIEW="feh"
export SNDPLAY="mplayer"
export TERMINAL="uxterm"
 
# File Extensions
for ext in html org php com net no;    do alias -s $ext=$BROWSER; done
for ext in txt tex py PKGBUID;        do alias -s $ext=$EDITOR; done
for ext in png jpg gif;            do alias -s $ext=$PICVIEW; done
for ext in mpg wmv avi mkv;        do alias -s $ext=$MOVPLAY; done
for ext in wav mp3 ogg;            do alias -s $ext=$SNDPLAY; done
 
########################################################
######################## ALIASES #######################
########################################################
 
## System
alias shutdown='sudo shutdown -P now'
alias Stat='uname -a;systemd-analyze time;wc -l /lib/modules/$(uname -r)/modules.order;lsinitcpio -a /boot/initramfs-linux.img'
alias laptop-mode='grep -r '^\(CONTROL\|ENABLE\)_' /etc/laptop-mode/conf.d'
alias keys='xev'
alias bub='say en beau is a bunkace'
alias unblock-wireless='rfkill unblock all && ifconfig set wlp3s0 up'
 
## DEs
alias Gnome='sudo /home/msjche/Scripts/gnome.sh'
alias Awesome='sudo /home/msjche/Scripts/awesome.sh'
 
## Flash iso to usb drive
#dd bs=4M if=/path/to/archlinux.iso of=/dev/sdb && sync
 
## Work
alias Maildownload='cp -r ~/Dropbox/.thunderbird ~'
alias Mailupload='cp -r ~/.thunderbird ~/Dropbox/'
 
## Fun
alias aquarium='asciiquarium'
 
## Bitcoin
alias bc='btc'
 
## Games
alias sudoku='nsudoku'
alias tetris='bastet'
alias mario='mupen64plus --windowed ~/ROMs/N64/SuperMario64.v64'
alias kart='mupen64plus --windowed ~/ROMs/N64/MarioKart64.v64'
alias zelda='mupen64plus --windowed ~/ROMs/N64/Zelda64.v64'
alias zeldamajora='mupen64plus --windowed ~/ROMs/N64/ZeldaMajorasMask.z64'
alias ps2='pcsx2'
 
## Packages
alias extract='dtrx'
alias gz='tar -xzf'
alias xz='tar -xJf'
alias bz='tar -xvjf'
 
## Pacman
alias UU='packer-color -Syyu'
alias UUA='yaourt -Syyua --devel'
alias P='packer-color'
alias PI='packer-color -S'
alias Y='yaourt'
alias pac='sudo pacman -S'
alias pac-r='sudo pacman -R'
alias Log='tail -f /var/log/pacman.log'
 
## Awesome
alias eA='cd ~/.config/awesome && vim rc.lua'
alias cdA='cd ~/.config/awesome'
alias eTH='cd ~/.config/awesome/themes/holo && vim theme.lua'
alias eTP='cd ~/.config/awesome/themes/powerarrow-darker && vim theme.lua'
alias BG='~/Scripts/background.sh'
 
## Theming
alias HO='~/Scripts/Theming/holo.sh'
alias PAD='~/Scripts/Theming/powerarrow-darker.sh'
alias PAF='~/Scripts/Theming/powerarrowf.sh'
 
## Tmux
alias eT='vim ~/.tmux.conf'
 
## Geeknote
alias geek-new='~/Scripts/geeknote/geeknote-new-note.sh'
 
## Directories
alias space='ncdu'
alias space-color='cdu'
alias ll='ls -l'
alias la='ls -ltra'
alias l='ls'
alias C='clear'
alias se='sudo vim'
alias e='vim'
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias .....='cd .....'
alias k='exit'
alias te='trash-empty'
alias tl='trash-list'
alias del='trash-put'
alias tr='trash-rm'
alias lsTrash='ls ~/.local/share/Trash/files/'
alias cdTrash='cd ~/.local/share/Trash/files/'
alias lD='ls ~/Downloads'
alias D='cd ~/Downloads'
 
## YouTube
alias yt='cd ~/Downloads/YouTube'
alias cleanYT='rm ~/Downloads/YouTube/*.*'
alias DL='cd ~/Downloads/YouTube && youtube-dl -ic'
 
## X Resources Stuff
alias eX='vim ~/.Xresources'
alias XTR='xrdb -merge ~/.Xresources'
 
## Zsh Stuff
alias eZ='vim ~/.zshrc'
alias eZG='leafpad ~/.zshrc'
alias eOMZ='vim ~/.oh-my-zsh/themes/msjche.zsh-theme'
alias Z='source ~/.zshrc'
 
## Vim Stuff
alias eV='vim ~/.vimrc'
alias e='vim'
 
## Rip CDs
alias CDinfo='cdparanoia -vsQ'
alias rip='cdparanoia -B'
alias mp3='for t in track{01-14}*.wav; do lame -b 320 $t; done'
 
## Scripts
alias colordump='~/Scripts/colordump.sh'
alias activate='chmod 755'
alias top100='/home/msjche/Scripts/top100.sh'
alias time_international='/home/msjche/Scripts/time_international.sh'
alias natgeo='/home/msjche/Scripts/natgeo.sh'
alias ballz='python /home/msjche/Scripts/Games/Ballz.py'
alias tpbs='clear && figlet -c TPB Search && ~/Scripts/tpb.sh'
alias convertMTS='~/Scripts/convertMTS.sh'
alias convertOGV='mencoder out.ogv -ovc lavc -oac mp3lame -o screencast.avi'
 
## Transmission
alias IP-update='~/Scripts/blocklist.sh'
alias tsm-check='dwb http://localhost:9091/transmission/web'
alias t='transmission-daemon && transmission-remote-cli'
alias kT='killall transmission-daemon'
 
## News and Music
alias MP='ncmpcpp'
alias news='newsbeuter'
alias nix='cortex linux'
alias pods='podbeuter'
alias twit='turses'
alias Pods='cd ~/Podcasts && ranger'
alias music='sh ~/Scripts/music.sh & '
 
## Multimedia
alias irc='weechat-curses'
alias M='mplayer -vo x11 -fs -zoom'
alias Vids='cd ~/Downloads/.blackbox && ranger'
 
## Google Calenar
alias gcal-week='gcalcli --width 12 calw'
alias gcal='gcalcli --width 12 calm'
alias gcal-add='gcalcli quick'
alias gcal-agenda='gcalcli agenda'
 
## Peer Guardian
alias pgl-update='pglcmd update'
alias pgl-start='pglcmd restart'
alias pgl-status='pglcmd status'
alias pgl-dump='pglcmd stats'
alias pgl-test='pglcmd test'
alias pgl-stop='pglcmd stop'
 
## w3m
alias web='cd ~/Podcasts && w3m -cookie www.google.com'
 
## Check Screencast
alias FF-check-raw='mplayer ~/Screencasts/screencast.avi'
alias FF-check-final='mplayer ~/Screencasts/screencast.mp4'
 
## Net
alias WW='wicd-curses'
alias hogs='sudo nethogs wlp3s0'
alias net-driftnet='echo "see pics from other computers on network" && sudo driftnet -i wlp3s0'
alias net-ettercap='echo "set up interface to capture network data" && sudo ettercap -TQM arp -i wlp3s0 //'
alias net-urlsnarf='echo "see which websites others on network are visiting" && sudo urlsnarf -i wlp3s0 |cut -d\" -f4'
alias net-scan='sudo arp-scan -l -I wlp3s0'
alias net-stat='netstat -t -v -c -ee'
alias net-traf='sudo iptraf-ng'
alias net-bmon='bmon'
alias net-dump='sudo tcpdump -i wlp3s0'
alias net-wifi='wavemon'
alias net-nmon='nmon'
alias net-speedtest='speedtest-cli'
alias iftop='sudo iftop -p -n'
alias slurm='slurm -i wlp3s0'
 
## Power
alias bat='acpi'
alias bat-all='acpi -V'
alias power='powertop'
 
## Misc
alias biguns='~/Scripts/biguns.sh'
alias flux='xflux -z 94596'
alias X='xscreensaver &'
alias kX='pkill xscreensaver'
alias kF='pkill xflux'
alias pic='tiv'
alias clock='tty-clock -c -C 4'
alias clock-graph='clockywock'
alias date-time='watch -n 1 -t date'
alias stopwatch='echo "cntl-z to end" & time cat'
alias starwars='telnet towel.blinkenlights.nl'
alias info='inxi -F'
alias cap='cd ~/Screencasts/screenshots && scrot -d 4'
alias rip='abcde'
alias vidterm='mplayer -vo caca'
alias graph='gnuplot'
 
## Sparklines - CLI visualizations
alias spark-earthquake='curl http://earthquake.usgs.gov/earthquakes/catalogs/eqs1day-M1.txt --silent | sed '1d' | cut -d, -f9 | sparklines'
alias spark-wifi='~/Scripts/wifi.sh'
 
###########################################################
########################### ZSH ###########################
###########################################################
 
# enable vim mode on commmand line
bindkey -v
 
# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1
 
# show vim status
# http://zshwiki.org/home/examples/zlewidgets
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
 
# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
bindkey -a '^R' redo
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char
 
# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^s' history-incremental-search-backward
bindkey -M vicmd '^s' history-incremental-search-backward
 
###########################################################
######################## FUNCTIONS ########################
###########################################################
 
# Best of YouTube
bestofyoutube() { cd ~/Downloads/YouTube && ~/Scripts/bestofyoutube.sh  }
 
 
# Simple python HTTP server
server() { python3 -m http.server ;}
 
# Hacker top
hacker-top() { python ~/Scripts/hacker-top/hacker_top.py  ;}
 
# Reddit top
reddit-top() { python ~/git/reddit-top/reddit_top ;}
 
# Transmission
T() { ~/Scripts/blocklist.sh && transmission-daemon && sleep 3 && transmission-remote-cli ;}
 
# Pirate Bay search
tpb() { clear && figlet -c Pirate Bay && ~/Scripts/tpb.sh ;}
 
# Torrentz.eu search
torrentzeu() { clear && figlet -c Torrentz EU && ~/Scripts/torrentzeu.sh ;}
 
# YouTube Viewer
yt-viewer() { clear && figlet -c YouTube Viewer && youtube-viewer ;}
 
# No video / music only
 
yt-listen() { clear && figlet -c YouTube Listen && youtube-viewer -n $@ ;}
 
# Pianobar - ncurses Pandora Radio client
pandora-cli() { clear && figlet -c Pandora CLI && pianobar ;}
 
# PMS- ncurses Spotify client
spotify-cli() { clear && cd ~/Music && figlet -c Spotify CLI && python3 ~/Scripts/pms/pms.py ;}
 
# Grooveshark CLI
groove-dl-cli() { cd grooveshark && clear && figlet -c Grooveshark && groove-dl ;}
 
## Vim help page
:h()  { vim +":h $1" +'wincmd o' +'nnoremap q :q!<CR>' ;}
 
## Command-line calculator
calc() { python -ic "from __future__ import division; from math import *; from random import *" ;}
 
## Commandline Fu
cmdfu() { curl "http://www.commandlinefu.com/commands/matching/$(echo "$@" \
        | sed 's/ /-/g')/$(echo -n $@ | base64)/plaintext" ;}
 
##Check if websites are down
down4me() { curl -s "http://www.downforeveryoneorjustme.com/$1" | sed '/just you/!d;s/<[^>]*>//g';}
 
###########################################################
######################## WIRELESS #########################
###########################################################
 
# Check if mon0 is up: ifconfig
# airmon-ng
 
#====================================================================================
 
#airodump-ng --bssid "BSSIDTargetNetwork" -w my_wpa -c "ChannelTarget" mon0
AD() { cd /home/msjche/Wireless/active && airodump-ng wlp3s0 ;}
 
# Read:
#BSSID:                 08:86:3B:DF:05:06
#ESSID:                 Smith network1_xt
#Channel:               9
#Interface:             mon0
 
#====================================================================================
 
#airodump-ng --bssid "BSSIDTargetNetwork" -w my_wpa -c "ChannelTarget" mon0
ADB() { cd /home/msjche/Wireless/active && rm my_wpa* && airodump-ng --bssid "$1" -w my_wpa -c "$2" wlp3s0 ;}
 
# Read:
#Their MAC Address: 2C:B0:5D:CB:6F:3F
#Their Station:         38:AA:3C:5F:C9:1D
 
#====================================================================================
 
# Get salted hash
 
#aireplay-ng -0 -o 15 channel -a "BSSIDTargetNetwork" -c "TheirStationMAC" mon0
AR() { cd /home/msjche/Wireless/active && aireplay-ng -0 15 -a "$1" -c "$2" wlp3s0 ;}
 
#====================================================================================
# now crack
# IMPORTANT - Must run AR() while running this!!
#aircrack-ng -e "ESSIDinQuotes" -w "PathToWordList" "PathToX.capFromAirodump"
AC() { md /home/msjche/Wireless/active && aircrack-ng -e "$1" -w /home/msjche/Wireless/WordListCollection/oCustom-WPA.txt /home/msjche/Wireless/active/my_wpa-01.cap ;}
 
 
###########################################################
###################### TRANSMISSION #######################
###########################################################
 
tsm-clearcompleted() {
        transmission-remote -l | grep 100% | grep Done | \
        awk '{print $1}' | xargs -n 1 -I % transmission-remote -t % -r ;}
tsm() { transmission-remote --list ;}
tsm-start() { transmission-daemon ;}
tsm-stop() { pkill tramsmission-daemon ;}
tsm-altspeedenable() { transmission-remote --alt-speed ;}
tsm-altspeeddisable() { transmission-remote --no-alt-speed ;}
tsm-add() { transmission-remote --add "$1" ;}
tsm-askmorepeers() { transmission-remote -t"$1" --reannounce ;}
tsm-pause() { transmission-remote -t"$1" --stop ;}
tsm-start-torrent() { transmission-remote -t"$1" --start ;}
tsm-purge() { transmission-remote -t"$1" --remove-and-delete ;} # will delete data also
tsm-remove() { transmission-remote -t"$1" --remove ;} # does not delete data
tsm-info() { transmission-remote -t"$1" --info ;}
tsm-speed() { while true;do clear; transmission-remote -t"$1" -i | grep Speed;sleep 1;done ;}
 
###########################################################
######################### FFMPEG ##########################
###########################################################
 
ffx_MONO="1"            # mono
ffx_DUAL="2"            # dual channel
ffx_HW="hw:1,0"         # alsa; run 'cat /proc/asound/pcm' to change to the correct numbers
ffx_PULSE="pulse"       # pulseaudio; might have to install pavucontrol to change volume
ffx_FPS="30"            # frame per seconds
ffx_WIN_FULL="1920x1080"        # record fullscreen
ffx_AUDIO="pcm_s16le"   # audio codec
ffx_VIDEO="libx264"     # video codec
ffx_PRESET="ultrafast"  # preset error? run 'x264 -h' replace with fast,superfast, slow ..etc
ffx_CRF="0"
ffx_THREADS="0"
ffx_SCALE="scale=1920x1080"     # scale resolution, no black bars on sides of video on youtube
ffx_OUTPUT=~/Screencasts/screencast.avi
ffx_OUTPUT_FINAL=~/Screencasts/screencast.mp4
# Note: -vf is optional delete if you want, -y is to overwrite existing file
 
## Concatinate (combine) two or more videos
#ffmpeg -i "concat:input1.avi|input2.avi..." -c copy output.avi
 
FF-full() {
        ffmpeg \
        -f alsa \
        -ac $ffx_MONO \
        -i $ffx_PULSE \
        -f x11grab \
        -r $ffx_FPS \
        -s $ffx_WIN_FULL \
        -s 1920x1080 \
        -i :0.0 \
        -acodec $ffx_AUDIO \
        -vcodec $ffx_VIDEO \
        -preset $ffx_PRESET \
        -crf $ffx_CRF \
        -threads $ffx_THREADS \
        -vf $ffx_SCALE \
        -y $ffx_OUTPUT \
        }
 
# capture single window, use mouse cursor to select window you want to record
FF-window() {
        ffx_INFO=$(xwininfo -frame)
    ffmpeg \
    -f alsa \
    -ac $ffx_MONO \
        -i $ffx_PULSE \
    -f x11grab \
    -r $ffx_FPS \
        -s $(echo $ffx_INFO \
    | grep -oEe 'geometry [0-9]+x[0-9]+'\
        | grep -oEe '[0-9]+x[0-9]+') \
        -i :0.0+$(echo $ffx_INFO | grep \
    -oEe 'Corners:\s+\+[0-9]+\+[0-9]+' \
        | grep -oEe '[0-9]+\+[0-9]+' | sed \
    -e 's/\+/,/' ) \
        -acodec $ffx_AUDIO \
    -vcodec $ffx_VIDEO \
    -preset $ffx_PRESET \
    -crf $ffx_CRF \
    -threads $ffx_THREADS \
        -y $ffx_OUTPUT \
            }
 
FF-convert() {
    ffmpeg \
        -i $1 \
        -ar 22050 \
        -ab 32k \
        -strict -2 \
         $ffx_OUTPUT_FINAL
        }
 
Convert2mp4() {
    ffmpeg \
        -i $1 \
        -ar 22050 \
        -ab 32k \
        -strict -2 \
         output.mpeg
        }
 
 
 
## Check Internal and External IPs ##
my-ip() {
        echo "--------------- Network Information ---------------"
        # newer system like arch
        #ip addr | awk '/global/ {print $1,$2}' | cut -d\/ -f1
        #ip addr | awk '/global/ {print $3,$4}'
        #ip addr | awk '/ether/ {print $1,$2}'
        #ip addr | awk '/scope link/ {print $1,$2}' | cut -d\/ -f1
        # older system like debian
    ifconfig | awk '/inet addr/ {print $1,$2}' | awk -F: '{print $1,$2}'
    ifconfig | awk '/Bcast/ {print $3}' | awk -F: '{print $1,$2}'
    ifconfig | awk '/inet addr/ {print $4}' | awk -F: '{print $1,$2}'
    ifconfig | awk '/HWaddr/ {print $4,$5}'
    ifconfig | awk '/Scope:Link/ {print $1,$3}' | cut -d\/ -f1
    echo Current IP $(curl -s http://checkip.dyndns.org/ | grep -o "[[:digit:].]\+")
    echo "---------------------------------------------------"
}
 
## Google Translate Functions ##
say() {
 
        mplayer -user-agent Mozilla \
        "http://translate.google.com/translate_tts?ie=UTF-8&tl="$1"&q=$(echo "$@" \
        | cut -d ' ' -f2- | sed 's/ /\+/g')" > /dev/null 2>&1 ;}
 
say-translation() {
 
        lang=$1
        trans=$(translate {=$lang} "$(echo "$@" | cut -d ' ' -f2- | sed 's/ /\+/g')" ) 
        echo $trans
        mplayer -user-agent Mozilla \
        "http://translate.google.com/translate_tts?ie=UTF-8&tl=$lang&q=$trans" > /dev/null 2>&1 ;}
 
##############################################################
########################## PODCASTS ##########################
##############################################################
 
nvlc-podcast() { nvlc --no-color -S podcast --podcast-urls "$@" ;}
pods-LinuxActionShow() { nvlc-podcast "http://feeds.feedburner.com/computeractionshowvideo" ;}
pods-Unfiltered() { nvlc-podcast "http://www.jupiterbroadcasting.com/feeds/unfilterHD.xml" ;}
pods-Scibyte() { nvlc-podcast "http://feeds.feedburner.com/scibytelarge " ;}
pods-RonPaul() { nvlc-podcast "https://www.google.com/url?q=http://www.ronpaul2012podcast.com/feed/&sa=U&ei=h8NIUbzfJoXJiQL4uoCoDw&ved=0CDYQFjAI&sig2=N2y3rxIlKxYDRI-Z9U8yRw&usg=AFQjCNGmGih9EAkV2JfSw2Nj64V90Jk5qg" ;}
pods-StefanMolyneux() { nvlc-podcast "http://feeds.feedburner.com/FreedomainRadioVolume6" ;}
pods-JoeRoganExperience() { nvlc-podcast "htthttp://joeroganexp.joerogan.libsynpro.com/irssp://joeroganexp.joerogan.libsynpro.com/irss" ;}
pods-FreedomFeens() { nvlc-podcast "http://www.freedomfeens.com/feed/" ;}
pods-GoldMoneyVideos() { nvlc-podcast "http://feeds.feedburner.com/GoldmoneyRssFeedGoldVideos" ;}
pods-GoldMoneyPodcasts() { nvlc-podcast "http://feeds.feedburner.com/GoldmoneyFoundationPodcasts" ;}
#pod-() { nvlc-podcast "" ;}
 
##############################################################
######################## LIVE STREAMS ########################
##############################################################
 
TV-m() { livestreamer -p mplayer "$1" best ;}
TV-v() { livestreamer -p vlc "$1" best ;}
 
# News
live-news-cnn() { livestreamer -p mplayer http://www.justin.tv/msnbc_live_stream_cnn#/w/5008673600 live ;}
live-news-cnn_international() { livestreamer -p mplayer http://www.justin.tv/rentadrone_cnbc#/w/5011049360/22 live ;}
live-news-cbs() { livestreamer -p mplayer http://www.ustream.tv/cbsnews live ;}
live-news-fox() { livestreamer -p mplayer http://www.justin.tv/newswatch_2#/w/5013818384/5 live ;}
live-news-prisonplanet() { livestreamer -p mplayer http://www.ustream.tv/channel/alex-jones---infowars-com---prisonplanet-tv live ;}
live-news-KRON_San_Francisco() { livestreamer -p mplayer http://www.ustream.tv/kron4news best ;}
live-news-The_FED() { livestreamer -p mplayer http://www.ustream.tv/federalreserve live ;}  
 
# Series
live-series-simpsons() { livestreamer -p mplayer http://www.justin.tv/arconai_244#/w/5013781232/19  live ;}
live-series-southpark() { livestreamer -p mplayer http://www.justin.tv/arconai_229#/w/5622202400/179  best ;}
live-series-survival() { livestreamer -p mplayer http://www.justin.tv/survivor101#/w/5531579536/12 best ;}
live-series-criminal_minds() { livestreamer -p mplayer http://www.justin.tv/lurking_in_the_dark17 live ;}
live-series-mythbusters() { livestreamer -p mplayer  best ;}
live-series-married_with_children() { livestreamer -p mplayer http://www.justin.tv/mwconjtv#/w/4992184096/88 live ;}
live-series-stargate_SG1() { livestreamer -p mplayer http://www.justin.tv/oldngr8#/w/5006964064/9 live ;}
live-series-that_70s_show() { livestreamer -p mplayer http://www.justin.tv/highspothorror128#/w/4994695216/102 live ;}
 
# Science
live-science-the_universe() { livestreamer -p mplayer http://www.justin.tv/the_lost_continent#/w/5005014000/48 live ;}
 
# Movies
 
#live-movies-horror-2000_2013_HQ() { livestreamer -p mplayer http://www.justin.tv/horrorhq0010#/w/5074870864/20 live ;}
live-movies-horror4life() { livestreamer -p mplayer http://www.justin.tv/finn_horrorstfu51 live ;}
#live-movies-horror-2() { livestreamer -p mplayer http://www.justin.tv/jags__movies04#/w/5008275648/4 live ;}
 
live-movies-new_releases-2010_2013() { livestreamer -p mplayer http://www.justin.tv/videoisnothere6 live ;}
#live-movies-new_releases-2012_2013_HQ() { livestreamer -p mplayer http://www.justin.tv/movies_tv68#/w/5056426000/115 live ;}
live-movies-movies_2010_2013() { livestreamer -p mplayer http://www.justin.tv/gewinnen_duh_bringen live ;}
 
live-movies-general() { livestreamer -p mplayer http://www.justin.tv/420nomad554 live ;}
#live-movies-general-movies_n_that() { livestreamer -p mplayer http://www.justin.tv/walterkronic#/w/5013245536/8 live ;}
 
 
 
## Capture video streams
 
sniff-begin() { sudo iptables -t nat -A OUTPUT -p tcp --dport 1935 -m owner \! --uid-owner root -j REDIRECT ;}
sniff-capture-rtmpsrv() { rtmpsrv ;}
sniff-end() { sudo iptables -t nat -D OUTPUT -p tcp --dport 1935 -m owner \! --uid-owner root -j REDIRECT ;}
 
## Rtmpsrv Feeds (may need to add -v before -r)
 
# Jupiter Broadcasting
live-JupiterBroadcasting() { vlc rtsp://videocdn-us.geocdn.scaleengine.net/jblive/live/jblive.stream }
 
 
# Russia Today US
iptv-RT_US() { rtmpdump \
                -r "rtmp://rt.fms-04.visionip.tv/live" \
                -a "live" \
                -f "LNX 11,2,202,270" \
                -W "http://rt.com/s/swf/player5.4.viral.swf" \
                -p "http://rt.com" -y "RT_US_2" \
                | mplayer - ;}
 
# Bloomberg
iptv-Bloomberg() { rtmpdump \
                -v \
                -r rtmp://cp116697.live.edgefcs.net:80/live/BnazlkNDpCIcD-QkfyZCQKlRiiFnVa5I_640_360_440@18679  \
                -W http://player.ooyala.com/cacheable/c78f866930724ffedfe8cf5349712569/player_v2.swf \
                -p http://tvpc.com \
                | mplayer - ;}
 
# MSNBC
iptv-MSNBC() { rtmpdump \
                -v \
                -r "rtmp://a.cdn.msnbclive.eu/edge" \
                -y "msnbc_live" \
                -W "http://msnbclive.eu/getswf.php?name=player.swf" \
                -p "http://www.rentadrone.tv/msnbc-live-rockinroosters/" \
                | mplayer - ;}
 
# Rueters
iptv-Rueters() {  rtmpdump \
                -r "rtmp://media9.lsops.net/reuters/" \
                -a "reuters/" -W "http://reuters.cdn.livestation.com/flash/player/5.7/player.swf" \
                -p "http://reuters.livestation.com/demo" \
                --live \
                -y "reuters_rlsweba_en_veryhigh.sdp" \
                | mplayer -;}
 
##########################################################
########################## MODS ##########################
##########################################################
 
 
 
plugins=(git archlinux vi-mode themes zsh-completions color-command)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
 
clear