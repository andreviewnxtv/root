#!/bin/bash
# substituir dns e email pelos novos
clear
txtyellow=$(tput bold ; tput setaf 3) # YellowBold
echo " "
echo -e "${txtyellow} â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â” "
echo -e "${txtyellow} â”‚               Please Wait...               â”‚ "
echo -e "${txtyellow} â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜ "
echo " "
read -p "DNS para o cerbot: " dns
echo " "
read -p "Email para o cerbot: " email
echo " "
read -p "Porta http do Loadbalance: " port1
echo " "
read -p "Porta https do Loadbalance: " port2
echo " "
sudo apt-get update 2> /dev/null
sleep 1s
sudo apt-get install software-properties-common -y 
sleep 1s
sudo add-apt-repository universe
sleep 1s
echo -ne '\n' | sudo add-apt-repository ppa:certbot/certbot
sleep 1s
sudo apt-get update 2> /dev/null
sleep 1s
yes "" | sudo apt-get install certbot
sleep 1s
sudo certbot certonly --standalone --preferred-challenges http -d $dns -m $email --agree-tos --agree-tos -n
sleep 1s
wget -q "http://xcodes.mine.nu/XCodes/install_isp_block/dhparam.pem" -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/dhparam.pem
sleep 1s
mv /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.old.conf
sleep 1s
wget -q "http://xcodes.mine.nu/XCodes/install_isp_block/nginx_lb_sll.conf" -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf
sleep 1s
sed -i "s/cerbotdns/$dns/g" /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf
sleep 1s
sed -i "s/YYYYY/$port1/g" /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf
sleep 1s
sed -i "s/WWWWW/$port2/g" /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf
sleep 1s
chown -R xtreamcodes:xtreamcodes /home/xtreamcodes/ 2> /dev/null
sleep 1s
chmod -R 777 /home/xtreamcodes/ 2> /dev/null
sleep 1s
sudo /home/xtreamcodes/iptv_xtream_codes/start_services.sh 2> /dev/null
sleep 1s
rm -rf /root/certbot.sh
clear
echo " "
echo -e "${txtyellow} â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â” "
echo -e "${txtyellow} â”‚                 No painel UI               â”‚ "
echo -e "${txtyellow} â”‚                --------------              â”‚ "
echo -e "${txtyellow} â”‚                                            â”‚ "
echo -e "${txtyellow} â”‚     Manager Servers e adicionar o DNS      â”‚ "
echo -e "${txtyellow} â”‚                                            â”‚ "
echo -e "${txtyellow} â”‚     Settings-Streaming e adicionar os      â”‚ "
echo -e "${txtyellow} â”‚     Load Bbalancer                         â”‚ "
echo -e "${txtyellow} â”‚                                            â”‚ "
echo -e "${txtyellow} â”‚        ---------------------------         â”‚ "
echo -e "${txtyellow} â”‚                                            â”‚ "
echo -e "${txtyellow} â”‚            Instalacao Concluida            â”‚ "
echo -e "${txtyellow} â”‚       Script de Instalacao Block ISP       â”‚ "
echo -e "${txtyellow} â”‚                  By Cesar                  â”‚ "
echo -e "${txtyellow} â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜ "