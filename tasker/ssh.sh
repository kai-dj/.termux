#!/data/data/com.termux/files/usr/bin/sh
#script to trigger sshd and wake-lock
#termux-tts-speak "turning ssh on" &
termux-wake-lock
sshd
