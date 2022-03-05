#!/bin/bash

ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"                               #reset color
COL_BLACK=$ESC_SEQ"30;11m"                                  #black color
COL_BLACKB=$ESC_SEQ"30;01m"                                 #black color bold
COL_RED=$ESC_SEQ"31;11m"                                    #red color
COL_REDB=$ESC_SEQ"31;01m"                                   #red color bold
COL_GREEN=$ESC_SEQ"32;11m"                                  #green color
COL_GREENB=$ESC_SEQ"32;01m"                                 #green color bold
COL_YELLOW=$ESC_SEQ"33;11m"                                 #yellow color
COL_YELLOWB=$ESC_SEQ"33;01m"                                #yellow color bold
COL_BLUE=$ESC_SEQ"34;11m"                                   #blue color
COL_BLUEB=$ESC_SEQ"34;01m"                                  #blue color bold
COL_MAGENTA=$ESC_SEQ"35;11m"                                #magenta color
COL_MAGENTAB=$ESC_SEQ"35;01m"                               #magenta color bold
COL_CYAN=$ESC_SEQ"36;11m"                                   #cyan color
COL_CYANB=$ESC_SEQ"36;01m"                                  #cyan color bold
COL_WHITE=$ESC_SEQ"37;11m"                                  #white color
COL_WHITEB=$ESC_SEQ"37;01m"                                 #white color bold
NC='\033[0m'
 
show_menus() {
	clear
	echo ""	
echo -e "$COL_GREEN â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”$COL_RESET"
echo -e "$COL_GREEN â”‚    Instalacao Block ISP by CesarKrespo   â”‚$COL_RESET"
echo -e "$COL_GREEN â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜$COL_RESET"	
echo ""
    echo -e "$COL_GREEN 1. Instalar$COL_RESET"
	echo -e "$COL_GREEN 2. Remover$COL_RESET"
	echo -e "$COL_GREEN 3. Sair$COL_RESET"
	echo ""
}
 
read_options(){
	local choice
	read -p "$(echo -e $COL_YELLOW "Digite o nÃºmero consoante a sua escolha [ 1 - 3 ]:"$RESET)" choice
	case $choice in	
	    1) install="http://xcodes.mine.nu/XCodes/install_isp_block/lb.sh"
echo ""
wget -q ${install} -O /tmp/1.sh || echo -e "$COL_RED Erro: Nao foi possivel transferir o ficheiro...$COL_RESET"
chmod 755 /tmp/1.sh > /dev/null 2>&1
/tmp/./1.sh
rm /tmp/1.sh 
echo -e "$COL_GREEN â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”$COL_RESET"
echo -e "$COL_GREEN â”‚                   Exit                   â”‚$COL_RESET"
echo -e "$COL_GREEN â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜$COL_RESET"
exit 0
                              ;;	

        2) sudo apt-get remove certbot -y 2> /dev/null
		   rm -rf /etc/letsencrypt 2> /dev/null
		   cd /home/xtreamcodes/iptv_xtream_codes/nginx/conf
		   rm -rf dhparam.pem 2> /dev/null
		   mv nginx.old.conf nginx.conf 2> /dev/null
		   chmod -R 777 cd /home/xtreamcodes/iptv_xtream_codes/nginx/conf 2> /dev/null
		   cd
		   /home/xtreamcodes/iptv_xtream_codes/start_services.sh 2> /dev/null
		   rm /tmp/1.sh 2> /dev/null
		   echo ""
           echo ""
		   echo -e "$COL_RED â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”$COL_RESET"
           echo -e "$COL_RED â”‚             RemocÃ£o Concluida            â”‚$COL_RESET"
           echo -e "$COL_RED â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜$COL_RESET"	
           echo ""
           echo ""
		   exit 0
		                      ;;							  

		3) cd /tmp
		   rm 1.sh
		   echo ""
           echo ""
		   echo -e "$COL_RED â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”$COL_RESET"
           echo -e "$COL_RED â”‚            OperacÃ£o cancelada            â”‚$COL_RESET"
           echo -e "$COL_RED â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜$COL_RESET"	
           echo ""
           echo ""
		   exit 0
		                      ;;
		   *) echo -e "$COL_RED Erro: Digite um nÃºmero correcto...$COL_RESET" && sleep 2
	esac
}
 
trap '' SIGINT SIGQUIT SIGTSTP 
 

while true
do
 
	show_menus
	read_options
done