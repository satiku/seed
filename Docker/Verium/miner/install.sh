#apt-get update && apt-get upgrade -y 
#apt-get install git automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev -y
#mkdir ~/verium
#git clone https://github.com/effectsToCause/veriumMiner ~/verium/miner
#sed -i -e 's/#define SCRYPT_MAX_WAYS 3/#define SCRYPT_MAX_WAYS 1/g' ~/verium/miner/algo/scrypt.c
#sed -i -e 's/#define HAVE_SCRYPT_3WAY 1/\/\/#define HAVE_SCRYPT_3WAY 1/g' ~/verium/miner/algo/scrypt.c
#sed -i -e 's/#define scrypt_best_throughput() 3/#define scrypt_best_throughput() 1/g' ~/verium/miner/algo/scrypt.c
#sed -i -e 's/void scrypt_core_3way/void scrypt_core /g' ~/verium/miner/algo/scrypt.c
#sed -i -e 's/-DUSE_ASM -pg/-DUSE_ASM -mfpu=neon -pg/g' ~/verium/miner/build.sh
#

$echo -e "\e[92mVerium Guide 4/6: \e[93mCompile the miner using build\e[39m"
$cd ~/verium/miner
$./build.sh
echo -e "\e[92mVerium Guide 5/6: \e[93mMiner built.\e[39m"
echo -e "\e[92mVerium Guide 6/6: \e[93mTesting the miner with a little joke... ;) \e[39m"
echo -e "\e[91mALL YOUR HASHES ARE BELONG TO US!!11 ;)\e[39m"
echo -e "\e[92mNow Ctrl+C, get \e[91myour wallets address \e[93mand mine for yourself!\n\e[39m"
echo $MINER_ADDR_NAME


./cpuminer -o stratum+tcp://pool-eu.bloxstor.com:3003 -u VEXMki29ycW5vSt3MmdM5iwHqsHux91EMr.Guide -p GuidePwd
echo -e "\e[92mHappy Verium Mining! \e[35m :)"
echo -e "\e[34m      __"
echo "  _  /  \  _"
echo " /| (    ) |\ "
echo "( (  \  /  ) )"
echo " \ \  \/  / /"
echo "  \ \    / /"
echo "   \ \  / /"
echo "    \ -- /"
echo "     \  /"
echo "      --"
echo -e "  \e[37mV \e[94mE R \e[34mI U \e[90mM"
echo -e "\e[39m"
