alias ll="ls -lah"
alias homeconf="vim /home/klaas/nixconfig/home/fhd/"
alias nixrebuild="cd ~/nixconfig && git add . && sudo nixos-rebuild switch --flake ~/nixconfig#desktop --impure && cd -"
alias nixconf="vim ~/nixconfig/configs/modules/"
PS1='\[\e[94m\]\u \[\e[92m\]\w \[\e[97m\]\$\[\e[90m\] '
nitch
