#!/bin/bash

# Colors
green='\033[0;32m'
red='\033[0;31m'
blue='\033[0;34m'
nc='\033[0m'

# Clear screen and show logo
clear
figlet "MCW" | lolcat
figlet "MUSLIM CYBER WARRIORS" | lolcat
echo -e "${red}=========================================="
echo -e "       HACKED BY HACKER ASAD"
echo -e "   MUSLIM CYBER WARRIORS | MCW LEGION"
echo -e "==========================================${nc}"
sleep 1

# Voice & Vibration
termux-tts-speak "Warning. System Breached. Hacked by Hacker Asad"
termux-vibrate -d 500

# Get Target
echo -n -e "${blue}Enter Target IP or Website: ${nc}"
read target

# Fake Tracing
echo -e "${green}\n[•] Tracing Target: $target...${nc}"
for i in {1..5}; do
  echo -e "${blue}[+] Jumping Node $i..." | lolcat
  sleep 0.5
done
echo -e "${green}[✓] Target traced: $target" | lolcat
echo "Location: Unknown | ISP: MCW DARKNET" | lolcat
sleep 1

# Injecting Payload
echo -e "${red}\n[*] Deploying Payload to $target...${nc}"
for i in {1..5}; do
  echo -e "${red}[•] Injecting MCW CODE LINE $i..." | lolcat
  sleep 0.4
done
echo -e "${green}[✓] Payload Delivered Successfully!${nc}"

# Deface Simulation
echo -e "${blue}[!] Uploading deface page to $target..." | lolcat
echo "<html><body><h1>HACKED BY HACKER ASAD</h1><p>MCW LEGION ACTIVE</p></body></html>" > deface.html
sleep 1
echo "[✓] Deface page saved: deface.html" | lolcat

# Final Message
figlet "MCW ACTIVE" | lolcat
echo -e "${red}Remote Shell: http://dark.mcw/panel/$target${nc}"
termux-tts-speak "Target compromised. MCW is now active."
