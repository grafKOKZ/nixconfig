alias ll="ls -a"
alias homeconf="vim /home/klaas/nixconfig/home/fhd/"
alias nixrebuild="cd ~/nixconfig && git add . && sudo nixos-rebuild switch --flake ~/nixconfig#desktop --impure && cd -"
alias nixconf="vim ~/nixconfig/configs/modules/"
PS1='\[\e[95m\]\w #\[\e[0m\] '
fastfetch
