alias ll="ls -a"
alias hyprconf="vim /home/klaas/nixconfig/home/1440dots/hypr/hyprland.lua"
alias nixrebuild="cd ~/nixconfig ; git add . ; sudo nixos-rebuild switch --flake ~/nixconfig#server --impure ; cd -"
alias nixconf="vim ~/nixconfig/modules/"
PS1='\[\e[95m\]\w \[\e[0m\] '
fastfetch
