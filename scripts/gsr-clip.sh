#!/usr/bin/env bash
# Nutzung: gsr-clip.sh 30   -> letzte 30 Sekunden (keyframe-aligned)
#          gsr-clip.sh full -> gesamter Buffer (5 min)
LENGTH="${1:-30}"
LOG="$HOME/.cache/gsr-replay.log"
LINES_BEFORE=$(wc -l < "$LOG")

pkill -SIGUSR1 -f "bin/.wrapped/gpu-screen-recorder"

for i in $(seq 1 50); do
    NEWFILE=$(tail -n +$((LINES_BEFORE+1)) "$LOG" | grep -m1 '\.mp4$')
    [ -n "$NEWFILE" ] && break
    sleep 0.2
done

[ -z "$NEWFILE" ] && { notify-send "GSR" "Konnte Clip nicht finden"; exit 1; }

if [ "$LENGTH" = "full" ]; then
    OUT="${NEWFILE%.mp4}_full.mp4"
    mv "$NEWFILE" "$OUT"
    notify-send "Clip gespeichert" "$(basename "$OUT") (voller Buffer)"
    exit 0
fi

OUT="${NEWFILE%.mp4}_${LENGTH}s.mp4"

# Gesamtdauer der Rohdatei ermitteln
TOTAL=$(ffprobe -v error -show_entries format=duration \
  -of default=noprint_wrappers=1:nokey=1 "$NEWFILE")

# Startpunkt berechnen (mindestens 0)
START=$(awk -v total="$TOTAL" -v len="$LENGTH" 'BEGIN {
  s = total - len;
  print (s < 0) ? 0 : s
}')

# Keyframe-genaues Schneiden: -ss VOR -i → Input-Seeking (keyframe-aligned)
ffmpeg -y -ss "$START" -i "$NEWFILE" \
  -c copy -avoid_negative_ts make_zero \
  "$OUT" 2>"$HOME/.cache/gsr-clip-ffmpeg.log"

if [ $? -ne 0 ] || [ ! -s "$OUT" ]; then
    # Fallback: Re-Encode falls stream copy fehlschlägt
    ffmpeg -y -ss "$START" -i "$NEWFILE" \
      -c:v libx264 -preset fast -crf 18 \
      -c:a aac \
      "$OUT" 2>>"$HOME/.cache/gsr-clip-ffmpeg.log"
fi

# Rohdatei aufräumen
[ -s "$OUT" ] && rm -f "$NEWFILE"

notify-send "Clip gespeichert" "$(basename "$OUT") (${LENGTH}s, keyframe-aligned)"
