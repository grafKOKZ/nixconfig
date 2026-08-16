options="⏻  Shutdown\n  Reboot\n⏾  Sleep\n⏏  Logout"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
    "⏻  Shutdown")
        shutdown now
        ;;
    "  Reboot")
        systemctl reboot
        ;;
    "⏾  Sleep")
        systemctl suspend
        ;;
    "⏏  Logout")
        hyprctl dispatch exit
        ;;
esac
